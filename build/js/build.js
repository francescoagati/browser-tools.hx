(function (console) { "use strict";
var HxOverrides = function() { };
HxOverrides.iter = function(a) {
	return { cur : 0, arr : a, hasNext : function() {
		return this.cur < this.arr.length;
	}, next : function() {
		return this.arr[this.cur++];
	}};
};
var Std = function() { };
Std.random = function(x) {
	return x <= 0?0:Math.floor(Math.random() * x);
};
var async_$tools_Async = function() { };
var browser_$tools_Main = function() { };
browser_$tools_Main.__interfaces__ = [async_$tools_Async];
browser_$tools_Main.main = function() {
	((function($this) {
		var $r;
		var __fn_tmp_12524769_6073171198_536cd81fe59c6f92dc62278900005c57 = function(__return) {
			var assets = [];
			assets;
			var this3 = (function($this) {
				var $r;
				var this2 = (function($this) {
					var $r;
					var this1 = (function($this) {
						var $r;
						var group = [];
						assets.push(group);
						$r = group;
						return $r;
					}($this));
					this1.push("test.png");
					$r = this1;
					return $r;
				}($this));
				this2.push("http://cdnjs.cloudflare.com/ajax/libs/d3/3.5.5/d3.min.js");
				$r = this2;
				return $r;
			}(this));
			this3.push("https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.8/angular.min.js");
			this3;
			var cb = function(__parameter_37) {
				__parameter_37;
				__return();
			};
			var paths = Array.prototype.concat.apply([],assets);
			var __return1 = function() {
				cb();
			};
			var __afterVar_15 = function(assets1) {
				assets1;
				__return1();
			};
			var __iterator = 0;
			if(__iterator < paths.length) {
				var __results = [];
				var __counter = 1;
				var __i = 0;
				var __checkCounter = function() {
					if(--__counter == 0) __afterVar_15(__results);
				};
				do {
					var path = [paths[__iterator++]];
					var __index = [__i];
					__counter++;
					var n = Std.random(30);
					setTimeout((function(__index,path) {
						return function() {
							var image = new Image();
							image.onload = (function(__index) {
								return function() {
									__results[__index[0]] = true;
									__checkCounter();
								};
							})(__index);
							image.src = path[0];
						};
					})(__index,path),n);
					__i++;
				} while(__iterator < paths.length);
				__checkCounter();
			}
		};
		$r = __fn_tmp_12524769_6073171198_536cd81fe59c6f92dc62278900005c57;
		return $r;
	}(this)))(function() {
	});
	var image1 = new Image();
	image1.src = "test.png";
	var image2 = new Image();
	image2.src = "https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.8/angular.min.js";
	var paths1 = ["https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.8/angular.min.js","test.png"];
	var __afterVar_151 = function(assets2) {
		assets2;
		thx_Functions.noop();
	};
	var __iterator1 = 0;
	if(__iterator1 < paths1.length) {
		var __results1 = [];
		var __counter1 = 1;
		var __i1 = 0;
		var __checkCounter1 = function() {
			if(--__counter1 == 0) __afterVar_151(__results1);
		};
		do {
			var path1 = [paths1[__iterator1++]];
			var __index1 = [__i1];
			__counter1++;
			var n1 = Std.random(30);
			setTimeout((function(__index1,path1) {
				return function() {
					var image3 = new Image();
					image3.onload = (function(__index1) {
						return function() {
							__results1[__index1[0]] = true;
							__checkCounter1();
						};
					})(__index1);
					image3.src = path1[0];
				};
			})(__index1,path1),n1);
			__i1++;
		} while(__iterator1 < paths1.length);
		__checkCounter1();
	}
	var handler_event = function(e) {
		var event = e;
		var target = e.currentTarget;
		var check = browser_$tools_events_Mapper.check_query(target,"#foo.bar");
		if(check) console.log(event);
	};
	var element = window.document.body;
	element.addEventListener("click",handler_event);
	element.addEventListener("doubleclick",handler_event);
	element.addEventListener("mouseover",handler_event);
	element.addEventListener("mouseout",handler_event);
	var handler_event1 = function(e1) {
		var event1 = e1;
		var target1 = e1.currentTarget;
		var check1 = browser_$tools_events_Mapper.check_query(target1,"#foo.bar");
		if(check1) console.log(event1);
	};
	var element1 = window.document.getElementById("pippa");
	element1.addEventListener("click",handler_event1);
	element1.addEventListener("doubleclick",handler_event1);
	element1.addEventListener("mouseover",handler_event1);
	element1.addEventListener("mouseout",handler_event1);
	var handler_event2 = function(e2) {
		var event2 = e2;
		var target2 = e2.currentTarget;
		if(target2.nodeName == "div") console.log(event2);
	};
	var element2 = window.document.body;
	element2.addEventListener("click",handler_event2);
	element2.addEventListener("doubleclick",handler_event2);
	element2.addEventListener("mouseover",handler_event2);
	element2.addEventListener("mouseout",handler_event2);
	var handler_event3 = function(e3) {
		var event3 = e3;
		var target3 = e3.currentTarget;
		if(target3.nodeName == "div") console.log(event3);
	};
	var element3 = window.document.getElementById("pippa");
	element3.addEventListener("click",handler_event3);
	element3.addEventListener("doubleclick",handler_event3);
	element3.addEventListener("mouseover",handler_event3);
	element3.addEventListener("mouseout",handler_event3);
	var handler_event4 = function(e4) {
		var event4 = e4;
		var target4 = e4.currentTarget;
		if(target4.id == "pippa") console.log(event4);
	};
	var element4 = window.document.body;
	element4.addEventListener("click",handler_event4);
	element4.addEventListener("doubleclick",handler_event4);
	element4.addEventListener("mouseover",handler_event4);
	element4.addEventListener("mouseout",handler_event4);
	var handler_event5 = function(e5) {
		var event5 = e5;
		var target5 = e5.currentTarget;
		if(target5.classList.contains("animated")) console.log(event5);
	};
	var element5 = window.document.body;
	element5.addEventListener("click",handler_event5);
	element5.addEventListener("doubleclick",handler_event5);
	element5.addEventListener("mouseover",handler_event5);
	element5.addEventListener("mouseout",handler_event5);
	var handler_event6 = function(e6) {
		var event6 = e6;
		var target6 = e6.currentTarget;
		if(target6.classList.contains("animated")) console.log(event6);
	};
	var element6 = window.document.getElementById("pippa");
	element6.addEventListener("click",handler_event6);
	element6.addEventListener("doubleclick",handler_event6);
	element6.addEventListener("mouseover",handler_event6);
	element6.addEventListener("mouseout",handler_event6);
	var handler_event7 = function(e7) {
		console.log(e7);
	};
	var element7 = window.document.getElementById("pippa");
	element7.addEventListener("click",handler_event7);
	element7.addEventListener("doubleclick",handler_event7);
	element7.addEventListener("mouseover",handler_event7);
	element7.addEventListener("mouseout",handler_event7);
	var handler_event8 = function(e8) {
		console.log(e8);
	};
	var element8 = window.document.getElementById("pippa");
	element8.addEventListener("click",handler_event8);
	element8.addEventListener("doubleclick",handler_event8);
	element8.addEventListener("mouseover",handler_event8);
	element8.addEventListener("mouseout",handler_event8);
	var handler_event9 = function(e9) {
		console.log(e9);
	};
	var elements = window.document.body.getElementsByClassName("animated");
	var _g = 0;
	while(_g < elements.length) {
		var element9 = elements[_g];
		++_g;
		element9.addEventListener("click",handler_event9);
		element9.addEventListener("doubleclick",handler_event9);
		element9.addEventListener("mouseover",handler_event9);
		element9.addEventListener("mouseout",handler_event9);
	}
	var handler_event10 = function(e10) {
		console.log(e10);
	};
	var elements1 = window.document.getElementById("pippa").getElementsByClassName("animated");
	var _g1 = 0;
	while(_g1 < elements1.length) {
		var element10 = elements1[_g1];
		++_g1;
		element10.addEventListener("click",handler_event10);
		element10.addEventListener("doubleclick",handler_event10);
		element10.addEventListener("mouseover",handler_event10);
		element10.addEventListener("mouseout",handler_event10);
	}
	var handler_event11 = function(e11) {
		console.log(e11);
	};
	var elements2 = window.document.body.getElementsByTagName("div");
	var _g2 = 0;
	while(_g2 < elements2.length) {
		var element11 = elements2[_g2];
		++_g2;
		element11.addEventListener("click",handler_event11);
		element11.addEventListener("doubleclick",handler_event11);
		element11.addEventListener("mouseover",handler_event11);
		element11.addEventListener("mouseout",handler_event11);
	}
	var handler_event12 = function(e12) {
		console.log(e12);
	};
	var elements3 = window.document.getElementById("pippa").getElementsByTagName("div");
	var _g3 = 0;
	while(_g3 < elements3.length) {
		var element12 = elements3[_g3];
		++_g3;
		element12.addEventListener("click",handler_event12);
		element12.addEventListener("doubleclick",handler_event12);
		element12.addEventListener("mouseover",handler_event12);
		element12.addEventListener("mouseout",handler_event12);
	}
	var handler_event13 = function(e13) {
		console.log(e13);
	};
	var element13 = window.document.body.querySelector("#foo.bar");
	element13.addEventListener("click",handler_event13);
	element13.addEventListener("doubleclick",handler_event13);
	element13.addEventListener("mouseover",handler_event13);
	element13.addEventListener("mouseout",handler_event13);
	var handler_event14 = function(e14) {
		console.log(e14);
	};
	var element14 = window.document.getElementById("pippa").querySelector("#foo.bar");
	element14.addEventListener("click",handler_event14);
	element14.addEventListener("doubleclick",handler_event14);
	element14.addEventListener("mouseover",handler_event14);
	element14.addEventListener("mouseout",handler_event14);
	var handler_event15 = function(e15) {
		console.log(e15);
	};
	var elements4 = window.document.body.querySelectorAll("#foo.bar");
	var _g4 = 0;
	while(_g4 < elements4.length) {
		var element15 = elements4[_g4];
		++_g4;
		element15.addEventListener("click",handler_event15);
		element15.addEventListener("doubleclick",handler_event15);
		element15.addEventListener("mouseover",handler_event15);
		element15.addEventListener("mouseout",handler_event15);
	}
	var handler_event16 = function(e16) {
		console.log(e16);
	};
	var elements5 = window.document.getElementById("pippa").querySelectorAll("#foo.bar");
	var _g5 = 0;
	while(_g5 < elements5.length) {
		var element16 = elements5[_g5];
		++_g5;
		element16.addEventListener("click",handler_event16);
		element16.addEventListener("doubleclick",handler_event16);
		element16.addEventListener("mouseover",handler_event16);
		element16.addEventListener("mouseout",handler_event16);
	}
};
var browser_$tools_events_Mapper = function() { };
browser_$tools_events_Mapper.check_query = function(element,query) {
	var matchesSelector = $element.webkitMatchesSelector || $element.mozMatchesSelector || $element.oMatchesSelector || $element.matchesSelector;
	return matchesSelector.call(element,query);
};
var thx_Functions = function() { };
thx_Functions.noop = function() {
};
function $iterator(o) { if( o instanceof Array ) return function() { return HxOverrides.iter(o); }; return typeof(o.iterator) == 'function' ? $bind(o,o.iterator) : o.iterator; }
var $_, $fid = 0;
function $bind(o,m) { if( m == null ) return null; if( m.__id__ == null ) m.__id__ = $fid++; var f; if( o.hx__closures__ == null ) o.hx__closures__ = {}; else f = o.hx__closures__[m.__id__]; if( f == null ) { f = function(){ return f.method.apply(f.scope, arguments); }; f.scope = o; f.method = m; o.hx__closures__[m.__id__] = f; } return f; }
var q = window.jQuery;
var js = js || {}
js.JQuery = q;
browser_$tools_Main.main();
})(typeof console != "undefined" ? console : {log:function(){}});
