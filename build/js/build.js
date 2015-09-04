(function (console) { "use strict";
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
};
var HxOverrides = function() { };
HxOverrides.iter = function(a) {
	return { cur : 0, arr : a, hasNext : function() {
		return this.cur < this.arr.length;
	}, next : function() {
		return this.arr[this.cur++];
	}};
};
var Reflect = function() { };
Reflect.fields = function(o) {
	var a = [];
	if(o != null) {
		var hasOwnProperty = Object.prototype.hasOwnProperty;
		for( var f in o ) {
		if(f != "__id__" && f != "hx__closures__" && hasOwnProperty.call(o,f)) a.push(f);
		}
	}
	return a;
};
var browser_$tools_Http = function() { };
var browser_$tools_Main = function() { };
browser_$tools_Main.main = function() {
	window.document.addEventListener("DOMContentLoaded",function() {
		var options = { callback : "pippa"};
		var url = "http://ip.jsontest.com";
		var params = { a : 1, b : 2};
		var cb = function(data) {
			console.log(data);
		};
		var tmp;
		var obj = params;
		var tmp2;
		var _g = [];
		var _g1 = 0;
		var _g2 = Reflect.fields(obj);
		while(_g1 < _g2.length) {
			var key = _g2[_g1];
			++_g1;
			_g.push("" + encodeURIComponent(key) + "=" + encodeURIComponent(obj[key]));
		}
		tmp2 = _g;
		tmp = tmp2.join("&");
		var search = tmp;
		var fn_name = options != null && options.callback != null?options.callback:"_jsonp_" + browser_$tools_Http.counter_jsonp++;
		if(new EReg("\\?","").match(url)) url += "" + search + "&callback=" + fn_name; else url += "?" + search + "&callback=" + fn_name;
		var tmp1;
		var _this = window.document;
		tmp1 = _this.createElement("script");
		var script = tmp1;
		script.type = "text/javascript";
		script.src = url;
		window[fn_name] = function(data1) {
			cb(data1);
			window.document.getElementsByTagName("head")[0].removeChild(script);
			script = null;
			delete window[fn_name];
		};
		window.document.getElementsByTagName("head")[0].appendChild(script);
		var url1 = "http://ip.jsontest.com";
		var params1 = { a : 1, b : 2};
		var cb1 = function(data2) {
			console.log(data2);
		};
		var tmp3;
		var obj1 = params1;
		var tmp5;
		var _g3 = [];
		var _g11 = 0;
		var _g21 = Reflect.fields(obj1);
		while(_g11 < _g21.length) {
			var key1 = _g21[_g11];
			++_g11;
			_g3.push("" + encodeURIComponent(key1) + "=" + encodeURIComponent(obj1[key1]));
		}
		tmp5 = _g3;
		tmp3 = tmp5.join("&");
		var search1 = tmp3;
		var fn_name1 = "_jsonp_" + browser_$tools_Http.counter_jsonp++;
		if(new EReg("\\?","").match(url1)) url1 += "" + search1 + "&callback=" + fn_name1; else url1 += "?" + search1 + "&callback=" + fn_name1;
		var tmp4;
		var _this1 = window.document;
		tmp4 = _this1.createElement("script");
		var script1 = tmp4;
		script1.type = "text/javascript";
		script1.src = url1;
		window[fn_name1] = function(data3) {
			cb1(data3);
			window.document.getElementsByTagName("head")[0].removeChild(script1);
			script1 = null;
			delete window[fn_name1];
		};
		window.document.getElementsByTagName("head")[0].appendChild(script1);
	});
};
function $iterator(o) { if( o instanceof Array ) return function() { return HxOverrides.iter(o); }; return typeof(o.iterator) == 'function' ? $bind(o,o.iterator) : o.iterator; }
var $_, $fid = 0;
function $bind(o,m) { if( m == null ) return null; if( m.__id__ == null ) m.__id__ = $fid++; var f; if( o.hx__closures__ == null ) o.hx__closures__ = {}; else f = o.hx__closures__[m.__id__]; if( f == null ) { f = function(){ return f.method.apply(f.scope, arguments); }; f.scope = o; f.method = m; o.hx__closures__[m.__id__] = f; } return f; }
var q = window.jQuery;
var js = js || {}
js.JQuery = q;
browser_$tools_Http.counter_jsonp = 0;
browser_$tools_Main.main();
})(typeof console != "undefined" ? console : {log:function(){}});
