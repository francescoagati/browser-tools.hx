package browser_tools.angular;

#if (macro)
	import haxe.macro.Context;
	import haxe.macro.Expr;

	using tink.MacroApi;
	using thx.macro.MacroClassTypes;
	using thx.macro.MacroExprs;
	using thx.macro.MacroFields;
	using thx.macro.MacroTypes;
	using Lambda;
	using thx.Arrays;
	using thx.Functions;
	using haxe.macro.MacroStringTools;
	using haxe.macro.ExprTools;
	using haxe.macro.TypeTools;
	using haxe.macro.TypedExprTools;
#end

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



    inline function methods_bind(fields:Array<haxe.macro.Field>,inherited_fields:Array<String>) {

      var bind_fields = fields
  		.filter(function(field) {
  			return field.meta.toMap().exists(':bind');
  		})
  		.map(function (field) {
  			var name:String = field.name;
				var meta = try {
				  field.meta.toMap().get(':bind')[0][0].getValue();
				} catch(e:Dynamic) {null;}

  			return macro {
  				untyped scope.$name = $i{name};
  			};
  		});

			for (field in inherited_fields) {
				bind_fields.push(macro untyped scope.$field = $i{field});
			}

			return bind_fields;
    }

		inline function methods_event(fields:Array<haxe.macro.Field>,fields_inherited) {
      return fields
  		.filter(function(field) {
  			return field.meta.toMap().exists(':event');
  		})
  		.map(function (field) {
        var meta = field.meta.toMap().get(':event')[0][0].getValue();
  			var name:String = field.name;
  			return macro {
          scope.on($i{meta},$i{name});
  			};
  		});
    }


    inline function methods_watch(fields:Array<haxe.macro.Field>,fields_inherited) {

      var return_fields = fields
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

			for (field in (fields_inherited:Array<Dynamic>)) {
				var meta = field.meta.toExpr().getValue();
				return_fields.push(macro {
					scope.watch($v{meta},$i{field.name},true);
				});
			}

			return return_fields;
    }



		var cls = Context.getLocalClass();
		if (cls.get().meta.has(':base_class') == true) return null;


		var fields = Context.getBuildFields();



		var fields_names = [for (field in fields) field.name];
		var parent_fields = cls.get().fieldsInHierarchy();
		var fields_inherited_bind = [];
		var fields_inherited_watch = [];
	  var fields_inherited_event = [];
		for (parent_field in parent_fields) {
			if (parent_field.meta.has(':bind') && fields_names.indexOf(parent_field.name) < 0)
				fields_inherited_bind.push(parent_field.name);

			if (parent_field.meta.has(':watch') && fields_names.indexOf(parent_field.name) < 0)
				fields_inherited_watch.push({
					name:parent_field.name,
					meta:parent_field.meta.extract(':watch')[0].params[0].toString()
				});

				if (parent_field.meta.has(':event') && fields_names.indexOf(parent_field.name) < 0)
					fields_inherited_event.push({
						name:parent_field.name,
						meta:parent_field.meta.extract(':event')
					});
		}

		var expres_watch_streams = watch_stream_bind(fields);
		var exprs_bind = methods_bind(fields,fields_inherited_bind);
    var exprs_watch = methods_watch(fields,fields_inherited_watch);
		var exprs_events = methods_event(fields,fields_inherited_event);


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
