(function (console, $hx_exports) { "use strict";
$hx_exports.transaction_check = $hx_exports.transaction_check || {};
var Test = function() { };
Test.main = function() {
};
var async_$tools_Async = function() { };
var transaction_$check = function() { };
transaction_$check.__interfaces__ = [async_$tools_Async];
transaction_$check.check_for_animations = $hx_exports.transaction_check.check_for_animations = function(container,__return) {
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
				var __afterVar_5 = function(check) {
					check;
					var element = window.document.getElementById("check_animation_one");
					if($bind(element,element.remove) == null) element.parentNode.removeChild(element); else element.remove();
					element;
					var element1 = window.document.getElementById("check_animation_two");
					if($bind(element1,element1.remove) == null) element1.parentNode.removeChild(element1); else element1.remove();
					element1;
					__return(check);
				};
				var __return1 = function(__parameter_6) {
					__afterVar_5(__parameter_6);
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
