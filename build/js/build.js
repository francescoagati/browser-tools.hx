(function (console, $hx_exports) { "use strict";
$hx_exports.browser_tools = $hx_exports.browser_tools || {};
$hx_exports.browser_tools.transaction_check = $hx_exports.browser_tools.transaction_check || {};
var HxOverrides = function() { };
HxOverrides.__name__ = true;
HxOverrides.iter = function(a) {
	return { cur : 0, arr : a, hasNext : function() {
		return this.cur < this.arr.length;
	}, next : function() {
		return this.arr[this.cur++];
	}};
};
Math.__name__ = true;
var async_$tools_Async = function() { };
async_$tools_Async.__name__ = true;
var browser_$tools_Main = function() { };
browser_$tools_Main.__name__ = true;
browser_$tools_Main.__interfaces__ = [async_$tools_Async];
browser_$tools_Main.main = function() {
	var container = null;
	var __return = function(check) {
		js_Browser.alert(check);
	};
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
		var __endIf_1 = function() {
			container.appendChild(div1);
			setTimeout(function() {
				var __afterVar_19 = function(check1) {
					check1;
					var element = window.document.getElementById("check_animation_one");
					if($bind(element,element.remove) == null) element.parentNode.removeChild(element); else element.remove();
					element;
					var element1 = window.document.getElementById("check_animation_two");
					if($bind(element1,element1.remove) == null) element1.parentNode.removeChild(element1); else element1.remove();
					element1;
					__return(check1);
				};
				var __return1 = function(__parameter_20) {
					__afterVar_19(__parameter_20);
				};
				var check2 = window.document.getElementById("check_animation_one");
				check2;
				var last = check2.getBoundingClientRect().left;
				last;
				setTimeout(function() {
					var now = check2.getBoundingClientRect().left;
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
			__endIf_1();
		} else __endIf_1();
	},20);
};
var browser_$tools_transaction_$check = function() { };
browser_$tools_transaction_$check.__name__ = true;
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
		var __endIf_1 = function() {
			container.appendChild(div1);
			setTimeout(function() {
				var __afterVar_19 = function(check) {
					check;
					var element = window.document.getElementById("check_animation_one");
					if($bind(element,element.remove) == null) element.parentNode.removeChild(element); else element.remove();
					element;
					var element1 = window.document.getElementById("check_animation_two");
					if($bind(element1,element1.remove) == null) element1.parentNode.removeChild(element1); else element1.remove();
					element1;
					__return(check);
				};
				var __return1 = function(__parameter_20) {
					__afterVar_19(__parameter_20);
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
			__endIf_1();
		} else __endIf_1();
	},20);
};
var js_Boot = function() { };
js_Boot.__name__ = true;
js_Boot.__string_rec = function(o,s) {
	if(o == null) return "null";
	if(s.length >= 5) return "<...>";
	var t = typeof(o);
	if(t == "function" && (o.__name__ || o.__ename__)) t = "object";
	switch(t) {
	case "object":
		if(o instanceof Array) {
			if(o.__enum__) {
				if(o.length == 2) return o[0];
				var str2 = o[0] + "(";
				s += "\t";
				var _g1 = 2;
				var _g = o.length;
				while(_g1 < _g) {
					var i1 = _g1++;
					if(i1 != 2) str2 += "," + js_Boot.__string_rec(o[i1],s); else str2 += js_Boot.__string_rec(o[i1],s);
				}
				return str2 + ")";
			}
			var l = o.length;
			var i;
			var str1 = "[";
			s += "\t";
			var _g2 = 0;
			while(_g2 < l) {
				var i2 = _g2++;
				str1 += (i2 > 0?",":"") + js_Boot.__string_rec(o[i2],s);
			}
			str1 += "]";
			return str1;
		}
		var tostr;
		try {
			tostr = o.toString;
		} catch( e ) {
			return "???";
		}
		if(tostr != null && tostr != Object.toString && typeof(tostr) == "function") {
			var s2 = o.toString();
			if(s2 != "[object Object]") return s2;
		}
		var k = null;
		var str = "{\n";
		s += "\t";
		var hasp = o.hasOwnProperty != null;
		for( var k in o ) {
		if(hasp && !o.hasOwnProperty(k)) {
			continue;
		}
		if(k == "prototype" || k == "__class__" || k == "__super__" || k == "__interfaces__" || k == "__properties__") {
			continue;
		}
		if(str.length != 2) str += ", \n";
		str += s + k + " : " + js_Boot.__string_rec(o[k],s);
		}
		s = s.substring(1);
		str += "\n" + s + "}";
		return str;
	case "function":
		return "<function>";
	case "string":
		return o;
	default:
		return String(o);
	}
};
var js_Browser = function() { };
js_Browser.__name__ = true;
js_Browser.alert = function(v) {
	window.alert(js_Boot.__string_rec(v,""));
};
function $iterator(o) { if( o instanceof Array ) return function() { return HxOverrides.iter(o); }; return typeof(o.iterator) == 'function' ? $bind(o,o.iterator) : o.iterator; }
var $_, $fid = 0;
function $bind(o,m) { if( m == null ) return null; if( m.__id__ == null ) m.__id__ = $fid++; var f; if( o.hx__closures__ == null ) o.hx__closures__ = {}; else f = o.hx__closures__[m.__id__]; if( f == null ) { f = function(){ return f.method.apply(f.scope, arguments); }; f.scope = o; f.method = m; o.hx__closures__[m.__id__] = f; } return f; }
String.__name__ = true;
Array.__name__ = true;
var q = window.jQuery;
var js = js || {}
js.JQuery = q;
browser_$tools_Main.main();
})(typeof console != "undefined" ? console : {log:function(){}}, typeof window != "undefined" ? window : exports);
