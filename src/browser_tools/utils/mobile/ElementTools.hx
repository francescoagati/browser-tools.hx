package browser_tools.utils.mobile;

class ElementTools {
  public static inline function stop_scroll(node:js.html.Element) {
    (node:browser_tools.AElement).on.touchmove + function(e) e.preventDefault();
  }

}
