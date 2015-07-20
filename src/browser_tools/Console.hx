package browser_tools;


class Console {


  public inline static function inject() {

    var html = '

    <link rel="stylesheet" href="https://cdn.rawgit.com/jcubic/jquery.terminal/master/css/jquery.terminal.css">

    <div id="console"></div>



    <!--<script src="http://code.jquery.com/jquery-2.1.1.min.js" ></script>-->
    <script src="https://cdn.rawgit.com/jcubic/jquery.terminal/master/js/jquery.terminal-0.8.8.min.js"></script>
    <script>
        terminal = jQuery("#console").terminal(function(command, term) {
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
    </script>

    ';

    var body:AElement = js.Browser.document.body;
    body << html;

  }
}
