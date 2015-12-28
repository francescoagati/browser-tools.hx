package browser_tools.events;
using thx.Arrays;

#if macro
  import haxe.macro.Expr;
  using haxe.macro.ExprTools;
  using haxe.macro.MacroStringTools;
  using StringTools;
#end


class StringTools {

  #if macro
    static inline function filter_event(event:String) return event != ' ' && event != '' && event != '|';

    static inline function process_events(events:Array<String>)
        return [ for(event in events) if (filter_event(event)) macro element.addEventListener($v{event},handler_event)  ];


  #end



  public static macro function to_delegate_query(selector:String,?container:ExprOf<js.html.Element>,?cb:ExprOf<js.html.Event->Void>) {
    var events = selector.split(' ');
    var selector = events.pop();

    if (cb.toString() == 'null') {
      cb = container;
      container = macro js.Browser.document.body;

    }

    var exprs_events = process_events(events);

    return macro {
      var handler_event = browser_tools.events.Mapper.map_event_to_selectors({
        browser_tools.events.Mapper.is_query($v{selector},$cb(event));
      });

      var element = $e{container};
      $b{exprs_events};
    }
  }


  public static macro function to_delegate_tag(selector:String,?container:ExprOf<js.html.Element>,?cb:ExprOf<js.html.Event->Void>) {
    var events = selector.split(' ');
    var selector = events.pop();

    if (cb.toString() == 'null') {
      cb = container;
      container = macro js.Browser.document.body;

    }

    var exprs_events = process_events(events);

    return macro {
      var handler_event = browser_tools.events.Mapper.map_event_to_selectors({
        browser_tools.events.Mapper.is_tag($v{selector},$cb(event));
      });

      var element = $e{container};
      $b{exprs_events};
    }
  }


  public static macro function to_delegate_id(selector:String,?container:ExprOf<js.html.Element>,?cb:ExprOf<js.html.Event->Void>) {
    var events = selector.split(' ');
    var selector = events.pop();

    if (cb.toString() == 'null') {
      cb = container;
      container = macro js.Browser.document.body;

    }

    var exprs_events = process_events(events);

    return macro {
      var handler_event = browser_tools.events.Mapper.map_event_to_selectors({
        browser_tools.events.Mapper.is_id($v{selector},$cb(event));
      });

      var element = $e{container};
      $b{exprs_events};
    }
  }



  public static macro function to_delegate_class(selector:String,?container:ExprOf<js.html.Element>,?cb:ExprOf<js.html.Event->Void>) {
    var events = selector.split(' ');
    var selector = events.pop();

    if (cb.toString() == 'null') {
      cb = container;
      container = macro js.Browser.document.body;

    }

    var exprs_events = process_events(events);

    return macro {
      var handler_event = browser_tools.events.Mapper.map_event_to_selectors({
        browser_tools.events.Mapper.is_class($v{selector},$cb(event));
      });

      var element = $e{container};
      $b{exprs_events};
    }
  }



  public static macro function to_event_id(selector:String,cb:ExprOf<js.html.Event->Void>) {
    var events = selector.split(' ');
    var selector = events.pop();

    var exprs_events = process_events(events);

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

    var exprs_events = process_events(events);

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

    var exprs_events = process_events(events);

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

    var exprs_events = process_events(events);

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

    var exprs_events = process_events(events);

    return macro {
      var handler_event = $cb;
      var elements = $e{container}.querySelectorAll($v{query});
      for (element in elements) $b{exprs_events};
    }

  }



}
