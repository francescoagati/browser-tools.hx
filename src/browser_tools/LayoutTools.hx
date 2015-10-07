package browser_tools;
import browser_tools.AElement;
using browser_tools.HtmlTools;

class LayoutTools {

  public static inline function center_horizzontal(element:AElement) {
    element.style.left = '-50%';
    element.style.transform = 'translateX(50%)';
  }

}
