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
browser_$tools_Main.animate = function(__return) {
	var el = window.document.getElementById("animation");
	el;
	el.style.setProperty("-ms-transition","all 2s");
	el.style.setProperty("-webkit-transition","all 2s");
	el.style.setProperty("-moz-transition","all 2s");
	el.style.setProperty("transition","all 2s");
	window.requestAnimationFrame(function(i) {
		el.style.setProperty("-ms-transform","translateX(-100px)");
		el.style.setProperty("-webkit-transform","translateX(-100px)");
		el.style.setProperty("-moz-transform","translateX(-100px)");
		el.style.setProperty("transform","translateX(-100px)");
	});
	var element = el;
	var cb2 = function() {
		window.requestAnimationFrame(function(i1) {
			el.style.setProperty("-ms-transform","translateX(0px)");
			el.style.setProperty("-webkit-transform","translateX(0px)");
			el.style.setProperty("-moz-transform","translateX(0px)");
			el.style.setProperty("transform","translateX(0px)");
		});
		var element1 = el;
		var cb1 = function() {
			window.requestAnimationFrame(function(i2) {
				el.style.setProperty("-ms-transform","translateY(100px)");
				el.style.setProperty("-webkit-transform","translateY(100px)");
				el.style.setProperty("-moz-transform","translateY(100px)");
				el.style.setProperty("transform","translateY(100px)");
			});
			var element2 = el;
			var cb = function() {
				var y = '500px';
				y;
				window.requestAnimationFrame(function(i3) {
					el.style.setProperty("-ms-transform","translate(" + "500px" + "," + y + ")");
					el.style.setProperty("-webkit-transform","translate(" + "500px" + "," + y + ")");
					el.style.setProperty("-moz-transform","translate(" + "500px" + "," + y + ")");
					el.style.setProperty("transform","translate(" + "500px" + "," + y + ")");
				});
				__return();
			};
			var handler1 = (function($this) {
				var $r;
				var handler = null;
				handler = function(e) {
					cb();
					var this1 = element2;
					this1.removeEventListener("transitionend",handler);
					this1;
				};
				$r = handler;
				return $r;
			}(this));
			var this2 = element2;
			this2.addEventListener("transitionend",handler1);
			this2;
		};
		var handler3 = (function($this) {
			var $r;
			var handler2 = null;
			handler2 = function(e1) {
				cb1();
				var this3 = element1;
				this3.removeEventListener("transitionend",handler2);
				this3;
			};
			$r = handler2;
			return $r;
		}(this));
		var this4 = element1;
		this4.addEventListener("transitionend",handler3);
		this4;
	};
	var handler5 = (function($this) {
		var $r;
		var handler4 = null;
		handler4 = function(e2) {
			cb2();
			var this5 = element;
			this5.removeEventListener("transitionend",handler4);
			this5;
		};
		$r = handler4;
		return $r;
	}(this));
	var this6 = element;
	this6.addEventListener("transitionend",handler5);
	this6;
};
browser_$tools_Main.main = function() {
	browser_$tools_Main.animate(function() {
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
