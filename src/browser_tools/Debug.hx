package browser_tools;

class Debug {
  public inline static function console_log(obj:Dynamic,?msg:String = '') {
    js.Browser.console.log(msg,obj);
  }


  public inline static function weblog_tic(obj:Dynamic,?msg:String = '') {
    Weblog.tic(obj);
  }

  public inline static function weblog_toc(obj:Dynamic,?msg:String = '') {
    Weblog.toc(obj);
  }

  public inline static function weblog_log(obj:Dynamic,?msg:String = '') {
    Weblog.log(obj);
  }


  public inline static function weblog_debug(obj:Dynamic,?msg:String = '') {
    Weblog.debug(obj);
  }

  public inline static function weblog_inspect(obj:Dynamic,?msg:String = '') {
    Weblog.inspect(obj);
  }


  public inline static function alert_log(obj:Dynamic) {
    js.Browser.alert(haxe.Json.stringify(obj));
  }





}
