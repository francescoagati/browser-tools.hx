package browser_tools.assets;

class CacheTools implements async_tools.Async {


  @:async public static inline function preload_list(paths:Array<String>) {

    var assets = [
      @fork(path in paths) {
        @await preload(path);
        true;
      }
    ];


  }

  public static inline function preload(path:String,?cb:Void->Void) {
    var image = new js.html.Image();
    if (cb != null) image.onload = cb;
    image.src = path;
  }

}
