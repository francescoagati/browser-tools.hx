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

  public static macro function check_query(element:ExprOf<browser_tools.AElement>,query:ExprOf<String>):ExprOf<Bool> {
    return macro {
      var matchesSelector =  untyped __js__(
        '{0}.webkitMatchesSelector || {0}.mozMatchesSelector || {0}.oMatchesSelector || {0}.matchesSelector',$element);
       matchesSelector.call($element, $query);

    };
  }

  public static macro function is_query(query:ExprOf<String>,expr:Expr) {

    var expr_delegate = expr.substitute({
      "_":macro target
    });

    return macro {
      var check = check_query(target,$query);
      if (check) $expr_delegate;
    };

  }


  public static macro function check_class(element:ExprOf<browser_tools.AElement>,cls:ExprOf<String>)
    return macro $element.classes == $cls;

  public static macro function is_class(cls:ExprOf<String>,expr:Expr) {

    var expr_delegate = expr.substitute({
      "_":macro target
    });

    return macro if (check_class(target,$cls)) $expr_delegate;

  }


  public static macro function check_tag(element:ExprOf<js.html.Element>,tag:ExprOf<String>)
    return macro $element.nodeName == $tag;

  public static macro function is_tag(tag:ExprOf<String>,expr:Expr) {

    var expr_delegate = expr.substitute({
      "_":macro target
    });

    return macro if (check_tag(target,$tag)) $expr_delegate;

  }


  public static macro function check_id(element:ExprOf<js.html.Element>,id:ExprOf<String>)
    return macro $element.id == $id;


  public static macro function is_id(id:ExprOf<String>,expr:Expr) {

    var expr_delegate = expr.substitute({
      "_":macro target
    });

    return macro if (check_id(target,$id)) $expr_delegate;

  }

  public static macro function selector_is(sel:ExprOf<browser_tools.events.Mapper.SelectorType>,expr:Expr) {


    var expr_delegate = expr.substitute({
      "_":macro delegate
    });


    return macro {
      var delegate:browser_tools.AElement = null;
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
      var target:browser_tools.AElement = e.currentTarget;
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
