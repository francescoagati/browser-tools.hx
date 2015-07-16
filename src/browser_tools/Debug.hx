package browser_tools;

class Debug {
  public inline static function console_log(obj:Dynamic,?msg:String = '') {
    #if browser_tools_log
    js.Browser.console.log(msg,obj);
    #end
  }


  inline function wrap_msg(obj:Dynamic,?msg:String) {
    return if (msg != '') {
      [msg,obj];
    } else {
      obj;
    }
  }

  public inline static function weblog_tic(obj:Dynamic,?msg:String = '') {
    #if browser_tools_log
    Weblog.tic(wrap_msg(obj,msg));
    #end
  }

  public inline static function weblog_toc(obj:Dynamic,?msg:String = '') {
    #if browser_tools_log
    Weblog.toc(wrap_msg(obj,msg));
    #end
  }

  public inline static function weblog_log(obj:Dynamic,?msg:String = '') {
    #if browser_tools_log
    Weblog.log(wrap_msg(obj,msg));
    #end
  }


  public inline static function weblog_debug(obj:Dynamic,?msg:String = '') {
    #if browser_tools_log
    Weblog.debug(wrap_msg(obj,msg));
    #end
  }

  public inline static function weblog_debug_json(obj:Dynamic,?msg:String = '') {
    #if browser_tools_log
    Weblog.debug(untyped haxe.Json.stringify(wrap_msg(obj,msg)));
    #end
  }

  public inline static function weblog_inspect(obj:Dynamic) {
    #if browser_tools_log
    Weblog.inspect(obj);
    #end
  }


  public inline static function alert_log(obj:Dynamic) {
    #if browser_tools_log
    js.Browser.alert(haxe.Json.stringify(obj,null," "));
    #end
  }





}
