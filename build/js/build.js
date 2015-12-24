(function (console) { "use strict";
var async_$tools_Async = function() { };
var browser_$tools_Main = function() { };
browser_$tools_Main.__interfaces__ = [async_$tools_Async];
browser_$tools_Main.main = function() {
	var tmp;
	var this10 = window.document.getElementById("animation");
	tmp = this10;
	var this1 = tmp;
	var cb2 = function(__parameter_15) {
		__parameter_15;
		setTimeout(function() {
			var this3 = (function($this) {
				var $r;
				var this2 = window.document.getElementById("animation");
				$r = this2;
				return $r;
			}(this));
			var cb1 = function(__parameter_19) {
				__parameter_19;
				var this5 = (function($this) {
					var $r;
					var this4 = window.document.getElementById("animation");
					$r = this4;
					return $r;
				}(this));
				var cb = function(__parameter_21) {
					__parameter_21;
					window.document.getElementById("animation").style.opacity = "0";
					null;
				};
				var el = this5;
				var prefix = browser_$tools_events_Helper.get_prefix();
				var event_animation = browser_$tools_events_Helper.get_prefix() == ""?"AnimationEnd".toLowerCase():"" + browser_$tools_events_Helper.get_prefix() + "AnimationEnd";
				var event_transition = browser_$tools_events_Helper.get_prefix() == ""?"TransitionEnd".toLowerCase():"" + browser_$tools_events_Helper.get_prefix() + "AnimationEnd";
				var check = false;
				var fn1 = (function($this) {
					var $r;
					var fn = null;
					fn = function(e) {
						if(check == false) cb(null);
						check = true;
						el.removeEventListener(event_animation,fn);
						el.removeEventListener(event_transition,fn);
						var this6 = el;
						this6.classList.remove("slideOutLeft");
						this6;
					};
					$r = fn;
					return $r;
				}(this));
				el.addEventListener(event_animation,fn1);
				el.addEventListener(event_transition,fn1);
				var this7 = el;
				this7.classList.add("slideOutLeft");
				this7;
			};
			var el1 = this3;
			var prefix1 = browser_$tools_events_Helper.get_prefix();
			var event_animation1 = browser_$tools_events_Helper.get_prefix() == ""?"AnimationEnd".toLowerCase():"" + browser_$tools_events_Helper.get_prefix() + "AnimationEnd";
			var event_transition1 = browser_$tools_events_Helper.get_prefix() == ""?"TransitionEnd".toLowerCase():"" + browser_$tools_events_Helper.get_prefix() + "AnimationEnd";
			var check1 = false;
			var fn3 = (function($this) {
				var $r;
				var fn2 = null;
				fn2 = function(e1) {
					if(check1 == false) cb1(null);
					check1 = true;
					el1.removeEventListener(event_animation1,fn2);
					el1.removeEventListener(event_transition1,fn2);
					var this8 = el1;
					this8.classList.remove("jello");
					this8;
				};
				$r = fn2;
				return $r;
			}(this));
			el1.addEventListener(event_animation1,fn3);
			el1.addEventListener(event_transition1,fn3);
			var this9 = el1;
			this9.classList.add("jello");
			this9;
		},2000);
	};
	var el2 = this1;
	var prefix2 = browser_$tools_events_Helper.get_prefix();
	var event_animation2 = browser_$tools_events_Helper.get_prefix() == ""?"AnimationEnd".toLowerCase():"" + browser_$tools_events_Helper.get_prefix() + "AnimationEnd";
	var event_transition2 = browser_$tools_events_Helper.get_prefix() == ""?"TransitionEnd".toLowerCase():"" + browser_$tools_events_Helper.get_prefix() + "AnimationEnd";
	var check2 = false;
	var tmp1;
	var fn5 = null;
	fn5 = function(e2) {
		if(check2 == false) cb2(null);
		check2 = true;
		el2.removeEventListener(event_animation2,fn5);
		el2.removeEventListener(event_transition2,fn5);
		var this11 = el2;
		this11.classList.remove("slideInLeft");
		this11;
	};
	tmp1 = fn5;
	var fn4 = tmp1;
	el2.addEventListener(event_animation2,fn4);
	el2.addEventListener(event_transition2,fn4);
	var this12 = el2;
	this12.classList.add("slideInLeft");
	this12;
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
var q = window.jQuery;
var js = js || {}
js.JQuery = q;
browser_$tools_Main.main();
})(typeof console != "undefined" ? console : {log:function(){}});
