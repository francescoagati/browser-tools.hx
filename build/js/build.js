(function (console) { "use strict";
var async_$tools_Async = function() { };
var browser_$tools_Main = function() { };
browser_$tools_Main.__interfaces__ = [async_$tools_Async];
browser_$tools_Main.main = function() {
	var tmp;
	var tmp1;
	var this3 = window.document.getElementById("player");
	tmp1 = this3;
	var this2 = tmp1;
	tmp = this2;
	var this1 = tmp;
	this1.addEventListener("click",function(e) {
		var target = e.currentTarget;
		if(target.id == "pippa") console.log(target);
		if(target.nodeName == "div") console.log(target.nodeName);
		if(target.classList.contains("player")) console.log(target.className);
		var check = browser_$tools_events_Mapper.check_query(target,"#pippa");
		if(check) console.log(target.id);
	});
	this1;
};
var browser_$tools_events_Mapper = function() { };
browser_$tools_events_Mapper.check_query = function(element,query) {
	var matchesSelector = $element.webkitMatchesSelector || $element.mozMatchesSelector || $element.oMatchesSelector || $element.matchesSelector;
	return matchesSelector.call(element,query);
};
var q = window.jQuery;
var js = js || {}
js.JQuery = q;
browser_$tools_Main.main();
})(typeof console != "undefined" ? console : {log:function(){}});
