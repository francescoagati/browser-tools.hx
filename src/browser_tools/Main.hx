package browser_tools;
import browser_tools.AElement;
import browser_tools.HtmlTools;
import browser_tools.Assets;
using browser_tools.Assets.AssetsTools;


class Main {
  static function main() {



    var assets:AManifest = [];
    assets++
      << 'http://cdnjs.cloudflare.com/ajax/libs/vue/0.12.1/vue.min.js'
      << 'http://cdnjs.cloudflare.com/ajax/libs/d3/3.5.5/d3.min.js';

    assets++ << 'http://cdnjs.cloudflare.com/ajax/libs/crossfilter/1.3.11/crossfilter.min.js';
    assets++ << 'http://cdnjs.cloudflare.com/ajax/libs/dc/1.7.3/dc.min.js';




  }
}
