(function (console) { "use strict";
var HxOverrides = function() { };
HxOverrides.iter = function(a) {
	return { cur : 0, arr : a, hasNext : function() {
		return this.cur < this.arr.length;
	}, next : function() {
		return this.arr[this.cur++];
	}};
};
var angular_internal_ModuleMacros = function() { };
var async_$tools_Async = function() { };
var browser_$tools_angular_IRoutes = function() { };
var browser_$tools_angular_IAngularBinder = function() { };
var browser_$tools_Binder = function() { };
browser_$tools_Binder.__interfaces__ = [browser_$tools_angular_IRoutes,browser_$tools_angular_IAngularBinder];
browser_$tools_Binder.factory = function() {
	console.log(browser_$tools_Binder.class_path);
};
browser_$tools_Binder.prototype = {
	bind_methods: function() {
		if(this.scope != null) this.scope = this.scope;
	}
};
var browser_$tools_Main = function() { };
browser_$tools_Main.__interfaces__ = [async_$tools_Async];
browser_$tools_Main.main = function() {
	var app = window.angular.module("app",[]);
	var controller = browser_$tools_Binder;
	app.controller("browser_tools.Binder",[controller.factory]);
	app.config(["$routeProvider",function(route) {
		route.when("/a/b/c/:param",{ controller : "browser_tools.Binder", templateUrl : "templates/a.html"});
		route.when("/a/b/d/:param",{ controller : "browser_tools.Binder", templateUrl : "templates/b.html"});
		route.when("/a/b/e/:param",{ controller : "browser_tools.Binder", templateUrl : "templates/c.html"});
	}]);
	var storage = js_Browser.getLocalStorage();
	var storage_json = js_Browser.getLocalStorage();
	storage.a = 2;
	storage_json.a = JSON.stringify(2);
	var tmp;
	var __fn_tmp_23394722_0898201168_e0d3bc53ef438aaa5ec26124e6906c93 = function(__return) {
		__return();
	};
	tmp = __fn_tmp_23394722_0898201168_e0d3bc53ef438aaa5ec26124e6906c93;
	tmp(function() {
	});
};
var js_Browser = function() { };
js_Browser.getLocalStorage = function() {
	try {
		var s = window.localStorage;
		s.getItem("");
		return s;
	} catch( e ) {
		return null;
	}
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
