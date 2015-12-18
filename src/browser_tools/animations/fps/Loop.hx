package browser_tools.animations.fps;


class Loop implements async_tools.Async {

  var last_frame_time:Float = null;

  public var stop(get,set):Bool;

  public inline function get_stop() return _stop;
  public inline function set_stop(v) return _stop = v;

  var _stop = false;
  var cb:Float->Void;

  public inline function new(cb:Float->Void) {
    last_frame_time = Date.now().getTime();
    this.cb = cb;
    event_loop(0);
  }



  public function event_loop(i) {
    if (stop == true) return;
    var now = Date.now().getTime();
    var fps = Math.floor(1000/(now-last_frame_time));
    last_frame_time = now;
    cb(fps);
    js.Browser.window.requestAnimationFrame(event_loop);
  }





}
