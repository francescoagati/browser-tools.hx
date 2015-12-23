(function (console) { "use strict";
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
})(typeof console != "undefined" ? console : {log:function(){}});
