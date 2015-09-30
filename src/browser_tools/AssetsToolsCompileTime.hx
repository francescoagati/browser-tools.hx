package browser_tools;
import haxe.macro.Expr;


class AssetsToolsCompileTime {

  public static macro function load_json_compile_time(cls:ExprOf<Class<browser_tools.Assets>>,path:ExprOf<String>) {
    return  macro CompileTime.parseJsonFile($path);
  }
}
