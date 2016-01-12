package browser_tools.assets;

import async_tools.Cps.*;

class CacheTools implements async_tools.Async {

  @:async public static inline function preload_list(paths:Array<String>) {
    var assets = [
      @fork(path in paths) {
        @await wait(Std.random(30));
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
