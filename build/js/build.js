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
			browser_$tools_AnimationTools._prefix = Object.prototype.hasOwnProperty.call(style,"borderRadius")?"":Object.prototype.hasOwnProperty.call(style,"MsBorderRadius")?"ms":Object.prototype.hasOwnProperty.call(style,"MozBorderRadius")?"moz":Object.prototype.hasOwnProperty.call(style,"webkitBorderRadius")?"webkit":"not-supported";
		} else browser_$tools_AnimationTools._prefix = "not-supported";
	}
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
	var prefix = browser_$tools_AnimationTools.get_prefix();
	console.log(prefix);
};
function $iterator(o) { if( o instanceof Array ) return function() { return HxOverrides.iter(o); }; return typeof(o.iterator) == 'function' ? $bind(o,o.iterator) : o.iterator; }
var $_, $fid = 0;
function $bind(o,m) { if( m == null ) return null; if( m.__id__ == null ) m.__id__ = $fid++; var f; if( o.hx__closures__ == null ) o.hx__closures__ = {}; else f = o.hx__closures__[m.__id__]; if( f == null ) { f = function(){ return f.method.apply(f.scope, arguments); }; f.scope = o; f.method = m; o.hx__closures__[m.__id__] = f; } return f; }
var q = window.jQuery;
var js = js || {}
js.JQuery = q;
browser_$tools_Main.main();
})(typeof console != "undefined" ? console : {log:function(){}});
