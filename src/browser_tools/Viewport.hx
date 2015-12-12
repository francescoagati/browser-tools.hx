package browser_tools;
import js.Browser.document;
import js.Browser.window;

class ViewPort {

  public static inline function scrollbarW() {
    document.body.style.overflow = 'hidden';
    var w = document.body.clientWidth;
    document.body.style.overflow = 'scroll';
    w -= document.body.clientWidth;
    if (w == null) {
      w = document.body.offsetWidth - document.body.clientWidth;
    }
    document.body.style.overflow = '';
    return w;
  }


  public static inline function viewportW() {
    var a = document.body.clientWidth,
        b = window.innerWidth + scrollbarW();
    return a < b ? b : a;
  };


  public static inline function viewportH() {
    var a = document.body.clientHeight,
        b = window.innerHeight;
    return a < b ? b : a;
  };

  public static inline function scrollX() {
    return window.pageXOffset != null ? window.pageXOffset : document.body.scrollLeft;
  };

  public static inline function scrollY() {
    return window.pageYOffset != null ? window.pageYOffset : document.body.scrollTop;
  };

}
