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
    static inline function filter_event(event:String) return event.trim() != '' && event.trim() != '|';

    static inline function process_events(events:Array<String>)
        return [ for(event in events) if (filter_event(event)) macro element.addEventListener($v{event},handler_event)  ];


  #end


  static macro function prepare_variables() {
    return macro {
      events = selector.split('|')[0].split(' ');
      selector = selector.split('|')[1].trim();
    };
  }

  static macro function check_container()
    return macro if (cb.toString() == 'null') {
      cb = container;
      container = macro js.Browser.document.body;
    }


  public static macro function to_delegate_query(selector:String,?container:ExprOf<js.html.Element>,?cb:ExprOf<js.html.Event->Void>) {
    var events;
    prepare_variables();
    check_container();

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
    var events;
    prepare_variables();


    check_container();

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
    var events;
    prepare_variables();


    check_container();

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
    var events;
    prepare_variables();


    check_container();

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
    var events;
    prepare_variables();


    var exprs_events = process_events(events);

    return macro {
      var handler_event = $cb;
      var element= browser_tools.HtmlTools.byId($v{selector});
      $b{exprs_events};
    }

  }



  public static macro function to_event_class(selector:String,?container:ExprOf<js.html.Element>,?cb:ExprOf<js.html.Event->Void>) {
    var events;
    prepare_variables();


    check_container();

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
    var events;
    prepare_variables();


    check_container();

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

    check_container();

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

    check_container();

    var exprs_events = process_events(events);

    return macro {
      var handler_event = $cb;
      var elements = $e{container}.querySelectorAll($v{query});
      for (element in elements) $b{exprs_events};
    }

  }



}
