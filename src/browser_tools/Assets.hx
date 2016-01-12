package browser_tools;
import js.Browser;
using browser_tools.Assets.AssetsTools;
using browser_tools.Debug;
using browser_tools.assets.CacheTools;
using thx.Arrays;

typedef Group = Array<String>;
typedef Manifest = Array<Group>;


@:forward abstract AManifest(Manifest) from Manifest to Manifest {
  public inline function new(manifest:Manifest) this = manifest;
  @:op(A++) public inline function add_group():AGroup return AssetsTools.createGroup(this);
  @:op(++A) public inline function add_group2():AGroup return AssetsTools.createGroup(this);

  public inline function preload(cb) this.flatten().preload_list(cb);


}


@:forward abstract AGroup(Group) from Group to Group {
  public inline function new(group:Group) this = group;
  @:op(A<<B) public inline function push_to_group(s:String) {
    this.push(s);
    return new AGroup(this);
  }

  public inline function preload(cb) this.preload_list(cb);


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



    @:async public static inline function load_json(url) {
        var text = @await load_text(url);
        return haxe.Json.parse(text);
    }


    public static inline function load_text(url,callback) {
      var r = new haxe.Http(url);
      r.onData = callback;
      r.request(false);
    }

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
				'start loading assets'.console_log();
        var assets = [
				  @fork(asset in group) {
					  @await load_file(asset);
            asset.console_log('load asset:');
            asset;
          }
				];
        @await wait(1);
        'end loading assets'.console_log();
				return assets;
		}


		@:async public inline  static function process(assets:Array<Array<String>>) {

			 for (group in assets) {
					 var grr = @await load_group(group);
           group.console_log('loaded group:');
			 };

			 return;
		}


}
