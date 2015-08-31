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
		var fn_name = "_jsonp_" + browser_$tools_Http.counter_jsonp++;
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
	});
};
var q = window.jQuery;
var js = js || {}
js.JQuery = q;
browser_$tools_Http.counter_jsonp = 0;
browser_$tools_Main.main();
})(typeof console != "undefined" ? console : {log:function(){}});
