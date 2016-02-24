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
	var tmp;
	var __fn_tmp_35050316_7514314502_a1d65e2de81e5645359f8e9f0f9b0647 = function(__return) {
		__return();
	};
	tmp = __fn_tmp_35050316_7514314502_a1d65e2de81e5645359f8e9f0f9b0647;
	tmp(function() {
	});
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
