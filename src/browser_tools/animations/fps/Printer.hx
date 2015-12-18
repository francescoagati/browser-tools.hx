package browser_tools.animations.fps;
using browser_tools.HtmlTools;

class Printer extends Loop {

  var fps:Float = 0;
  var timer:haxe.Timer;
  public function new() {
    inject_printer();
    super(function(value) {
      fps = value;
    });


    timer = new haxe.Timer(1000);
    timer.run = function() 'fps_printer'.byId() ^ '${fps} fps';

  }


  inline function inject_printer() {
    var body:AElement = js.Browser.document.body;

    var html = '
      <div id="fps_printer"
        style="
          pointer-events:none;
          font-size:24px;
          padding:20px;
          position:fixed;
          top:0px;
          left:0px;
          z-index:99999999999999999999999999999;
          display:inline-block"></div>
    ';

    body.appendChild(html.toNode());
  }

}
