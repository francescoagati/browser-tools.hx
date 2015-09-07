package browser_tools.angular;

import angular.Angular;
import angular.service.*;
import angular.route.*;
using Config.RouteTools;
using browser_tools.Debug;


@:forward
abstract ARouteProvider(RouteProvider) from RouteProvider to RouteProvider {
  public inline function new(route:RouteProvider) this = route;
  @:op(A << B) public inline function op_when(route:{path:String,controller:String,template:String}) {
    this.when(route.path,{controller:route.controller,template:route.template});
    return new ARouteProvider(this);
  }

  @:op(A << B) public inline function op_when_2(route:{path:String,controller:String,templateUrl:String}) {
    this.when(route.path,{controller:route.controller,templateUrl:route.templateUrl});
    return new ARouteProvider(this);
  }



  @:op(A >> B) public inline function op_otherwise(route:String) {
    this.otherwise(route);
    return new ARouteProvider(this);
  }

}


class RouteTools {
  public inline static function to_route(path:String,controller:String,template:String) {
    return {
      path:path,
      controller:controller,
      template:template
    }
  }

  public inline static function to_routeUrl(path:String,controller:String,template_path:String) {
    return {
      path:path,
      controller:controller,
      templateUrl:template_path
    }
  }



}



typedef AppConfig = {
  assets:Array<Array<String>>,
  modules:Array<String>,
  routes:{
    paths:Array<{
      route:String,
      controller:String,
      template_url:String
    }>,
    default_path:String
  }
}


class Config implements async_tools.Async {


  static inline function process_route(config:AppConfig,module:angular.Module) {

    module.config(function(route:RouteProvider) {
      var route2:ARouteProvider = route;
      for (route in config.routes.paths) {
        route2 << route.route.to_routeUrl(route.controller,route.template_url);
      }
      route2 >> config.routes.default_path;
    });

    return module;

  }

  @:async public static inline function init(name:String,config:AppConfig) {
    @await browser_tools.Assets.process(config.assets);
    var module = Angular.module(name, config.modules);
    name.console_log('create angular module');
    process_route(config,module);
    'route processed'.console_log();
    return module;
  }


}
