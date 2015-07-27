package browser_tools;

class Http {

  static var counter_jsonp = 0;

  public static inline function jsonp(url:String,cb:Dynamic->Void) {

      //porting of https://gist.github.com/gf3/132080/110d1b68d7328d7bfe7e36617f7df85679a08968


      var fn_name = "_jsonp_" + counter_jsonp++;
      if (~/\?/.match(url)) url += "&callback="+fn_name;
      else url += "?callback="+fn_name;

      var script =  js.Browser.document.createScriptElement();
      script.type = 'text/javascript';
      script.src = url;

      untyped window[fn_name] = function(data){
        cb(data);
        js.Browser.document.body.getElementsByTagName('head')[0].removeChild(script);
        script = null;
        untyped __js__("delete window[{0}]",fn_name);
      };

      // Load JSON
      js.Browser.document.getElementsByTagName('head')[0].appendChild(script);

  }

}
