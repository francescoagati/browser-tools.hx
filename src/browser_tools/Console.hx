package browser_tools;
import browser_tools.Assets.AManifest;
using browser_tools.JQueryTools;

class Console {


  public inline static function inject_console(cb:Void->Void) {

    var assets:AManifest = [];

    assets++
      << 'https://cdn.rawgit.com/jcubic/jquery.terminal/master/css/jquery.terminal.css';
    assets++
      << 'https://cdn.rawgit.com/jcubic/jquery.terminal/master/js/jquery.terminal-0.8.8.min.js';

    browser_tools.Assets.process(assets,function() {

      'body'.toJq().append('<div id="console"></div>');
      untyped __js__('

        var terminal = jQuery("#console").terminal(function(command, term) {
            if (command !== "") {
                pgr.dconsole.DC.eval(command);
            } else {
                term.echo("");
            }
        }, {
            greetings: false,
            name: "dconsole",
            width: "100%",
            height: "200",
            prompt: "> ",
        });

        document.addEventListener("console_log", function(evt) {
            terminal.echo(evt.detail.data, {
                finalize: function(div) {
                    div.css("color", "#" + evt.detail.color);
                }
            });
        });

      ');

      cb();

    });

  }
}
