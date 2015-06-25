package browser_tools;
#if (macro || neko )
  import haxe.macro.Context;
  import haxe.macro.Expr;
#end


class Dynamics {
  public static macro function isTrue(expr:Expr) {
    return macro expr == true;
  }
}
