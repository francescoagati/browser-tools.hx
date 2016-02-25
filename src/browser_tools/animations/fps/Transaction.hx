package browser_tools.animations.fps;
import browser_tools.animations.DisplayObject;
import async_tools.Cps.*;

@:enum
abstract RectProperty(String) from String to String {
  var left = 'left';
  var right = 'right';
  var top = 'top';
  var bottom = 'bottom';
}



class Transaction implements async_tools.Async {

  @:async static inline public function check_for_property_change(element:DisplayObject,prop:RectProperty,?tm:Int = 300):Bool {

    inline function get_property(element:browser_tools.AElement,prop:RectProperty,cb) {

      js.Browser.window.requestAnimationFrame(function(i) {

        var rect= element.getBoundingClientRect();

        var prop = switch(prop) {
          case left:rect.left;
          case right:rect.right;
          case top:rect.top;
          case bottom:rect.bottom;
          case _:null;
        };
        cb(prop);
      });

    }

    var last = @await get_property(element,prop);
    @await wait(tm);
    var now = @await get_property(element,prop);
    @await wait(20);
    return  last-now != 0;
  }





}
