package browser_tools.utils.compilers.sass;


/*
@:native('Sass')
private extern class Sass {
  public function new(path_worker:String) {}

  public static function compile(scss:String,cb:String->Void):Void {}

  public static function compile(scss:String,cb:String->Void):Void {}
}
*/


class Compiler {

  public static inline function compile(scss:String,cb:String->Void) {

    //var sass = new Sass(browser_tools.assets.cdn.cdnjs.Library.sass_js_worker);

    untyped Sass.compile(scss,function(result) {
      cb(result);
    });

  }

}
