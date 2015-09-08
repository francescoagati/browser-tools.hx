package browser_tools.angular;

import haxe.macro.Context;
import haxe.macro.Expr;
using tink.macro.Metadatas;
using Lambda;
using haxe.macro.MacroStringTools;
using haxe.macro.ExprTools;
using haxe.macro.TypeTools;
using haxe.macro.TypedExprTools;

@:autoBuild(browser_tools.angular.Binder.build())
interface IAngularBinder {}


class Binder {

	macro static public function build():Array<Field> {

		inline function watch_stream_bind(fields:Array<haxe.macro.Field>) {
      return fields
  		.filter(function(field) {
  			return field.meta.toMap().exists(':watch_stream');
  		})
  		.map(function (field:tink.macro.Member) {
				var meta = field.asField().meta.toMap().get(':watch_stream')[0][0].getValue();
				var name:String = field.name;
				var bound_stream:String = '${name}_stream';
				var rt:ComplexType;
				var tpath;
				var v = field.asField().kind.getParameters()[0];


				switch v {
					case TPath(name): {
						tpath = name;
						rt = TPath(name);
					}
					case _:null;
				}

				var bound_stream_macro = macro {
					var $bound_stream = $i{name}.boundStream;
				}


  			return macro {
					$i{name} = new $tpath();
					$bound_stream_macro;
					scope.watch($v{meta},function(v1:Dynamic,v2) {
						$i{name}.resolve(v1);
					});

				};

  		});
    }



    inline function methods_bind(fields:Array<haxe.macro.Field>) {
      return fields
  		.filter(function(field) {
  			return field.meta.toMap().exists(':bind');
  		})
  		.map(function (field) {
  			var name:String = field.name;


				var meta = try {
				  field.meta.toMap().get(':bind')[0][0].getValue();
				} catch(e:Dynamic) {null;}



				var memoize = switch(meta) {
				  case 'memoize0': {
				    var fn_memoize = '${name}_memoized';
				    macro untyped scope.$fn_memoize = thx.Functions0.memoize($i{name});
				  }
				  case  'memoize1': {
				    var fn_memoize = '${name}_memoized';
				    macro untyped scope.$fn_memoize = thx.Functions1.memoize($i{name});
				  }
				  case _ : macro null;
				};


  			return macro {
  				untyped scope.$name = $i{name};
					${memoize}
  			};
  		});
    }

		inline function methods_event(fields:Array<haxe.macro.Field>) {
      return fields
  		.filter(function(field) {
  			return field.meta.toMap().exists(':event');
  		})
  		.map(function (field) {
        var meta = field.meta.toMap().get(':event')[0][0].getValue();
  			var name:String = field.name;
  			return macro {
          scope.on($v{meta},$i{name});
  			};
  		});
    }


    inline function methods_watch(fields:Array<haxe.macro.Field>) {
      return fields
  		.filter(function(field) {
  			return field.meta.toMap().exists(':watch');
  		})
  		.map(function (field) {
        var meta = field.meta.toMap().get(':watch')[0][0].getValue();
  			var name:String = field.name;
  			return macro {
          scope.watch($v{meta},$i{name},true);
  			};
  		});
    }



		var fields = Context.getBuildFields();

		var expres_watch_streams = watch_stream_bind(fields);
		var exprs_bind = methods_bind(fields);
    var exprs_watch = methods_watch(fields);
		var exprs_events = methods_event(fields);
		var method = (macro class Temp {
		   inline function bind_methods() {
			 		 if (scope != null) {
			 		   untyped this['scope'] = scope;
					 }
					 $b{exprs_bind};
           $b{exprs_watch};
					 $b{expres_watch_streams};
					 $b{exprs_events};
			 }
		}).fields[0];

		fields.push(method);

		return fields;

	}

}
