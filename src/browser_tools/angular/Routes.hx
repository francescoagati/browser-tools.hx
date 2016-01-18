package browser_tools.angular;

#if (macro || neko)
	import haxe.macro.Context;
	import haxe.macro.Expr;
	using tink.MacroApi;
	using thx.macro.MacroClassTypes;
	using thx.macro.MacroExprs;
	using thx.macro.MacroFields;
	using thx.macro.MacroTypes;
	using Lambda;
	using haxe.macro.MacroStringTools;
	using haxe.macro.ExprTools;
	using haxe.macro.TypeTools;
	using haxe.macro.TypedExprTools;
#end

class Routes {

	public static var routes = new Map<String,{cls:Dynamic,meta:Dynamic}>();

	static inline function get_routes(cls)
		return cls.get().meta.extract(':route');

	static public macro function print_routes() {
		trace(routes);
		return macro null;
	}

	public static macro function set_app_config(app:ExprOf<angular.Module>) {

		var exprs:Array<Expr> = [];
		var controllers:Array<Expr> = [];

		for (key in routes.keys()) {
			var ref = routes.get(key);
			var metadata:Array<haxe.macro.Expr.MetadataEntry> = ref.meta;
			var cls = ref.cls.toString().split(".");



			controllers.push(macro {
				var controller = $p{cls};
				context.controller($v{key},controller.factory);
			});

			for (meta in metadata) {
				var path = meta.params[0].getValue();
				var template = meta.params[1].getValue();
				var expr = macro {
					route.when($v{path},{
						controller:$v{key},
						templateUrl:$v{template}
					});
				};
				exprs.push(expr);
			}
		};
		return macro {
				var context  = $app;
				$b{controllers};
				context.config(function(route:angular.route.RouteProvider) {
					$b{exprs};
				});
		};
	}

	macro static public function build():Array<Field> {
			var cls = Context.getLocalClass();
			var cls_name = cls.toString();
			if (cls.get().meta.has(':base_class')) return null;



			var property_class_path = (macro class {
				static var class_path:String = $v{cls_name};
			}).fields[0];


			var routes_class = get_routes(cls);
			var fields = Context.getBuildFields();


			routes[cls.toString()] ={
				cls:cls,
				meta:routes_class
			};


			fields.push(property_class_path);
      return fields;
  }
}


@:autoBuild(browser_tools.angular.Routes.build())
interface IRoutes {}
