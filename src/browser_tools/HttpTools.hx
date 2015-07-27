package browser_tools;

class HttpTools {


  public static inline function to_jsonp(url:String,cb:Dynamic->Void) 
    browser_tools.Http.jsonp(url,cb);


}
