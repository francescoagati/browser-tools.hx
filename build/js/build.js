(function (console) { "use strict";
var $estr = function() { return js_Boot.__string_rec(this,''); };
Math.__name__ = true;
var async_$tools_Async = function() { };
async_$tools_Async.__name__ = true;
var browser_$tools_Main = function() { };
browser_$tools_Main.__name__ = true;
browser_$tools_Main.__interfaces__ = [async_$tools_Async];
browser_$tools_Main.main = function() {
	var values = [];
	var tmp;
	var tmp1;
	var this3 = window.document.getElementById("player");
	tmp1 = this3;
	var this2 = tmp1;
	tmp = this2;
	var this1 = tmp;
	this1.addEventListener("click",function(event1) {
		browser_$tools_Main.test_prop = event1.target.value;
	});
	this1;
	var tmp2;
	var tmp3;
	var this6 = window.document.getElementById("player");
	tmp3 = this6;
	var this5 = tmp3;
	tmp2 = this5;
	var this4 = tmp2;
	this4.addEventListener("click",function(event2) {
		browser_$tools_Main.test_prop = event2.target.value;
	});
	this4;
	var tmp4;
	var tmp5;
	var this9 = window.document.getElementById("player");
	tmp5 = this9;
	var this8 = tmp5;
	tmp4 = this8;
	var this7 = tmp4;
	this7.addEventListener("click",function(event3) {
		values.push(event3.target.value);
	});
	this7;
	var tmp6;
	var tmp7;
	var this12 = window.document.getElementById("player");
	tmp7 = this12;
	var this11 = tmp7;
	tmp6 = this11;
	var this10 = tmp6;
	this10.addEventListener("click",function(event4) {
		values.push(event4.target.value);
	});
	this10;
	var tmp8;
	var tmp9;
	var this15 = window.document.getElementById("player");
	tmp9 = this15;
	var this14 = tmp9;
	tmp8 = this14;
	var this13 = tmp8;
	this13.addEventListener("click",function(e) {
		var target = e.currentTarget;
		var delegate = null;
		{
			var _g = browser_$tools_events_SelectorType.tag("div");
			switch(_g[1]) {
			case 0:
				var id = _g[2];
				delegate = window.document.getElementById(id);
				break;
			case 1:
				var tag = _g[2];
				var tags = target.getElementsByTagName(tag);
				if(tags[0] != null) delegate = tags[0];
				break;
			case 3:
				var cls = _g[2];
				var tags1 = target.getElementsByClassName(cls);
				if(tags1[0] != null) delegate = tags1[0];
				break;
			case 2:
				var path = _g[2];
				var tag1 = target.querySelector(path);
				if(tag1 != null) delegate = tag1;
				break;
			}
		}
		if(delegate != null) console.log(delegate);
		var delegate1 = null;
		{
			var _g1 = browser_$tools_events_SelectorType.cls("player");
			switch(_g1[1]) {
			case 0:
				var id1 = _g1[2];
				delegate1 = window.document.getElementById(id1);
				break;
			case 1:
				var tag2 = _g1[2];
				var tags2 = target.getElementsByTagName(tag2);
				if(tags2[0] != null) delegate1 = tags2[0];
				break;
			case 3:
				var cls1 = _g1[2];
				var tags3 = target.getElementsByClassName(cls1);
				if(tags3[0] != null) delegate1 = tags3[0];
				break;
			case 2:
				var path1 = _g1[2];
				var tag3 = target.querySelector(path1);
				if(tag3 != null) delegate1 = tag3;
				break;
			}
		}
		if(delegate1 != null) console.log(delegate1);
		var delegate2 = null;
		{
			var _g2 = browser_$tools_events_SelectorType.query(".player");
			switch(_g2[1]) {
			case 0:
				var id2 = _g2[2];
				delegate2 = window.document.getElementById(id2);
				break;
			case 1:
				var tag4 = _g2[2];
				var tags4 = target.getElementsByTagName(tag4);
				if(tags4[0] != null) delegate2 = tags4[0];
				break;
			case 3:
				var cls2 = _g2[2];
				var tags5 = target.getElementsByClassName(cls2);
				if(tags5[0] != null) delegate2 = tags5[0];
				break;
			case 2:
				var path2 = _g2[2];
				var tag5 = target.querySelector(path2);
				if(tag5 != null) delegate2 = tag5;
				break;
			}
		}
		if(delegate2 != null) console.log(delegate2);
	});
	this13;
	var fn = function(event) {
		browser_$tools_Main.test_prop = event.target.value;
	};
	console.log(fn);
};
var browser_$tools_events_SelectorType = { __ename__ : true, __constructs__ : ["id","tag","query","cls"] };
browser_$tools_events_SelectorType.id = function(id) { var $x = ["id",0,id]; $x.__enum__ = browser_$tools_events_SelectorType; $x.toString = $estr; return $x; };
browser_$tools_events_SelectorType.tag = function(tag) { var $x = ["tag",1,tag]; $x.__enum__ = browser_$tools_events_SelectorType; $x.toString = $estr; return $x; };
browser_$tools_events_SelectorType.query = function(path) { var $x = ["query",2,path]; $x.__enum__ = browser_$tools_events_SelectorType; $x.toString = $estr; return $x; };
browser_$tools_events_SelectorType.cls = function(cls) { var $x = ["cls",3,cls]; $x.__enum__ = browser_$tools_events_SelectorType; $x.toString = $estr; return $x; };
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
