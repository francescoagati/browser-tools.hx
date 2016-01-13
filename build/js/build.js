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
var browser_$tools_Assets = function() { };
browser_$tools_Assets.wait = function(n,cb) {
	setTimeout(cb,n);
};
var browser_$tools_Main = function() { };
browser_$tools_Main.__interfaces__ = [async_$tools_Async];
browser_$tools_Main.main = function() {
	var tmp;
	var __fn_tmp_30870074_8597078137_7447be213b06907ad158f9f03c6fedc3 = function(__return) {
		var assets = [];
		assets;
		var tmp1;
		var group = [];
		assets.push(group);
		tmp1 = group;
		var this1 = tmp1;
		this1.push("https://cdnjs.cloudflare.com/ajax/libs/sass.js/0.9.4/sass.sync.min.js");
		this1;
		var assets1 = assets;
		var __return1 = function() {
			var __afterVar_37 = function(css) {
				css;
				console.log(css);
				__return();
			};
			var cb = function(__parameter_38) {
				__afterVar_37(__parameter_38);
			};
			Sass.compile("$someVar: 123px; .some-selector { width: $someVar; }",function(result) {
				cb(result);
			});
		};
		var __iterator = 0;
		var __doCount = 0;
		var tmp2;
		var __continue_241 = null;
		__continue_241 = function() {
			if(__iterator < assets1.length) {
				if(__doCount++ == 0) while(true) {
					var group1 = assets1[__iterator++];
					group1;
					var __afterVar_27 = [(function() {
						return function(grr) {
							grr;
							__continue_241();
						};
					})()];
					var group2 = group1;
					var __return2 = [(function(__afterVar_27) {
						return function(__parameter_28) {
							__afterVar_27[0](__parameter_28);
						};
					})(__afterVar_27)];
					var __afterVar_21 = [(function(__return2) {
						return function(assets2) {
							assets2;
							browser_$tools_Assets.wait(1,(function(__return2) {
								return function(__parameter_23) {
									__parameter_23;
									__return2[0](assets2);
								};
							})(__return2));
						};
					})(__return2)];
					var __iterator1 = 0;
					if(__iterator1 < group2.length) {
						var __results = [[]];
						var __counter = [1];
						var __i = 0;
						var __checkCounter = [(function(__counter,__results,__afterVar_21) {
							return function() {
								if(--__counter[0] == 0) __afterVar_21[0](__results[0]);
							};
						})(__counter,__results,__afterVar_21)];
						while(true) {
							var asset = [group2[__iterator1++]];
							var __index = [__i];
							__counter[0]++;
							var file = [asset[0]];
							var __return3 = [(function(__index,asset,__checkCounter,__results) {
								return function(__parameter_22) {
									__parameter_22;
									__results[0][__index[0]] = asset[0];
									__checkCounter[0]();
								};
							})(__index,asset,__checkCounter,__results)];
							var __endIf_1 = [(function(__return3,file) {
								return function() {
									__return3[0](file[0]);
									return;
								};
							})(__return3,file)];
							if(file[0].indexOf(".css") > 0) {
								var tmp3;
								var _this = window.document;
								tmp3 = _this.createElement("link");
								var link = tmp3;
								link.rel = "stylesheet";
								link.href = file[0];
								window.document.body.appendChild(link);
								browser_$tools_Assets.wait(0,(function(__endIf_1) {
									return function(__parameter_18) {
										__parameter_18;
										__endIf_1[0]();
									};
								})(__endIf_1));
							} else {
								var tmp4;
								var _this1 = window.document;
								tmp4 = _this1.createElement("script");
								var script = tmp4;
								script.async = true;
								script.src = file[0];
								script.type = "text/javascript";
								script.onreadystatechange = (function(__endIf_1) {
									return function(__parameter_19) {
										__parameter_19;
										browser_$tools_Assets.wait(0,(function(__endIf_1) {
											return function(__parameter_20) {
												__parameter_20;
												__endIf_1[0]();
											};
										})(__endIf_1));
									};
								})(__endIf_1);
								script.onload = (function(__endIf_1) {
									return function(__parameter_19) {
										__parameter_19;
										browser_$tools_Assets.wait(0,(function(__endIf_1) {
											return function(__parameter_20) {
												__parameter_20;
												__endIf_1[0]();
											};
										})(__endIf_1));
									};
								})(__endIf_1);
								window.document.body.appendChild(script);
							}
							__i++;
							if(!(__iterator1 < group2.length)) break;
						}
						__checkCounter[0]();
					}
					if(!(--__doCount != 0)) break;
				}
			} else __return1();
		};
		tmp2 = __continue_241;
		var __continue_24 = tmp2;
		__continue_24();
	};
	tmp = __fn_tmp_30870074_8597078137_7447be213b06907ad158f9f03c6fedc3;
	tmp(function() {
	});
};
function $iterator(o) { if( o instanceof Array ) return function() { return HxOverrides.iter(o); }; return typeof(o.iterator) == 'function' ? $bind(o,o.iterator) : o.iterator; }
var $_, $fid = 0;
function $bind(o,m) { if( m == null ) return null; if( m.__id__ == null ) m.__id__ = $fid++; var f; if( o.hx__closures__ == null ) o.hx__closures__ = {}; else f = o.hx__closures__[m.__id__]; if( f == null ) { f = function(){ return f.method.apply(f.scope, arguments); }; f.scope = o; f.method = m; o.hx__closures__[m.__id__] = f; } return f; }
var q = window.jQuery;
var js = js || {}
js.JQuery = q;
browser_$tools_Main.main();
})(typeof console != "undefined" ? console : {log:function(){}});
