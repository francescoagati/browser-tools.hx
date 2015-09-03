(function (console) { "use strict";
var HxOverrides = function() { };
HxOverrides.iter = function(a) {
	return { cur : 0, arr : a, hasNext : function() {
		return this.cur < this.arr.length;
	}, next : function() {
		return this.arr[this.cur++];
	}};
};
var browser_$tools_Loader = function() { };
browser_$tools_Loader.end = function() {
	var element = window.document.getElementById("browser-tools-loading");
	if($bind(element,element.remove) == null) element.parentNode.removeChild(element); else element.remove();
	element;
	var tmp;
	var node = window.document.body;
	tmp = node.getElementsByClassName("start-hide");
	tmp[0].style.display = "block";
};
var browser_$tools_Main = function() { };
browser_$tools_Main.main = function() {
	var body = window.document.body;
	var loader = "\n      <div id=\"browser-tools-loading\" style=\"position:fixed;top:0px;left:0px;width:100%;height:100%;background:white;\"></div>\n    ";
	if(window.document.getElementById("browser-tools-loading") == null) {
		var tmp;
		var _this = window.document;
		tmp = _this.createElement("div");
		var node = tmp;
		node.innerHTML = loader;
		body.appendChild(node);
	}
	var element = window.document.getElementById("browser-tools-loading");
	thx_Timer.nextFrame(function() {
		element.innerHTML = "\n\t\t\t  <style>\n\t\t\t    .spinner {\n\t\t\t      margin: 200px auto;\n\t\t\t      width: 50px;\n\t\t\t      height: 30px;\n\t\t\t      text-align: center;\n\t\t\t      font-size: 10px;\n\n\t\t\t    }\n\n\t\t\t    .spinner > div {\n\t\t\t      background-color: #155500;\n\t\t\t      height: 100%;\n\t\t\t      width: 6px;\n\t\t\t      display: inline-block;\n\n\t\t\t      -webkit-animation: stretchdelay 1.2s infinite ease-in-out;\n\t\t\t      animation: stretchdelay 1.2s infinite ease-in-out;\n\t\t\t    }\n\n\t\t\t    .spinner .rect2 {\n\t\t\t      -webkit-animation-delay: -1.1s;\n\t\t\t      animation-delay: -1.1s;\n\t\t\t    }\n\n\t\t\t    .spinner .rect3 {\n\t\t\t      -webkit-animation-delay: -1.0s;\n\t\t\t      animation-delay: -1.0s;\n\t\t\t    }\n\n\t\t\t    .spinner .rect4 {\n\t\t\t      -webkit-animation-delay: -0.9s;\n\t\t\t      animation-delay: -0.9s;\n\t\t\t    }\n\n\t\t\t    .spinner .rect5 {\n\t\t\t      -webkit-animation-delay: -0.8s;\n\t\t\t      animation-delay: -0.8s;\n\t\t\t    }\n\n\t\t\t    @-webkit-keyframes stretchdelay {\n\t\t\t      0%, 40%, 100% { -webkit-transform: scaleY(0.4) }\n\t\t\t      20% { -webkit-transform: scaleY(1.0) }\n\t\t\t    }\n\n\t\t\t    @keyframes stretchdelay {\n\t\t\t      0%, 40%, 100% {\n\t\t\t        transform: scaleY(0.4);\n\t\t\t        -webkit-transform: scaleY(0.4);\n\t\t\t      } 20% {\n\t\t\t        transform: scaleY(1.0);\n\t\t\t        -webkit-transform: scaleY(1.0);\n\t\t\t      }\n\t\t\t    }\n\t\t\t </style>\n\n\t\t\t <div id=\"overlay\">\n\t\t\t   <div class=\"spinner\">\n\t\t\t     LOADING\n\t\t\t    <div class=\"rect1\"></div>\n\t\t\t    <div class=\"rect2\"></div>\n\t\t\t    <div class=\"rect3\"></div>\n\t\t\t    <div class=\"rect4\"></div>\n\t\t\t    <div class=\"rect5\"></div>\n\t\t\t  </div>\n\n\t\t\t </div>\n\t\t\t";
		thx_Timer.delay(thx_Functions.noop,0);
	});
	haxe_Timer.delay(browser_$tools_Loader.end,2000);
};
var haxe_Timer = function(time_ms) {
	var me = this;
	this.id = setInterval(function() {
		me.run();
	},time_ms);
};
haxe_Timer.delay = function(f,time_ms) {
	var t = new haxe_Timer(time_ms);
	t.run = function() {
		t.stop();
		f();
	};
	return t;
};
haxe_Timer.prototype = {
	stop: function() {
		if(this.id == null) return;
		clearInterval(this.id);
		this.id = null;
	}
	,run: function() {
	}
};
var thx_Functions = function() { };
thx_Functions.noop = function() {
};
var thx_Timer = function() { };
thx_Timer.delay = function(callback,delayms) {
	return (function($this) {
		var $r;
		var id = setTimeout(callback,delayms);
		$r = function() {
			thx_Timer.clear(id);
		};
		return $r;
	}(this));
};
thx_Timer.nextFrame = function(callback) {
	var id = requestAnimationFrame(callback);
	return function() {
		cancelAnimationFrame(id);
	};
};
thx_Timer.clear = function(id) {
	return clearTimeout(id);
};
function $iterator(o) { if( o instanceof Array ) return function() { return HxOverrides.iter(o); }; return typeof(o.iterator) == 'function' ? $bind(o,o.iterator) : o.iterator; }
var $_, $fid = 0;
function $bind(o,m) { if( m == null ) return null; if( m.__id__ == null ) m.__id__ = $fid++; var f; if( o.hx__closures__ == null ) o.hx__closures__ = {}; else f = o.hx__closures__[m.__id__]; if( f == null ) { f = function(){ return f.method.apply(f.scope, arguments); }; f.scope = o; f.method = m; o.hx__closures__[m.__id__] = f; } return f; }
var q = window.jQuery;
var js = js || {}
js.JQuery = q;
var scope = ("undefined" !== typeof window && window) || ("undefined" !== typeof global && global) || this;
if(!scope.setImmediate) scope.setImmediate = function(callback) {
	scope.setTimeout(callback,0);
};
var lastTime = 0;
var vendors = ["webkit","moz"];
var x = 0;
while(x < vendors.length && !scope.requestAnimationFrame) {
	scope.requestAnimationFrame = scope[vendors[x] + "RequestAnimationFrame"];
	scope.cancelAnimationFrame = scope[vendors[x] + "CancelAnimationFrame"] || scope[vendors[x] + "CancelRequestAnimationFrame"];
	x++;
}
if(!scope.requestAnimationFrame) scope.requestAnimationFrame = function(callback1) {
	var currTime = new Date().getTime();
	var timeToCall = Math.max(0,16 - (currTime - lastTime));
	var id = scope.setTimeout(function() {
		callback1(currTime + timeToCall);
	},timeToCall);
	lastTime = currTime + timeToCall;
	return id;
};
if(!scope.cancelAnimationFrame) scope.cancelAnimationFrame = function(id1) {
	scope.clearTimeout(id1);
};
if(typeof(scope.performance) == "undefined") scope.performance = { };
if(typeof(scope.performance.now) == "undefined") {
	var nowOffset = new Date().getTime();
	if(scope.performance.timing && scope.performance.timing.navigationStart) nowOffset = scope.performance.timing.navigationStart;
	scope.performance.now = (function($this) {
		var $r;
		var now = function() {
			return new Date() - nowOffset;
		};
		$r = now;
		return $r;
	}(this));
}
browser_$tools_Main.main();
})(typeof console != "undefined" ? console : {log:function(){}});
