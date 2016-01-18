package browser_tools.utils.mobile;

class ElementTools {
  
  public static inline function stop_scroll(node:browser_tools.AElement) {
    node.on.touchmove + function(e) e.preventDefault();
  }

}
