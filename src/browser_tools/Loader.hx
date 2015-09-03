package browser_tools;
using browser_tools.HtmlTools;

class Loader {



  public static inline function start() {

    var body:browser_tools.AElement = js.Browser.document.body;
    var loader = '
      <div id="browser-tools-loading" style="position:fixed;top:0px;left:0px;width:100%;height:100%;background:white;"></div>
    ';

    if ('browser-tools-loading'.byId() == null) body << loader;
    injectLoading('browser-tools-loading'.byId(),thx.Functions.noop);

  }


  public static inline function end() {
    'browser-tools-loading'.byId().remove_node();
    'start-hide'.queryClassBody()[0].style.display = 'block';
  }

  public static inline function injectLoading(element:AElement,cb) {

		thx.Timer.nextFrame(function() {

			element ^  '
			  <style>
			    .spinner {
			      margin: 200px auto;
			      width: 50px;
			      height: 30px;
			      text-align: center;
			      font-size: 10px;

			    }

			    .spinner > div {
			      background-color: #155500;
			      height: 100%;
			      width: 6px;
			      display: inline-block;

			      -webkit-animation: stretchdelay 1.2s infinite ease-in-out;
			      animation: stretchdelay 1.2s infinite ease-in-out;
			    }

			    .spinner .rect2 {
			      -webkit-animation-delay: -1.1s;
			      animation-delay: -1.1s;
			    }

			    .spinner .rect3 {
			      -webkit-animation-delay: -1.0s;
			      animation-delay: -1.0s;
			    }

			    .spinner .rect4 {
			      -webkit-animation-delay: -0.9s;
			      animation-delay: -0.9s;
			    }

			    .spinner .rect5 {
			      -webkit-animation-delay: -0.8s;
			      animation-delay: -0.8s;
			    }

			    @-webkit-keyframes stretchdelay {
			      0%, 40%, 100% { -webkit-transform: scaleY(0.4) }
			      20% { -webkit-transform: scaleY(1.0) }
			    }

			    @keyframes stretchdelay {
			      0%, 40%, 100% {
			        transform: scaleY(0.4);
			        -webkit-transform: scaleY(0.4);
			      } 20% {
			        transform: scaleY(1.0);
			        -webkit-transform: scaleY(1.0);
			      }
			    }
			 </style>

			 <div id="overlay">
			   <div class="spinner">
			     LOADING
			    <div class="rect1"></div>
			    <div class="rect2"></div>
			    <div class="rect3"></div>
			    <div class="rect4"></div>
			    <div class="rect5"></div>
			  </div>

			 </div>
			';
			thx.Timer.delay(cb,0);
		});
	}


}
