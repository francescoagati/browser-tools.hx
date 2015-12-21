(function (console, $hx_exports) { "use strict";
$hx_exports.browser_tools = $hx_exports.browser_tools || {};
$hx_exports.browser_tools.transaction_check = $hx_exports.browser_tools.transaction_check || {};
var Test = function() { };
Test.main = function() {
	var tmp;
	var element = window.document.getElementById("animation");
	tmp = element;
	var container = tmp;
	var tmp1;
	var __fn_tmp_76177975_1110774428_e2539cd8f2184dfd69bf1b5cebad85c4 = function(__return) {
		var __doCount = 0;
		var tmp2;
		var __continue_111 = null;
		__continue_111 = function() {
			if(__doCount++ == 0) while(true) {
				var __afterVar_13 = [(function() {
					return function(rt) {
						rt;
						var this1 = window.document.getElementById("log");
						this1.innerHTML = "" + (rt == null?"null":"" + rt);
						setTimeout((function() {
							return function() {
								__continue_111();
							};
						})(),500);
					};
				})()];
				var element1 = [container];
				var prop = ["left"];
				var __return1 = [(function(__afterVar_13) {
					return function(__parameter_14) {
						__afterVar_13[0](__parameter_14);
					};
				})(__afterVar_13)];
				var __afterVar_0 = [(function(__return1,prop,element1) {
					return function(last) {
						last;
						setTimeout((function(__return1,prop,element1) {
							return function() {
								var __afterVar_2 = (function(__return1) {
									return function(now) {
										now;
										setTimeout((function(__return1) {
											return function() {
												__return1[0](last - now != 0);
											};
										})(__return1),20);
									};
								})(__return1);
								var element2 = element1[0];
								var prop1 = prop[0];
								var cb = (function() {
									return function(__parameter_3) {
										__afterVar_2(__parameter_3);
									};
								})();
								window.requestAnimationFrame((function() {
									return function(i) {
										var prop2 = (function($this) {
											var $r;
											switch(prop1) {
											case "left":
												$r = element2.getBoundingClientRect().left;
												break;
											case "right":
												$r = element2.getBoundingClientRect().right;
												break;
											case "top":
												$r = element2.getBoundingClientRect().top;
												break;
											case "bottom":
												$r = element2.getBoundingClientRect().bottom;
												break;
											default:
												$r = null;
											}
											return $r;
										}(this));
										cb(prop2);
									};
								})());
							};
						})(__return1,prop,element1),300);
					};
				})(__return1,prop,element1)];
				var element3 = [element1[0]];
				var prop3 = [prop[0]];
				var cb1 = [(function(__afterVar_0) {
					return function(__parameter_1) {
						__afterVar_0[0](__parameter_1);
					};
				})(__afterVar_0)];
				window.requestAnimationFrame((function(cb1,prop3,element3) {
					return function(i1) {
						var tmp3;
						switch(prop3[0]) {
						case "left":
							tmp3 = element3[0].getBoundingClientRect().left;
							break;
						case "right":
							tmp3 = element3[0].getBoundingClientRect().right;
							break;
						case "top":
							tmp3 = element3[0].getBoundingClientRect().top;
							break;
						case "bottom":
							tmp3 = element3[0].getBoundingClientRect().bottom;
							break;
						default:
							tmp3 = null;
						}
						var prop4 = tmp3;
						cb1[0](prop4);
					};
				})(cb1,prop3,element3));
				if(!(--__doCount != 0)) break;
			}
		};
		tmp2 = __continue_111;
		var __continue_11 = tmp2;
		__continue_11();
	};
	tmp1 = __fn_tmp_76177975_1110774428_e2539cd8f2184dfd69bf1b5cebad85c4;
	tmp1(function() {
	});
};
var async_$tools_Async = function() { };
var browser_$tools_transaction_$check = function() { };
browser_$tools_transaction_$check.__interfaces__ = [async_$tools_Async];
browser_$tools_transaction_$check.check_for_animations = $hx_exports.browser_tools.transaction_check.check_for_animations = function(container,__return) {
	setTimeout(function() {
		var div1 = (function($this) {
			var $r;
			var fragment = window.document.createDocumentFragment();
			var div = window.document.createElement("div");
			div.innerHTML = "\n\n      <style>\n          @-webkit-keyframes wave {\n            from {\n              -webkit-transform: translateX(0);\n                      transform: translateX(0);\n            }\n            to {\n              -webkit-transform: translateX(100%);\n                      transform: translateX(100%);\n            }\n          }\n          @keyframes wave {\n            from {\n              -webkit-transform: translateX(0);\n                      transform: translateX(0);\n            }\n            to {\n              -webkit-transform: translateX(100%);\n                      transform: translateX(100%);\n            }\n          }\n          .check_animate {\n            -webkit-animation: wave 500ms ease alternate infinite;\n                    animation: wave 500ms ease alternate infinite;\n          }\n\n          div.check_animate {\n            width: 20px;\n            position:fixed;\n            bottom:0;\n            height: 2px;\n          }\n\n          #check_animation_one {\n            background-color: white;\n            -webkit-transform: translateZ(0);\n                    transform: translateZ(0);\n            will-change: transform;\n          }\n\n          #check_animation_two {\n            background-color: #ececec;\n          }\n      </style>\n\n\n      <div id=\"check_animation_one\" class=\"check_animate\"></div>\n      <div id=\"check_animation_two\" class=\"check_animate\"></div>\n\n    ";
			$r = div;
			return $r;
		}(this));
		div1;
		var __endIf_0 = function() {
			container.appendChild(div1);
			setTimeout(function() {
				var __afterVar_9 = function(check) {
					check;
					var element = window.document.getElementById("check_animation_one");
					if($bind(element,element.remove) == null) element.parentNode.removeChild(element); else element.remove();
					element;
					var element1 = window.document.getElementById("check_animation_two");
					if($bind(element1,element1.remove) == null) element1.parentNode.removeChild(element1); else element1.remove();
					element1;
					__return(check);
				};
				var __return1 = function(__parameter_10) {
					__afterVar_9(__parameter_10);
				};
				var check1 = window.document.getElementById("check_animation_one");
				check1;
				var last = check1.getBoundingClientRect().left;
				last;
				setTimeout(function() {
					var now = check1.getBoundingClientRect().left;
					now;
					setTimeout(function() {
						__return1([last - now != 0,last - now]);
					},50);
				},300);
			},20);
			return;
		};
		if(container == null) {
			container = window.document.body;
			__endIf_0();
		} else __endIf_0();
	},20);
};
var $_, $fid = 0;
function $bind(o,m) { if( m == null ) return null; if( m.__id__ == null ) m.__id__ = $fid++; var f; if( o.hx__closures__ == null ) o.hx__closures__ = {}; else f = o.hx__closures__[m.__id__]; if( f == null ) { f = function(){ return f.method.apply(f.scope, arguments); }; f.scope = o; f.method = m; o.hx__closures__[m.__id__] = f; } return f; }
var q = window.jQuery;
var js = js || {}
js.JQuery = q;
Test.main();
})(typeof console != "undefined" ? console : {log:function(){}}, typeof window != "undefined" ? window : exports);
