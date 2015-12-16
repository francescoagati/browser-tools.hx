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
browser_$tools_Main.animate = function(__return) {
	var el = window.document.getElementById("animation");
	el;
	el.style.setProperty("-ms-transition","all 2s");
	el.style.setProperty("-webkit-transition","all 2s");
	el.style.setProperty("-moz-transition","all 2s");
	el.style.setProperty("transition","all 2s");
	window.requestAnimationFrame(function(i) {
		el.style.setProperty("-ms-transform","translateX(-100px)");
		el.style.setProperty("-webkit-transform","translateX(-100px)");
		el.style.setProperty("-moz-transform","translateX(-100px)");
		el.style.setProperty("transform","translateX(-100px)");
	});
	var element = el;
	var cb2 = function() {
		window.requestAnimationFrame(function(i1) {
			el.style.setProperty("-ms-transform","translateX(0px)");
			el.style.setProperty("-webkit-transform","translateX(0px)");
			el.style.setProperty("-moz-transform","translateX(0px)");
			el.style.setProperty("transform","translateX(0px)");
		});
		var element1 = el;
		var cb1 = function() {
			setTimeout(function() {
				window.requestAnimationFrame(function(i2) {
					el.style.setProperty("-ms-transform","translateY(100px)");
					el.style.setProperty("-webkit-transform","translateY(100px)");
					el.style.setProperty("-moz-transform","translateY(100px)");
					el.style.setProperty("transform","translateY(100px)");
				});
				var element2 = el;
				var cb = function() {
					var y = '500px';
					y;
					window.requestAnimationFrame(function(i3) {
						el.style.setProperty("-ms-transform","translate(" + "500px" + "," + y + ")");
						el.style.setProperty("-webkit-transform","translate(" + "500px" + "," + y + ")");
						el.style.setProperty("-moz-transform","translate(" + "500px" + "," + y + ")");
						el.style.setProperty("transform","translate(" + "500px" + "," + y + ")");
					});
					__return();
				};
				var check_one = false;
				var handler1 = (function($this) {
					var $r;
					var handler = null;
					handler = function(e) {
						if(check_one == false) {
							check_one = true;
							cb();
							element2.removeEventListener("webkitTransitionEnd",handler);
							element2.removeEventListener("msTransitionEnd",handler);
							element2.removeEventListener("transitionend",handler);
						}
					};
					$r = handler;
					return $r;
				}(this));
				element2.addEventListener("webkitTransitionEnd",handler1);
				element2.addEventListener("msTransitionEnd",handler1);
				element2.addEventListener("transitionend",handler1);
			},3000);
		};
		var check_one1 = false;
		var handler3 = (function($this) {
			var $r;
			var handler2 = null;
			handler2 = function(e1) {
				if(check_one1 == false) {
					check_one1 = true;
					cb1();
					element1.removeEventListener("webkitTransitionEnd",handler2);
					element1.removeEventListener("msTransitionEnd",handler2);
					element1.removeEventListener("transitionend",handler2);
				}
			};
			$r = handler2;
			return $r;
		}(this));
		element1.addEventListener("webkitTransitionEnd",handler3);
		element1.addEventListener("msTransitionEnd",handler3);
		element1.addEventListener("transitionend",handler3);
	};
	var check_one2 = false;
	var handler5 = (function($this) {
		var $r;
		var handler4 = null;
		handler4 = function(e2) {
			if(check_one2 == false) {
				check_one2 = true;
				cb2();
				element.removeEventListener("webkitTransitionEnd",handler4);
				element.removeEventListener("msTransitionEnd",handler4);
				element.removeEventListener("transitionend",handler4);
			}
		};
		$r = handler4;
		return $r;
	}(this));
	element.addEventListener("webkitTransitionEnd",handler5);
	element.addEventListener("msTransitionEnd",handler5);
	element.addEventListener("transitionend",handler5);
};
browser_$tools_Main.main = function() {
	browser_$tools_Main.animate(function() {
	});
	var tmp;
	if(browser_$tools_AnimationTools._is_animations_supported == null) browser_$tools_AnimationTools._is_animations_supported = browser_$tools_AnimationTools.check_for_animations();
	tmp = browser_$tools_AnimationTools._is_animations_supported;
	var b = tmp;
	console.log(b);
};
function $iterator(o) { if( o instanceof Array ) return function() { return HxOverrides.iter(o); }; return typeof(o.iterator) == 'function' ? $bind(o,o.iterator) : o.iterator; }
var $_, $fid = 0;
function $bind(o,m) { if( m == null ) return null; if( m.__id__ == null ) m.__id__ = $fid++; var f; if( o.hx__closures__ == null ) o.hx__closures__ = {}; else f = o.hx__closures__[m.__id__]; if( f == null ) { f = function(){ return f.method.apply(f.scope, arguments); }; f.scope = o; f.method = m; o.hx__closures__[m.__id__] = f; } return f; }
var q = window.jQuery;
var js = js || {}
js.JQuery = q;
browser_$tools_Main.main();
})(typeof console != "undefined" ? console : {log:function(){}});
