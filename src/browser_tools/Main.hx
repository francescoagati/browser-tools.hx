package browser_tools;
import browser_tools.AElement;
import browser_tools.HtmlTools;
import browser_tools.Assets;
import browser_tools.Debug;
import browser_tools.Console;
import browser_tools.Http;
import browser_tools.Loader;

using browser_tools.Assets.AssetsTools;
using browser_tools.Debug;
using browser_tools.AssetsToolsCompileTime;
using browser_tools.HttpTools;

class Main {
  static function main() {
    /*
    var assets:AManifest = [];
    assets++
      << 'http://cdnjs.cloudflare.com/ajax/libs/vue/0.12.1/vue.min.js'
      << 'http://cdnjs.cloudflare.com/ajax/libs/d3/3.5.5/d3.min.js';

    ++assets << 'http://cdnjs.cloudflare.com/ajax/libs/crossfilter/1.3.11/crossfilter.min.js';
    ++assets << 'http://cdnjs.cloudflare.com/ajax/libs/dc/1.7.3/dc.min.js';

    'ss'.weblog_log('sss');
    'ss'.weblog_log();
    'ss'.weblog_debug();
    'ss'.weblog_debug_json('sss');

    browser_tools.Assets.load_json('sssss',function(json) {
      trace(json);
    });

    var lib = browser_tools.Assets.load_json_compile_time('haxelib.json');
    trace(lib);

    'http://test'.to_jsonp(function(data) {
      trace(data);
    });

    */

    js.Browser.document.addEventListener('DOMContentLoaded',function() {
      'http://ip.jsontest.com'.to_jsonp({a:1,b:2},{callback:'pippa'},function(data) {
        trace(data);
      });

      'http://ip.jsontest.com'.to_jsonp({a:1,b:2},function(data) {
        trace(data);
      });

    });


/*  Loader.start();
  haxe.Timer.delay(Loader.end,2000);
*/


  }
}
