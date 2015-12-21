class MacroHelper {

  public static macro function try_err(expr:haxe.macro.Expr) {
    return macro try {
      $expr;
    } catch(e:Dynamic) {
      js.Browser.alert(e);
    }


  }

}
