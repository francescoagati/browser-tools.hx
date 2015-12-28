package browser_tools.events;
using thx.Arrays;

#if macro
  import haxe.macro.Expr;
  using haxe.macro.ExprTools;
  using haxe.macro.MacroStringTools;
  using StringTools;
#end


class StringTools {


  public static macro function to_event_id(selector:String,cb:ExprOf<js.html.Event->Void>) {
    var events = selector.split(' ');
    var selector = events.pop();

    var exprs_events = [ for(event in events)  macro element.addEventListener($v{event},handler_event)  ];

    return macro {
      var handler_event = $cb;
      var element= browser_tools.HtmlTools.byId($v{selector});
      $b{exprs_events};
    }

  }



  public static macro function to_event_class(selector:String,?container:ExprOf<js.html.Element>,?cb:ExprOf<js.html.Event->Void>) {
    var events = selector.split(' ');
    var selector = events.pop();

    if (cb.toString() == 'null') {
      cb = container;
      container = macro js.Browser.document.body;

    }

    var exprs_events = [ for(event in events)  macro element.addEventListener($v{event},handler_event)  ];

    return macro {
      var handler_event = $cb;
      var elements = $e{container}.getElementsByClassName($v{selector});
      for (element in elements) {
        $b{exprs_events};
      }

    }

  }


  public static macro function to_event_tag(selector:String,?container:ExprOf<js.html.Element>,?cb:ExprOf<js.html.Event->Void>) {
    var events = selector.split(' ');
    var selector = events.pop();

    if (cb.toString() == 'null') {
      cb = container;
      container = macro js.Browser.document.body;

    }

    var exprs_events = [ for(event in events)  macro element.addEventListener($v{event},handler_event)  ];

    return macro {
      var handler_event = $cb;
      var elements = $e{container}.getElementsByTagName($v{selector});
      for (element in elements) {
        $b{exprs_events};
      }

    }

  }


  public static macro function to_event_query(selector:String,?container:ExprOf<js.html.Element>,?cb:ExprOf<js.html.Event->Void>) {


    var query = selector.split("|").last().trim();
    var events = selector.split("|").first().split(' ');

    if (cb.toString() == 'null') {
      cb = container;
      container = macro js.Browser.document.body;

    }

    var exprs_events = [ for(event in events) macro element.addEventListener($v{event},handler_event)  ];

    return macro {
      var handler_event = $cb;
      var element = $e{container}.querySelector($v{query});
      $b{exprs_events};
    }

  }


  public static macro function to_event_query_all(selector:String,?container:ExprOf<js.html.Element>,?cb:ExprOf<js.html.Event->Void>) {


    var query = selector.split("|").last().trim();
    var events = selector.split("|").first().split(' ');

    if (cb.toString() == 'null') {
      cb = container;
      container = macro js.Browser.document.body;

    }

    var exprs_events = [ for(event in events) macro element.addEventListener($v{event},handler_event)  ];

    return macro {
      var handler_event = $cb;
      var elements = $e{container}.querySelectorAll($v{query});
      for (element in elements) $b{exprs_events};
    }

  }



}
