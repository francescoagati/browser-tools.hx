package browser_tools;

class Debug {
  public inline static function console_log(obj:Dynamic,?msg:String = '') {
    js.Browser.console.log(msg,obj);
  }

  public inline static function alert_log(obj:Dynamic) {
    js.Browser.alert(haxe.Json.stringify(obj));
  }


}
