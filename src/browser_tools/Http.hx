package browser_tools;
using StringTools;


@:forward abstract QueryParams(Dynamic) from Dynamic to Dynamic {
  public inline function new(obj:Dynamic) this = obj;


  @:to public inline function to_string():String {
    var obj:haxe.DynamicAccess<String> = this;
    return [ for (key in obj.keys()) '${key.urlEncode()}=${obj.get(key).urlEncode()}' ].join("&");

  }

}


class Http {

  static var counter_jsonp = 0;

  public static inline function jsonp(url:String,?params:QueryParams,cb:Dynamic->Void) {

      //porting of https://gist.github.com/gf3/132080/110d1b68d7328d7bfe7e36617f7df85679a08968

      var search:String = params;
      var fn_name = "_jsonp_" + counter_jsonp++;
      if (~/\?/.match(url)) url += '$search&callback='+fn_name;
      else url += '?$search&callback='+fn_name;

      var script =  js.Browser.document.createScriptElement();
      script.type = 'text/javascript';
      script.src = url;

      untyped window[fn_name] = function(data){
        cb(data);
        js.Browser.document.getElementsByTagName('head')[0].removeChild(script);
        script = null;
        untyped __js__("delete window[{0}]",fn_name);
      };

      // Load JSON
      js.Browser.document.getElementsByTagName('head')[0].appendChild(script);

  }

}
