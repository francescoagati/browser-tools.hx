package browser_tools.signals.scrolls;

@:forward
abstract WindowScroll(Signal<Int>) {
  public inline function new(?time:Int = 1000) {
    var trigger = new SignalTrigger();
    this = trigger;
    var timer = new haxe.Timer(time);
    timer.run = function() {
      trigger.trigger(js.Browser.document.body.scrollTop);
    };
  }

  @:from public inline static function fromInt(n:Int) return new WindowScroll(n);

}
