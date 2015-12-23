package browser_tools.events;

#if macro
  import haxe.macro.Expr;
  using tink.MacroApi;

#end

enum SelectorType{
  id(id:String);
  tag(tag:String);
  query(path:String);
  cls(cls:String);
}


class Mapper {

  public static macro function is_query(path:ExprOf<String>,expr:Expr) {

    var expr_delegate = expr.substitute({
      "_":macro delegate
    });

    return macro {
      var delegate = target.querySelector($path);
      if (delegate != null) $expr_delegate;
    };
  }

  public static macro function is_class(cls:ExprOf<String>,expr:Expr) {

    var expr_delegate = expr.substitute({
      "_":macro delegate
    });

    return macro {
      var tags = target.getElementsByClassName($cls);
      var delegate:js.html.Element = if (tags[0] != null) tags[0]; else null;
      if (delegate != null) $expr_delegate;
    };
  }


  public static macro function is_tag(tag:ExprOf<String>,expr:Expr) {

    var expr_delegate = expr.substitute({
      "_":macro delegate
    });

    return macro {
      var tags = target.getElementsByTagName($tag);
      var delegate:js.html.Element = if (tags[0] != null) tags[0]; else null;
      if (delegate != null) $expr_delegate;
    };
  }


  public static macro function is_id(id:ExprOf<String>,expr:Expr) {

    var expr_delegate = expr.substitute({
      "_":macro delegate
    });

    return macro {
      var delegate = js.Browser.document.getElementById($id);
      if (delegate != null) $expr_delegate;
    };
  }

  public static macro function selector_is(sel:ExprOf<browser_tools.events.Mapper.SelectorType>,expr:Expr) {


    var expr_delegate = expr.substitute({
      "_":macro delegate
    });


    return macro {
      var delegate = null;
      switch($e{sel}) {
        case id(id):{
          delegate = js.Browser.document.getElementById(id);
        };
        case tag(tag):{
          var tags = target.getElementsByTagName(tag);
          if (tags[0] != null) delegate = tags[0];
        };
        case cls(cls):{
          var tags = target.getElementsByClassName(cls);
          if (tags[0] != null) delegate = tags[0];
        };
        case query(path):{
          var tag = target.querySelector(path);
          if (tag != null) delegate = tag;
        };
        case _:null;
      }

      if (delegate != null) $expr_delegate;

    }
  }

  public static macro function map_event_to_selectors(expr:Expr) {

    return macro function(e:Dynamic) {
      var target:js.html.Element = e.currentTarget;
      $expr;
    };
  }


  public static macro function map_event_to_expr(event_mapper:Expr,expr_mapper:Expr) {

    var expr_event = event_mapper.substitute({"_":macro event});
    expr_mapper = expr_mapper.substitute({"_":macro $expr_event});
    return macro function(event:Dynamic) {
      $expr_mapper;
    }
  }


  public static macro function map_event_to_property(event_mapper:Expr,property_mapper:Expr) {

    var expr_event = event_mapper.substitute({"_":macro event});

    return macro function(event:Dynamic) {
      $property_mapper = $expr_event;
    }
  }
}
