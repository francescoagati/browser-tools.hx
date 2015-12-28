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
var browser_$tools_Main = function() { };
browser_$tools_Main.__interfaces__ = [async_$tools_Async];
browser_$tools_Main.main = function() {
	var handler_event = function(e) {
		console.log(e);
	};
	var element = window.document.getElementById("pippa");
	element.addEventListener("click",handler_event);
	element.addEventListener("doubleclick",handler_event);
	element.addEventListener("mouseover",handler_event);
	element.addEventListener("mouseout",handler_event);
	var handler_event1 = function(e1) {
		console.log(e1);
	};
	var element1 = window.document.getElementById("pippa");
	element1.addEventListener("click",handler_event1);
	element1.addEventListener("doubleclick",handler_event1);
	element1.addEventListener("mouseover",handler_event1);
	element1.addEventListener("mouseout",handler_event1);
	var handler_event2 = function(e2) {
		console.log(e2);
	};
	var elements = window.document.body.getElementsByClassName("animated");
	var _g = 0;
	while(_g < elements.length) {
		var element2 = elements[_g];
		++_g;
		element2.addEventListener("click",handler_event2);
		element2.addEventListener("doubleclick",handler_event2);
		element2.addEventListener("mouseover",handler_event2);
		element2.addEventListener("mouseout",handler_event2);
	}
	var handler_event3 = function(e3) {
		console.log(e3);
	};
	var elements1 = window.document.getElementById("pippa").getElementsByClassName("animated");
	var _g1 = 0;
	while(_g1 < elements1.length) {
		var element3 = elements1[_g1];
		++_g1;
		element3.addEventListener("click",handler_event3);
		element3.addEventListener("doubleclick",handler_event3);
		element3.addEventListener("mouseover",handler_event3);
		element3.addEventListener("mouseout",handler_event3);
	}
	var handler_event4 = function(e4) {
		console.log(e4);
	};
	var elements2 = window.document.body.getElementsByTagName("div");
	var _g2 = 0;
	while(_g2 < elements2.length) {
		var element4 = elements2[_g2];
		++_g2;
		element4.addEventListener("click",handler_event4);
		element4.addEventListener("doubleclick",handler_event4);
		element4.addEventListener("mouseover",handler_event4);
		element4.addEventListener("mouseout",handler_event4);
	}
	var handler_event5 = function(e5) {
		console.log(e5);
	};
	var elements3 = window.document.getElementById("pippa").getElementsByTagName("div");
	var _g3 = 0;
	while(_g3 < elements3.length) {
		var element5 = elements3[_g3];
		++_g3;
		element5.addEventListener("click",handler_event5);
		element5.addEventListener("doubleclick",handler_event5);
		element5.addEventListener("mouseover",handler_event5);
		element5.addEventListener("mouseout",handler_event5);
	}
	var handler_event6 = function(e6) {
		console.log(e6);
	};
	var element6 = window.document.body.querySelector("#foo.bar");
	element6.addEventListener("click",handler_event6);
	element6.addEventListener("doubleclick",handler_event6);
	element6.addEventListener("mouseover",handler_event6);
	element6.addEventListener("mouseout",handler_event6);
	element6.addEventListener("",handler_event6);
	var handler_event7 = function(e7) {
		console.log(e7);
	};
	var element7 = window.document.getElementById("pippa").querySelector("#foo.bar");
	element7.addEventListener("click",handler_event7);
	element7.addEventListener("doubleclick",handler_event7);
	element7.addEventListener("mouseover",handler_event7);
	element7.addEventListener("mouseout",handler_event7);
	element7.addEventListener("",handler_event7);
	var handler_event8 = function(e8) {
		console.log(e8);
	};
	var elements4 = window.document.body.querySelectorAll("#foo.bar");
	var _g4 = 0;
	while(_g4 < elements4.length) {
		var element8 = elements4[_g4];
		++_g4;
		element8.addEventListener("click",handler_event8);
		element8.addEventListener("doubleclick",handler_event8);
		element8.addEventListener("mouseover",handler_event8);
		element8.addEventListener("mouseout",handler_event8);
		element8.addEventListener("",handler_event8);
	}
	var handler_event9 = function(e9) {
		console.log(e9);
	};
	var elements5 = window.document.getElementById("pippa").querySelectorAll("#foo.bar");
	var _g5 = 0;
	while(_g5 < elements5.length) {
		var element9 = elements5[_g5];
		++_g5;
		element9.addEventListener("click",handler_event9);
		element9.addEventListener("doubleclick",handler_event9);
		element9.addEventListener("mouseover",handler_event9);
		element9.addEventListener("mouseout",handler_event9);
		element9.addEventListener("",handler_event9);
	}
};
function $iterator(o) { if( o instanceof Array ) return function() { return HxOverrides.iter(o); }; return typeof(o.iterator) == 'function' ? $bind(o,o.iterator) : o.iterator; }
var $_, $fid = 0;
function $bind(o,m) { if( m == null ) return null; if( m.__id__ == null ) m.__id__ = $fid++; var f; if( o.hx__closures__ == null ) o.hx__closures__ = {}; else f = o.hx__closures__[m.__id__]; if( f == null ) { f = function(){ return f.method.apply(f.scope, arguments); }; f.scope = o; f.method = m; o.hx__closures__[m.__id__] = f; } return f; }
var q = window.jQuery;
var js = js || {}
js.JQuery = q;
browser_$tools_Main.main();
})(typeof console != "undefined" ? console : {log:function(){}});
