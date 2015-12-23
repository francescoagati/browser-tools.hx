(function (console, $hx_exports) { "use strict";
$hx_exports.browser_tools = $hx_exports.browser_tools || {};
$hx_exports.browser_tools.transaction_check = $hx_exports.browser_tools.transaction_check || {};
var HxOverrides = function() { };
HxOverrides.iter = function(a) {
	return { cur : 0, arr : a, hasNext : function() {
		return this.cur < this.arr.length;
	}, next : function() {
		return this.arr[this.cur++];
	}};
};
var async_$tools_Async = function() { };
var browser_$tools_AnimationTools = function() { };
browser_$tools_AnimationTools.get_prefix = function() {
	if(browser_$tools_AnimationTools._prefix == null) {
		var check = (function($this) {
			var $r;
			if(browser_$tools_AnimationTools._is_animations_supported == null) browser_$tools_AnimationTools._is_animations_supported = browser_$tools_AnimationTools.check_for_animations();
			$r = browser_$tools_AnimationTools._is_animations_supported;
			return $r;
		}(this));
		if(check == true) {
			var style = window.document.body.style;
			browser_$tools_AnimationTools._prefix = style.transform != null?"":style.msTransform != null?"ms":style.MozTransform != null?"moz":style.webkitTransform != null?"webkit":style.OTransform != null?"o":"not-supported";
		} else browser_$tools_AnimationTools._prefix = "not-supported";
	}
	

       if("WebkitOpacity" in document.body.style) browser_$tools_AnimationTools._prefix = "webkit";

     ;
	return browser_$tools_AnimationTools._prefix;
};
browser_$tools_AnimationTools.check_for_animations = function() {
	var animation = false;
	var animationstring = "animation";
	var keyframeprefix = "";
	var domPrefixes = "Webkit Moz O ms Khtml".split(" ");
	var pfx = "";
	var elm = window.document.createElement("div");
	if(elm.style.animationName != null) animation = true;
	if(animation == false) {
		var style = elm.style;
		var _g = 0;
		while(_g < domPrefixes.length) {
			var prefix = domPrefixes[_g];
			++_g;
			if(style[prefix + "AnimationName"] != null) {
				pfx = prefix;
				animationstring = pfx + "Animation";
				keyframeprefix = "-" + pfx.toLowerCase() + "-";
				animation = true;
				break;
			}
		}
	}
	return animation;
};
var browser_$tools_Main = function() { };
browser_$tools_Main.__interfaces__ = [async_$tools_Async];
browser_$tools_Main.main = function() {
	var tmp;
	var this4 = window.document.getElementById("animation");
	tmp = this4;
	var this1 = tmp;
	var cb = function(__parameter_15) {
		__parameter_15;
		var tmp1;
		var this3 = window.document.getElementById("animation");
		tmp1 = this3;
		var this2 = tmp1;
		this2.classList.add("end_animation");
		this2;
		null;
	};
	var el = this1;
	var prefix = browser_$tools_AnimationTools.get_prefix();
	var event_animation = browser_$tools_events_Helper.get_prefix() == ""?"AnimationEnd".toLowerCase():"" + browser_$tools_events_Helper.get_prefix() + "AnimationEnd";
	var event_transition = browser_$tools_events_Helper.get_prefix() == ""?"TransitionEnd".toLowerCase():"" + browser_$tools_events_Helper.get_prefix() + "AnimationEnd";
	var check = false;
	var tmp2;
	var fn1 = null;
	fn1 = function(e) {
		if(check == false) cb(null);
		check = true;
		el.removeEventListener(event_animation,fn1);
		el.removeEventListener(event_transition,fn1);
		var this5 = el;
		this5.classList.remove("move");
		this5;
	};
	tmp2 = fn1;
	var fn = tmp2;
	var element = el;
	var prop = "left";
	var __return = function(response) {
		if(response == false) fn(null);
	};
	var __afterVar_11 = function(last) {
		last;
		setTimeout(function() {
			var __afterVar_13 = function(now) {
				now;
				setTimeout(function() {
					__return(last - now != 0);
				},20);
			};
			var element1 = element;
			var prop1 = prop;
			var cb1 = function(__parameter_14) {
				__afterVar_13(__parameter_14);
			};
			window.requestAnimationFrame(function(i) {
				var prop2 = (function($this) {
					var $r;
					switch(prop1) {
					case "left":
						$r = element1.getBoundingClientRect().left;
						break;
					case "right":
						$r = element1.getBoundingClientRect().right;
						break;
					case "top":
						$r = element1.getBoundingClientRect().top;
						break;
					case "bottom":
						$r = element1.getBoundingClientRect().bottom;
						break;
					default:
						$r = null;
					}
					return $r;
				}(this));
				cb1(prop2);
			});
		},300);
	};
	var element2 = element;
	var prop3 = prop;
	var cb2 = function(__parameter_12) {
		__afterVar_11(__parameter_12);
	};
	window.requestAnimationFrame(function(i1) {
		var tmp3;
		switch(prop3) {
		case "left":
			tmp3 = element2.getBoundingClientRect().left;
			break;
		case "right":
			tmp3 = element2.getBoundingClientRect().right;
			break;
		case "top":
			tmp3 = element2.getBoundingClientRect().top;
			break;
		case "bottom":
			tmp3 = element2.getBoundingClientRect().bottom;
			break;
		default:
			tmp3 = null;
		}
		var prop4 = tmp3;
		cb2(prop4);
	});
	el.addEventListener(event_animation,fn);
	el.addEventListener(event_transition,fn);
	var this6 = el;
	this6.classList.add("move");
	this6;
};
var browser_$tools_transaction_$check = function() { };
browser_$tools_transaction_$check.__interfaces__ = [async_$tools_Async];
browser_$tools_transaction_$check.check_for_animations = $hx_exports.browser_tools.transaction_check.check_for_animations = function(container,__return) {
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
				var __afterVar_9 = function(check) {
					check;
					var element = window.document.getElementById("check_animation_one");
					if($bind(element,element.remove) == null) element.parentNode.removeChild(element); else element.remove();
					element;
					var element1 = window.document.getElementById("check_animation_two");
					if($bind(element1,element1.remove) == null) element1.parentNode.removeChild(element1); else element1.remove();
					element1;
					__return(check);
				};
				var __return1 = function(__parameter_10) {
					__afterVar_9(__parameter_10);
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
var browser_$tools_events_Helper = function() { };
browser_$tools_events_Helper.get_prefix = function() {
	if(browser_$tools_events_Helper._prefix == null) {
		var check = true;
		if(check == true) {
			var style = window.document.body.style;
			browser_$tools_events_Helper._prefix = style.transform != null?"":style.msTransform != null?"ms":style.MozTransform != null?"moz":style.webkitTransform != null?"webkit":style.OTransform != null?"o":"not-supported";
		} else browser_$tools_events_Helper._prefix = "not-supported";
	}
	

     if("WebkitOpacity" in document.body.style) browser_$tools_events_Helper._prefix = "webkit";

   ;
	return browser_$tools_events_Helper._prefix;
};
function $iterator(o) { if( o instanceof Array ) return function() { return HxOverrides.iter(o); }; return typeof(o.iterator) == 'function' ? $bind(o,o.iterator) : o.iterator; }
var $_, $fid = 0;
function $bind(o,m) { if( m == null ) return null; if( m.__id__ == null ) m.__id__ = $fid++; var f; if( o.hx__closures__ == null ) o.hx__closures__ = {}; else f = o.hx__closures__[m.__id__]; if( f == null ) { f = function(){ return f.method.apply(f.scope, arguments); }; f.scope = o; f.method = m; o.hx__closures__[m.__id__] = f; } return f; }
var q = window.jQuery;
var js = js || {}
js.JQuery = q;
browser_$tools_Main.main();
})(typeof console != "undefined" ? console : {log:function(){}}, typeof window != "undefined" ? window : exports);
