package browser_tools;

class Debug {
  public inline static function console_log(obj:Dynamic,?msg:String = '') {
    #if browser_tools_log
    js.Browser.console.log(msg,obj);
    #end
  }


  public inline static function weblog_tic(obj:Dynamic,?msg:String = '') {
    #if browser_tools_log
    Weblog.tic(untyped obj);
    #end
  }

  public inline static function weblog_toc(obj:Dynamic,?msg:String = '') {
    #if browser_tools_log
    Weblog.toc(untyped obj);
    #end
  }

  public inline static function weblog_log(obj:Dynamic,?msg:String = '') {
    #if browser_tools_log
    Weblog.log(untyped obj);
    #end
  }


  public inline static function weblog_debug(obj:Dynamic,?msg:String = '') {
    #if browser_tools_log
    Weblog.debug(obj);
    #end
  }

  public inline static function weblog_debug_json(obj:Dynamic,?msg:String = '') {
    #if browser_tools_log
    Weblog.debug(untyped haxe.Json.stringify(obj));
    #end
  }

  public inline static function weblog_inspect(obj:Dynamic,?msg:String = '') {
    #if browser_tools_log
    Weblog.inspect(untyped obj);
    #end
  }


  public inline static function alert_log(obj:Dynamic) {
    #if browser_tools_log
    js.Browser.alert(haxe.Json.stringify(obj));
    #end
  }





}
