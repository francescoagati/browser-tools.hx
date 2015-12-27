(function (console) { "use strict";
var $estr = function() { return js_Boot.__string_rec(this,''); };
Math.__name__ = true;
var async_$tools_Async = function() { };
async_$tools_Async.__name__ = true;
var browser_$tools_Main = function() { };
browser_$tools_Main.__name__ = true;
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
		{
			var _g = browser_$tools_events_SelectorType.Id("pippa");
			switch(_g[1]) {
			case 0:
				var id = _g[2];
				if(target.id == id) console.log(target.id);
				break;
			case 1:
				var tag = _g[2];
				if(target.nodeName == tag) console.log(target.id);
				break;
			case 3:
				var cls = _g[2];
				if(target.classList.contains(cls)) console.log(target.id);
				break;
			case 2:
				var path = _g[2];
				var check1 = browser_$tools_events_Mapper.check_query(target,path);
				if(check1) console.log(target.id);
				break;
			}
		}
		{
			var _g1 = browser_$tools_events_SelectorType.Query("#pippa");
			switch(_g1[1]) {
			case 0:
				var id1 = _g1[2];
				if(target.id == id1) console.log(target.id);
				break;
			case 1:
				var tag1 = _g1[2];
				if(target.nodeName == tag1) console.log(target.id);
				break;
			case 3:
				var cls1 = _g1[2];
				if(target.classList.contains(cls1)) console.log(target.id);
				break;
			case 2:
				var path1 = _g1[2];
				var check2 = browser_$tools_events_Mapper.check_query(target,path1);
				if(check2) console.log(target.id);
				break;
			}
		}
		{
			var _g2 = browser_$tools_events_SelectorType.Cls("animated");
			switch(_g2[1]) {
			case 0:
				var id2 = _g2[2];
				if(target.id == id2) console.log(target.id);
				break;
			case 1:
				var tag2 = _g2[2];
				if(target.nodeName == tag2) console.log(target.id);
				break;
			case 3:
				var cls2 = _g2[2];
				if(target.classList.contains(cls2)) console.log(target.id);
				break;
			case 2:
				var path2 = _g2[2];
				var check3 = browser_$tools_events_Mapper.check_query(target,path2);
				if(check3) console.log(target.id);
				break;
			}
		}
		{
			var _g3 = browser_$tools_events_SelectorType.Tag("div");
			switch(_g3[1]) {
			case 0:
				var id3 = _g3[2];
				if(target.id == id3) console.log(target.id);
				break;
			case 1:
				var tag3 = _g3[2];
				if(target.nodeName == tag3) console.log(target.id);
				break;
			case 3:
				var cls3 = _g3[2];
				if(target.classList.contains(cls3)) console.log(target.id);
				break;
			case 2:
				var path3 = _g3[2];
				var check4 = browser_$tools_events_Mapper.check_query(target,path3);
				if(check4) console.log(target.id);
				break;
			}
		}
	});
	this1;
};
var browser_$tools_events_SelectorType = { __ename__ : true, __constructs__ : ["Id","Tag","Query","Cls"] };
browser_$tools_events_SelectorType.Id = function(id) { var $x = ["Id",0,id]; $x.__enum__ = browser_$tools_events_SelectorType; $x.toString = $estr; return $x; };
browser_$tools_events_SelectorType.Tag = function(tag) { var $x = ["Tag",1,tag]; $x.__enum__ = browser_$tools_events_SelectorType; $x.toString = $estr; return $x; };
browser_$tools_events_SelectorType.Query = function(path) { var $x = ["Query",2,path]; $x.__enum__ = browser_$tools_events_SelectorType; $x.toString = $estr; return $x; };
browser_$tools_events_SelectorType.Cls = function(cls) { var $x = ["Cls",3,cls]; $x.__enum__ = browser_$tools_events_SelectorType; $x.toString = $estr; return $x; };
var browser_$tools_events_Mapper = function() { };
browser_$tools_events_Mapper.__name__ = true;
browser_$tools_events_Mapper.check_query = function(element,query) {
	var matchesSelector = $element.webkitMatchesSelector || $element.mozMatchesSelector || $element.oMatchesSelector || $element.matchesSelector;
	return matchesSelector.call(element,query);
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
String.__name__ = true;
Array.__name__ = true;
var q = window.jQuery;
var js = js || {}
js.JQuery = q;
browser_$tools_Main.main();
})(typeof console != "undefined" ? console : {log:function(){}});
