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

	public static var routes = new Map<String,Dynamic>();

	static inline function get_routes(cls) return cls.get().meta.extract(':route');

	static public macro function print_routes() {
		trace(routes);
		return macro null;
	}

	macro static public function build():Array<Field> {
			var cls = Context.getLocalClass();

			var routes_class = get_routes(cls);
			var fields = Context.getBuildFields();
			routes[cls.toString()] = routes_class;

      return fields;
  }
}


@:autoBuild(browser_tools.angular.Routes.build())
interface IRoutes {}
