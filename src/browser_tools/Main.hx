package browser_tools;
import browser_tools.AElement;
import browser_tools.assets.cdn.cdnjs.Library as Cdn;
import browser_tools.utils.compilers.sass.Compiler;

import browser_tools.AStorageText;
import browser_tools.AStorageJson;
using browser_tools.assets.CacheTools;
import browser_tools.HtmlTools;



//import browser_tools.HtmlTools;
import browser_tools.Assets;
//import browser_tools.Debug;
//import browser_tools.Console;
//import browser_tools.Http;
//import browser_tools.Loader;
//import browser_tools.angular.Config;


import js.html.*;
//import browser_tools.Viewport;
import browser_tools.events.Mapper.*;
import browser_tools.events.Mapper.SelectorType;
import browser_tools.BrowserDevice;

import browser_tools.utils.features.Storage;

//import browser_tools.animations.DisplayObject;

//import browser_tools.HelperAnimationTools.frame;
import async_tools.Cps.*;
import browser_tools.Main.Binder;
//using browser_tools.Assets.AssetsTools;
//using browser_tools.Debug;
//using browser_tools.AssetsToolsCompileTime;
//using browser_tools.HttpTools;
using browser_tools.events.StringTools;
using browser_tools.HtmlTools;
//using browser_tools.LayoutTools;
//using browser_tools.AnimationTools;
//

import browser_tools.api.google.maps.externs.Places;

/*
import browser_tools.storage.LocalStorage;
import browser_tools.storage.SessionStorage;
import browser_tools.storage.MemoryStorage;
import browser_tools.storage.Factory;
*/
@:base_class
class BinderBase
  implements browser_tools.angular.Binder.IAngularBinder
  implements browser_tools.angular.Routes.IRoutes {
  @:watch("a.b.c") function changed(n,o) trace(n);
  @:bind function pippa() {}

  var scope:Dynamic;


}


@:keep
@:route('/a/b/c/:param','templates/a.html')
@:route('/a/b/d/:param','templates/b.html')
@:route('/a/b/e/:param','templates/c.html')

class Binder extends browser_tools.Main.BinderBase {

  public function new() {
    bind_methods();
  }

  public static function factory() {
    trace(class_path);
  };

}



class Main implements async_tools.Async {



/*
  @:async static function animate() {
    var el = 'animation'.byId();
    el.set_transition('all 2s');
    frame(el.set_transform('translateX(-100px)'));
    @await el.wait_for_end_animation();
    frame(el.set_transform('translateX(0px)'));
    @await el.wait_for_end_animation();

    @await wait(3000);

    frame(el.set_transform('translateY(100px)'));
    @await el.wait_for_end_animation();
    var x = untyped '500px', y = untyped __js__("'500px'");
    frame(el.set_translate(x,y));
  }
*/
  public static var test_prop;


  @:async inline static function render() {
    @await 'animation'.byId().classes.animate_class('slideInLeft');
    @await wait(2000);
    @await 'animation'.byId().classes.animate_class('jello');
    @await 'animation'.byId().classes.animate_class('slideOutLeft');
    'animation'.byId().style.opacity = '0';
    //'animation'.byId().classes + 'end_animation';
  }





  @:async static inline function get_places() {


    var position = @await js.Browser.navigator.geolocation.getCurrentPosition();

    var location = new browser_tools.api.google.maps.externs.Places.Location(position.coords.latitude,position.coords.longitude);

    var map = new browser_tools.api.google.maps.externs.Places.Map('canvas'.byId(), {
        mapTypeId: 'roadmap',
        center: location,
        zoom: 15
    });


    var places = new Places(map);

    var request = {
      location: location,
      radius: 15000,
      types: ['university']
    };

    var results,status = @await places.nearbySearch(request);

    for (result in results) trace([result.name,result.vicinity]);

  }


  static function main() {

    var el:AElement = 'x'.byId();
    el.display.wait_for_animation_end(300,'top',function(x) {

    });
/*

    var storage = new LocalStorage<Int>();

    storage['x'] = 2;
    storage.exists("x");
    storage.remove("x");

    var storage2 = new SessionStorage<Int>();

    storage2['x'] = 2;
    storage2.exists("x");
    storage.remove("x");

    var storage2 = new MemoryStorage<Int>();

    storage2['x'] = 2;
    storage2.exists("x");
    storage.remove("x");


    js.Browser.alert(Storage.check_for_local_storage());
    return;
    HtmlTools.is_dom_node(untyped test);

    //render(function() {});

    get_places(thx.Functions.noop);

/*
    var app = angular.Angular.module("app",[]);
    browser_tools.angular.Routes.set_app_config(app);

    var storage:AStorageText = js.Browser.getLocalStorage();
    var storage_json:AStorageJson = js.Browser.getLocalStorage();

    storage['a'] = 2;
    storage_json['a'] = 2;
*/
    cont_exec({

      //var assets:AManifest = [];

      //assets++ << browser_tools.assets.cdn.cdnjs.Library.sass_js_sync;
      //@await browser_tools.Assets.process(assets);

      //var css = @await browser_tools.utils.compilers.sass.Compiler.compile("$someVar: 123px; .some-selector { width: $someVar; }");
      //trace(css);

      //var assets:AManifest = [];
      //assets++
      //  << 'test.png'
      //  << 'http://cdnjs.cloudflare.com/ajax/libs/d3/3.5.5/d3.min.js'
      //  << Cdn.angular;

      //@await assets.preload();

    });

/*
    'test.png'.preload();
    Cdn.angular.preload();

    [Cdn.angular,'test.png'].preload_list(thx.Functions.noop);

    'click doubleclick mouseover mouseout  | #foo.bar'.to_delegate_query(function(e) {
      untyped console.log(e);
    });

    'click doubleclick mouseover mouseout  | #foo.bar'.to_delegate_query('pippa'.byId(),function(e) {
      untyped console.log(e);
    });


    'click doubleclick mouseover mouseout | div'.to_delegate_tag(function(e) {
      untyped console.log(e);
    });

    'click doubleclick mouseover mouseout | div'.to_delegate_tag('pippa'.byId(),function(e) {
      untyped console.log(e);
    });


    'click doubleclick mouseover mouseout | pippa'.to_delegate_id(function(e) {
      untyped console.log(e);
    });


    'click doubleclick mouseover mouseout | animated'.to_delegate_class(function(e) {
      untyped console.log(e);
    });

    'click doubleclick mouseover mouseout | animated'.to_delegate_class('pippa'.byId(),function(e) {
      untyped console.log(e);
    });



    'click doubleclick mouseover mouseout | pippa'.to_event_id(function(e) {
      untyped console.log(e);
    });

    'click doubleclick mouseover mouseout | pippa'.to_event_id(function(e) {
      trace(e);
    });


    'click doubleclick mouseover mouseout | animated'.to_event_class(function(e) {
      trace(e);
    });


    'click doubleclick mouseover mouseout | animated'.to_event_class('pippa'.byId(),function(e) {
      trace(e);
    });


    'click doubleclick mouseover mouseout | div'.to_event_tag(function(e) {
      trace(e);
    });


    'click doubleclick mouseover mouseout | div'.to_event_tag('pippa'.byId(),function(e) {
      trace(e);
    });


    'click doubleclick mouseover mouseout | #foo.bar'.to_event_query(function(e) {
      trace(e);
    });


    'click doubleclick mouseover mouseout | #foo.bar'.to_event_query('pippa'.byId(),function(e) {
      trace(e);
    });

    'click doubleclick mouseover mouseout | #foo.bar'.to_event_query_all(function(e) {
      trace(e);
    });


    'click doubleclick mouseover mouseout | #foo.bar'.to_event_query_all('pippa'.byId(),function(e) {
      trace(e);
    });
*/

/*
    'player'.byId().on.click + map_event_to_selectors({

        //selector_is(SelectorType.tag('div'),trace(_));
        //selector_is(SelectorType.cls('player'),trace(_));
        //selector_is(SelectorType.query('.player'),trace(_.id));

        is_id('pippa',trace(_));
        is_tag('div',trace(_.nodeName));
        is_class('player',trace(_.className));
        is_query('#pippa',trace(_.id));

        selector_is(Id('pippa'),trace(_.id));
        selector_is(Query('#pippa'),trace(_.id));
        selector_is(Cls('animated'),trace(_.id));
        selector_is(Tag('div'),trace(_.id));
    });
*/


/*
    var values = [];

    'player'.byId().on.click + map_event_to_property(_.target.value,Main.test_prop);
    'player'.byId().on.click + map_event_to_expr(_.target.value,Main.test_prop = _);
    'player'.byId().on.click + map_event_to_expr(_.target.value,values.push(_));

    'player'.byId().on.click + map_event_to_expr(_.target.value,{
      values.push(_);
    });


    var fn = map_event_to_property(_.target.value,Main.test_prop);
    trace(fn);

    */

    //DisplayObject.check_for_animations(function(check) {
    //  js.Browser.alert(check);
    //});


    //js.Browser.alert(browser_tools.BrowserDevice.safariiOS);
    //js.Browser.alert(browser_tools.BrowserDevice.browser.version);


    //animate(function() {});

    //var b = browser_tools.AnimationTools.is_animations_supported;
    //trace(b);

    //var prefix = browser_tools.AnimationTools.prefix;
    //js.Browser.alert(prefix);
    //trace(prefix);

    /*
    var assets:AManifest = [];
    assets++
      << 'http://cdnjs.cloudflare.com/ajax/libs/vue/0.12.1/vue.min.js'
      << 'http://cdnjs.cloudflare.com/ajax/libs/d3/3.5.5/d3.min.js';

    ++assets << 'http://cdnjs.cloudflare.com/ajax/libs/crossfilter/1.3.11/crossfilter.min.js';
    ++assets << 'http://cdnjs.cloudflare.com/ajax/libs/dc/1.7.3/dc.min.js';

    'ss'.weblog_log('sss');
    'ss'.weblog_log();
    'ss'.weblog_debug();
    'ss'.weblog_debug_json('sss');

    browser_tools.Assets.load_json('sssss',function(json) {
      trace(json);
    });

    var lib = browser_tools.Assets.load_json_compile_time('haxelib.json');
    trace(lib);

    'http://test'.to_jsonp(function(data) {
      trace(data);
    });

    */


/*
    js.Browser.document.addEventListener('DOMContentLoaded',function() {
      'http://ip.jsontest.com'.to_jsonp({a:1,b:2},{callback:'pippa'},function(data) {
        trace(data);
      });

      'http://ip.jsontest.com'.to_jsonp({a:1,b:2},function(data) {
        trace(data);
      });



    });

    var x = 'txt'.byId();
    x.height = 3333;
    trace(x.height);

    x.width = 3333;
    trace(x.width);

    x.attr['p'] = "a";
    x.attr['d'];
    x.on['click'] = function(e:Event) { trace("hello"); };

    x.on.click + function(e:Event) {} - function(e:Event) { trace("hello2"); };

    x.on.mouseout + function(e:Event) {};
    x.on.mouseover + function(e:Event) {}
*/
/*  Loader.start();
  haxe.Timer.delay(Loader.end,2000);
*/


  }
}
