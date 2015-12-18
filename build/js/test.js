(function (console, $hx_exports) { "use strict";
$hx_exports.transaction_check = $hx_exports.transaction_check || {};
function $extend(from, fields) {
	function Inherit() {} Inherit.prototype = from; var proto = new Inherit();
	for (var name in fields) proto[name] = fields[name];
	if( fields.toString !== Object.prototype.toString ) proto.toString = fields.toString;
	return proto;
}
var Test = function() { };
Test.main = function() {
	new browser_$tools_animations_fps_Printer();
};
var async_$tools_Async = function() { };
var transaction_$check = function() { };
transaction_$check.__interfaces__ = [async_$tools_Async];
transaction_$check.check_for_animations = $hx_exports.transaction_check.check_for_animations = function(container,__return) {
	setTimeout(function() {
		var div1 = (function($this) {
			var $r;
			var fragment = window.document.createDocumentFragment();
			var div = window.document.createElement("div");
			div.innerHTML = "\n\n      <style>\n          @-webkit-keyframes wave {\n            from {\n              -webkit-transform: translateX(0);\n                      transform: translateX(0);\n            }\n            to {\n              -webkit-transform: translateX(100%);\n                      transform: translateX(100%);\n            }\n          }\n          @keyframes wave {\n            from {\n              -webkit-transform: translateX(0);\n                      transform: translateX(0);\n            }\n            to {\n              -webkit-transform: translateX(100%);\n                      transform: translateX(100%);\n            }\n          }\n          .check_animate {\n            -webkit-animation: wave 500ms ease alternate infinite;\n                    animation: wave 500ms ease alternate infinite;\n          }\n\n          div.check_animate {\n            width: 20px;\n            position:fixed;\n            bottom:0;\n            height: 2px;\n          }\n\n          #check_animation_one {\n            background-color: white;\n            -webkit-transform: translateZ(0);\n                    transform: translateZ(0);\n            will-change: transform;\n          }\n\n          #check_animation_two {\n            background-color: #ececec;\n          }\n      </style>\n\n\n      <div id=\"check_animation_one\" class=\"check_animate\"></div>\n      <div id=\"check_animation_two\" class=\"check_animate\"></div>\n\n    ";
			$r = div;
			return $r;
		}(this));
		div1;
		var __endIf_0 = function() {
			container.appendChild(div1);
			setTimeout(function() {
				var __afterVar_5 = function(check) {
					check;
					var element = window.document.getElementById("check_animation_one");
					if($bind(element,element.remove) == null) element.parentNode.removeChild(element); else element.remove();
					element;
					var element1 = window.document.getElementById("check_animation_two");
					if($bind(element1,element1.remove) == null) element1.parentNode.removeChild(element1); else element1.remove();
					element1;
					__return(check);
				};
				var __return1 = function(__parameter_6) {
					__afterVar_5(__parameter_6);
				};
				var check1 = window.document.getElementById("check_animation_one");
				check1;
				var last = check1.getBoundingClientRect().left;
				last;
				setTimeout(function() {
					var now = check1.getBoundingClientRect().left;
					now;
					setTimeout(function() {
						__return1([last - now != 0,last - now]);
					},50);
				},300);
			},20);
			return;
		};
		if(container == null) {
			container = window.document.body;
			__endIf_0();
		} else __endIf_0();
	},20);
};
var browser_$tools_animations_fps_Loop = function(cb) {
	this._stop = false;
	this.last_frame_time = null;
	this.last_frame_time = new Date().getTime();
	this.cb = cb;
	this.event_loop(0);
};
browser_$tools_animations_fps_Loop.__interfaces__ = [async_$tools_Async];
browser_$tools_animations_fps_Loop.prototype = {
	event_loop: function(i) {
		if(this._stop == true) return;
		var now = new Date().getTime();
		var fps = Math.floor(1000 / (now - this.last_frame_time));
		this.last_frame_time = now;
		this.cb(fps);
		window.requestAnimationFrame($bind(this,this.event_loop));
	}
};
var browser_$tools_animations_fps_Printer = function() {
	this.fps = 0;
	var _g = this;
	var body = window.document.body;
	var html = "\n      <div id=\"fps_printer\"\n        style=\"font-size:24px;padding:20px;position:fixed;top:0px;left:0px;z-index:99999999999999999999999999999;display:inline-block\"></div>\n    ";
	var tmp;
	var fragment = window.document.createDocumentFragment();
	var div = window.document.createElement("div");
	div.innerHTML = html;
	tmp = div;
	body.appendChild(tmp);
	browser_$tools_animations_fps_Loop.call(this,function(value) {
		_g.fps = value;
	});
	this.timer = new haxe_Timer(1000);
	this.timer.run = function() {
		var this1 = window.document.getElementById("fps_printer");
		this1.innerHTML = "" + _g.fps + " fps";
	};
};
browser_$tools_animations_fps_Printer.__super__ = browser_$tools_animations_fps_Loop;
browser_$tools_animations_fps_Printer.prototype = $extend(browser_$tools_animations_fps_Loop.prototype,{
});
var haxe_Timer = function(time_ms) {
	var me = this;
	this.id = setInterval(function() {
		me.run();
	},time_ms);
};
haxe_Timer.prototype = {
	run: function() {
	}
};
var $_, $fid = 0;
function $bind(o,m) { if( m == null ) return null; if( m.__id__ == null ) m.__id__ = $fid++; var f; if( o.hx__closures__ == null ) o.hx__closures__ = {}; else f = o.hx__closures__[m.__id__]; if( f == null ) { f = function(){ return f.method.apply(f.scope, arguments); }; f.scope = o; f.method = m; o.hx__closures__[m.__id__] = f; } return f; }
var q = window.jQuery;
var js = js || {}
js.JQuery = q;
Test.main();
})(typeof console != "undefined" ? console : {log:function(){}}, typeof window != "undefined" ? window : exports);
