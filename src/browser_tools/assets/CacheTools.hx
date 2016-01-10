package browser_tools.assets;

class CacheTools {

    public static inline function preload(path:String,?cb:Void->Void) {
      var image = new js.html.Image();
      if (cb != null) image.onload = cb;
      image.src = path;
    }

}
