(function (console) { "use strict";
function $extend(from, fields) {
	function Inherit() {} Inherit.prototype = from; var proto = new Inherit();
	for (var name in fields) proto[name] = fields[name];
	if( fields.toString !== Object.prototype.toString ) proto.toString = fields.toString;
	return proto;
}
var EReg = function(r,opt) {
	opt = opt.split("u").join("");
	this.r = new RegExp(r,opt);
};
EReg.prototype = {
	match: function(s) {
		if(this.r.global) this.r.lastIndex = 0;
		this.r.m = this.r.exec(s);
		this.r.s = s;
		return this.r.m != null;
	}
	,matched: function(n) {
		var tmp;
		if(this.r.m != null && n >= 0 && n < this.r.m.length) tmp = this.r.m[n]; else throw new js__$Boot_HaxeError("EReg::matched");
		return tmp;
	}
};
var HxOverrides = function() { };
HxOverrides.iter = function(a) {
	return { cur : 0, arr : a, hasNext : function() {
		return this.cur < this.arr.length;
	}, next : function() {
		return this.arr[this.cur++];
	}};
};
var async_$tools_Async = function() { };
var browser_$tools_BrowserDevice = function() { };
var browser_$tools_angular_IRoutes = function() { };
var browser_$tools_angular_IAngularBinder = function() { };
var browser_$tools_BinderBase = function() { };
browser_$tools_BinderBase.__interfaces__ = [browser_$tools_angular_IRoutes,browser_$tools_angular_IAngularBinder];
browser_$tools_BinderBase.prototype = {
	changed: function(n,o) {
		console.log(n);
	}
	,pippa: function() {
	}
};
var browser_$tools_Binder = function() {
	if(this.scope != null) this.scope = this.scope;
	this.scope.pippa = $bind(this,this.pippa);
	this.scope.watch("\"a.b.c\"",$bind(this,this.changed),true);
};
browser_$tools_Binder.factory = function() {
	console.log(browser_$tools_Binder.class_path);
};
browser_$tools_Binder.__super__ = browser_$tools_BinderBase;
browser_$tools_Binder.prototype = $extend(browser_$tools_BinderBase.prototype,{
	bind_methods: function() {
		if(this.scope != null) this.scope = this.scope;
		this.scope.pippa = $bind(this,this.pippa);
		this.scope.watch("\"a.b.c\"",$bind(this,this.changed),true);
	}
});
var browser_$tools_Main = function() { };
browser_$tools_Main.__interfaces__ = [async_$tools_Async];
browser_$tools_Main.main = function() {
	var el = window.document.getElementById("x");
	if(browser_$tools_BrowserDevice.browser.browser == "MSIE" && (browser_$tools_BrowserDevice.browser.version == 9 || browser_$tools_BrowserDevice.browser.version == 9)) null;
	var el1 = el;
	var animation_ended = null;
	var event_animation = browser_$tools_events_Helper.get_prefix() == ""?"AnimationEnd".toLowerCase():"" + browser_$tools_events_Helper.get_prefix() + "AnimationEnd";
	var event_transition = browser_$tools_events_Helper.get_prefix() == ""?"TransitionEnd".toLowerCase():"" + browser_$tools_events_Helper.get_prefix() + "TransitionEnd";
	var check = false;
	var fn = function(e) {
		if(check == false) null;
		check = true;
	};
	var element = el1;
	var prop = "top";
	var __return = function(response) {
		if(response == false) {
			animation_ended = false;
			fn(null);
		}
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
			var cb = function(__parameter_14) {
				__afterVar_13(__parameter_14);
			};
			window.requestAnimationFrame(function(i) {
				var rect = element1.getBoundingClientRect();
				var prop2 = (function($this) {
					var $r;
					switch(prop1) {
					case "left":
						$r = rect.left;
						break;
					case "right":
						$r = rect.right;
						break;
					case "top":
						$r = rect.top;
						break;
					case "bottom":
						$r = rect.bottom;
						break;
					default:
						$r = null;
					}
					return $r;
				}(this));
				cb(prop2);
			});
		},300);
	};
	var element2 = element;
	var prop3 = prop;
	var cb1 = function(__parameter_12) {
		__afterVar_11(__parameter_12);
	};
	window.requestAnimationFrame(function(i1) {
		var rect1 = element2.getBoundingClientRect();
		var tmp2;
		switch(prop3) {
		case "left":
			tmp2 = rect1.left;
			break;
		case "right":
			tmp2 = rect1.right;
			break;
		case "top":
			tmp2 = rect1.top;
			break;
		case "bottom":
			tmp2 = rect1.bottom;
			break;
		default:
			tmp2 = null;
		}
		var prop4 = tmp2;
		cb1(prop4);
	});
	var tmp1;
	var fn_animation_ended1 = null;
	fn_animation_ended1 = function(e1) {
		animation_ended = true;
		el1.removeEventListener(event_animation,fn_animation_ended1);
		el1.removeEventListener(event_transition,fn_animation_ended1);
		fn(e1);
	};
	tmp1 = fn_animation_ended1;
	var fn_animation_ended = tmp1;
	el1.addEventListener(event_animation,fn_animation_ended);
	el1.addEventListener(event_transition,fn_animation_ended);
	var tmp;
	var __fn_tmp_92961549_7647788525_02b76a3669ad3f4b5484cd00fc3569ec = function(__return1) {
		__return1();
	};
	tmp = __fn_tmp_92961549_7647788525_02b76a3669ad3f4b5484cd00fc3569ec;
	tmp(function() {
	});
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
var js__$Boot_HaxeError = function(val) {
	Error.call(this);
	this.val = val;
	this.message = String(val);
	if(Error.captureStackTrace) Error.captureStackTrace(this,js__$Boot_HaxeError);
};
js__$Boot_HaxeError.__super__ = Error;
js__$Boot_HaxeError.prototype = $extend(Error.prototype,{
});
function $iterator(o) { if( o instanceof Array ) return function() { return HxOverrides.iter(o); }; return typeof(o.iterator) == 'function' ? $bind(o,o.iterator) : o.iterator; }
var $_, $fid = 0;
function $bind(o,m) { if( m == null ) return null; if( m.__id__ == null ) m.__id__ = $fid++; var f; if( o.hx__closures__ == null ) o.hx__closures__ = {}; else f = o.hx__closures__[m.__id__]; if( f == null ) { f = function(){ return f.method.apply(f.scope, arguments); }; f.scope = o; f.method = m; o.hx__closures__[m.__id__] = f; } return f; }
var q = window.jQuery;
var js = js || {}
js.JQuery = q;
browser_$tools_BrowserDevice.browser = (function($this) {
	var $r;
	var navigator = window.navigator;
	var navigatorObj = navigator.appName;
	var userAgentObj = navigator.userAgent;
	var matchVersion;
	var browser = null;
	var version = null;
	var rg_browser = new EReg("(opera|chrome|safari|firefox|msie|trident)/?\\s*(\\.?\\d+(\\.\\d+)*)","i");
	var rg_system_mobile = new EReg("iPhone|Android|webOS|iPad","i");
	var rg_version = new EReg("version/([\\.\\d]+)","i");
	var match_browser = rg_browser.match(userAgentObj);
	var match_version = rg_version.match(userAgentObj);
	var browser1 = match_browser?rg_browser.matched(1):navigatorObj;
	version = match_version?rg_version.matched(1):rg_browser.matched(2);
	$r = rg_system_mobile.match(navigator.userAgent)?{ browser : browser1, version : parseFloat(version), type : "mobile"}:{ browser : browser1, version : parseFloat(version), type : "desktop"};
	return $r;
}(this));
browser_$tools_Binder.class_path = "browser_tools.Binder";
browser_$tools_Main.main();
})(typeof console != "undefined" ? console : {log:function(){}});
