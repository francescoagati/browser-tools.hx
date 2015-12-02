package browser_tools;

import haxe.macro.Expr;
using haxe.macro.ExprTools;
using haxe.macro.MacroStringTools;

class HelperAnimationTools {

  public static macro function set_vendor_property(element:ExprOf<AElement>,key:ExprOf<String>,value:Expr) {

    var extensions = ['-ms-','-webkit-','-moz-',''];

    var exprs = [ for (extension in extensions) {
      var prop = '${extension}${key.getValue()}';
      macro $element.style.setProperty($v{prop},$e{value});
    }];


    return macro $b{exprs};
  }

  public static macro function frame(expr:Expr) {
    return macro js.Browser.window.requestAnimationFrame(function(i) {
      $expr;
    });
  }



}
