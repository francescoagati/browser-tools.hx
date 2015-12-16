package browser_tools;

import haxe.macro.Expr;
using haxe.macro.ExprTools;
using haxe.macro.MacroStringTools;

class HelperAnimationTools {

  public static macro function set_vendor_property(element:ExprOf<AElement>,key:ExprOf<String>,value:Expr) {

    var prop = '${key.getValue()}';
    return macro  {
      var extension = browser_tools.AnimationTools.prefix;

      if (extension != not_supported) {
        var prop = if (extension == not_prefixed) $v{prop}; else "-" + $v{prop} + "-";
        $element.style.setProperty('$prop',$e{value});
      }

    }
  }

  public static macro function frame(expr:Expr) {
    return macro js.Browser.window.requestAnimationFrame(function(i) {
      $expr;
    });
  }



}
