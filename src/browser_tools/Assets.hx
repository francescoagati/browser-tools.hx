package browser_tools;
import js.Browser;


typedef Group = Array<String>;
typedef Manifest = Array<Group>;

@:forward abstract AGroup(Group) from Group to Group {
  public inline function new(group:Group) this = group;
  @:op(A<<B) public inline function push_to_group(s:String) {
    this.push(s);
    return new AGroup(this);
  }
}


class AssetsTools {
  public inline static function createGroup(manifest:Manifest):AGroup {
    var group:AGroup = [];
    manifest.push(group);
    return group;
  }

  public inline static function add(group:AGroup,path:String):AGroup {
    group.push(path);
    return group;
  }

}




@:build(com.dongxiguo.continuation.Continuation.cpsByMeta(":async"))
class Assets {

		public static inline  function load_css(url,callback) {
			var link = Browser.document.createLinkElement();
			link.rel = "stylesheet";
			link.href = url;
			Browser.document.body.appendChild(link);
			callback();
		}



  	static function wait(n,cb) {
      untyped setTimeout(cb,n);

    }

		public static inline  function load_script(url,callback) {
			var script = Browser.document.createScriptElement();
			script.async = true;
			script.src = url;
			script.type = 'text/javascript';

			untyped script.onreadystatechange = callback;
    	script.onload = callback;
			Browser.document.body.appendChild(script);
		}


		@:async static inline  function load_file(file:String) {
			 if (file.indexOf('.css') > 0) {
					 @await load_css(file);
         	 @await wait(0);
			 } else {
			 	//if (file.indexOf('.js') > 0) {
					 @await load_script(file);
           @await wait(0);
			  //}
       }

			 return file;
		}



		@:async static inline function load_group(group:Array<String>) {
				var assets = [
				  @fork(asset in group) {
					  @await load_file(asset);
          }
				];
        @await wait(1);
				return assets;
		}


		@:async public inline  static function process(assets:Array<Array<String>>) {

			 for (group in assets) {
					 var grr = @await load_group(group);
			 };

			 return;
		}


}
