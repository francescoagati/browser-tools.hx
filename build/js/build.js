(function (console) { "use strict";
function $extend(from, fields) {
	function Inherit() {} Inherit.prototype = from; var proto = new Inherit();
	for (var name in fields) proto[name] = fields[name];
	if( fields.toString !== Object.prototype.toString ) proto.toString = fields.toString;
	return proto;
}
var HxOverrides = function() { };
HxOverrides.iter = function(a) {
	return { cur : 0, arr : a, hasNext : function() {
		return this.cur < this.arr.length;
	}, next : function() {
		return this.arr[this.cur++];
	}};
};
var async_$tools_Async = function() { };
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
		var tmp1;
		switch(prop3) {
		case "left":
			tmp1 = element2.getBoundingClientRect().left;
			break;
		case "right":
			tmp1 = element2.getBoundingClientRect().right;
			break;
		case "top":
			tmp1 = element2.getBoundingClientRect().top;
			break;
		case "bottom":
			tmp1 = element2.getBoundingClientRect().bottom;
			break;
		default:
			tmp1 = null;
		}
		var prop4 = tmp1;
		cb1(prop4);
	});
	var fn_animation_ended = function(e1) {
		animation_ended = true;
		el1.removeEventListener(event_animation,fn);
		el1.removeEventListener(event_transition,fn);
		fn(e1);
	};
	el1.addEventListener(event_animation,fn_animation_ended);
	el1.addEventListener(event_transition,fn_animation_ended);
	var tmp;
	var __fn_tmp_50311672_3530597538_bbae7958f09073afc387d7255bf20c8e = function(__return1) {
		__return1();
	};
	tmp = __fn_tmp_50311672_3530597538_bbae7958f09073afc387d7255bf20c8e;
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
function $iterator(o) { if( o instanceof Array ) return function() { return HxOverrides.iter(o); }; return typeof(o.iterator) == 'function' ? $bind(o,o.iterator) : o.iterator; }
var $_, $fid = 0;
function $bind(o,m) { if( m == null ) return null; if( m.__id__ == null ) m.__id__ = $fid++; var f; if( o.hx__closures__ == null ) o.hx__closures__ = {}; else f = o.hx__closures__[m.__id__]; if( f == null ) { f = function(){ return f.method.apply(f.scope, arguments); }; f.scope = o; f.method = m; o.hx__closures__[m.__id__] = f; } return f; }
var q = window.jQuery;
var js = js || {}
js.JQuery = q;
browser_$tools_Binder.class_path = "browser_tools.Binder";
browser_$tools_Main.main();
})(typeof console != "undefined" ? console : {log:function(){}});
