package browser_tools.utils.compilers.sass;


class Compiler {

  public static inline function compile(scss:String,cb:String->Void) {

    untyped sass.compile(scss,function(result) {
      cb(result);
    });


  }

}
