package browser_tools.abstracts;


import js.html.Element;
import browser_tools.AElement;
import browser_tools.events.Helper;
import browser_tools.animations.fps.Transaction;

abstract DisplayAccessor(Element) {
    public inline function new(el:Element) this = el;

    public inline function wait_for_animation_end(?timeout:Int = 300,?property_detect:String = null,cb:Bool->Void) {

      if (browser_tools.BrowserDevice.IE9) {
        cb(true);
      }

      var el = new AElement(this);

      var animation_ended = null;

      var event_animation = browser_tools.events.Helper.get_event('AnimationEnd');
      var event_transition = browser_tools.events.Helper.get_event('TransitionEnd');
      var check = false;

      function fn(e) {
        if (check == false) cb(animation_ended);
        check = true;
      };

      if (property_detect != null) {
        browser_tools.animations.fps.Transaction.check_for_property_change(el,property_detect,function(response) {
          if (response == false) {
            animation_ended = false;
            fn(null);
          }
        });
      }

      function fn_animation_ended(e) {
        animation_ended = true;

        el.removeEventListener(event_animation,fn_animation_ended);
        el.removeEventListener(event_transition,fn_animation_ended);
        fn(e);

      }

      el.addEventListener(event_animation,fn_animation_ended);
      el.addEventListener(event_transition,fn_animation_ended);

    }

}
