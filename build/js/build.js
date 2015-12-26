(function (console) { "use strict";
var async_$tools_Async = function() { };
var browser_$tools_Main = function() { };
browser_$tools_Main.__interfaces__ = [async_$tools_Async];
browser_$tools_Main.main = function() {
	var this3 = (function($this) {
		var $r;
		var this2 = (function($this) {
			var $r;
			var this1 = window.document.getElementById("player");
			$r = this1;
			return $r;
		}($this));
		$r = this2;
		return $r;
	}(this));
	this3.addEventListener("click",function(e) {
		var target = e.currentTarget;
		if(target.id == "pippa") console.log(target);
		if(target.nodeName == "div") console.log(target.nodeName);
		if(target.classList.contains("player")) console.log(target.className);
		var check = (function($this) {
			var $r;
			var matchesSelector = target.webkitMatchesSelector || target.mozMatchesSelector || target.oMatchesSelector || target.matchesSelector;
			$r = matchesSelector.call(target,"#pippa");
			return $r;
		}(this));
		if(check) console.log(target.id);
	});
	this3;
};
var q = window.jQuery;
var js = js || {}
js.JQuery = q;
browser_$tools_Main.main();
})(typeof console != "undefined" ? console : {log:function(){}});
