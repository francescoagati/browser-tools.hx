(function (console) { "use strict";
var $estr = function() { return js_Boot.__string_rec(this,''); };
Math.__name__ = true;
var browser_$tools__$AElement_AElement_$Impl_$ = {};
browser_$tools__$AElement_AElement_$Impl_$.__name__ = true;
browser_$tools__$AElement_AElement_$Impl_$._new = function(el) {
	return el;
};
browser_$tools__$AElement_AElement_$Impl_$.fromString = function(s) {
	var node;
	var el;
	var _this = window.document;
	el = _this.createElement("div");
	node = el;
	node.innerHTML = s;
	return node;
};
browser_$tools__$AElement_AElement_$Impl_$.fromNode = function(node) {
	return node;
};
browser_$tools__$AElement_AElement_$Impl_$.fromJQuery = function(jQ) {
	var el = jQ.get(0);
	return el;
};
browser_$tools__$AElement_AElement_$Impl_$.show = function(this1) {
	this1.style.display = "inline-block";
};
browser_$tools__$AElement_AElement_$Impl_$.hide = function(this1) {
	this1.style.display = "none";
};
browser_$tools__$AElement_AElement_$Impl_$.setHTMLSTring = function(this1,s) {
	this1.innerHTML = s;
};
browser_$tools__$AElement_AElement_$Impl_$.setHTMLFromElement = function(this1,element) {
	this1.innerHTML = "";
	this1.appendChild(element);
};
browser_$tools__$AElement_AElement_$Impl_$.appendElementString = function(this1,s) {
	var node;
	var _this = window.document;
	node = _this.createElement("div");
	node.innerHTML = s;
	this1.appendChild(node);
};
browser_$tools__$AElement_AElement_$Impl_$.appendElement = function(this1,el) {
	this1.appendChild(el);
};
browser_$tools__$AElement_AElement_$Impl_$.prependElement = function(this1,el) {
	this1.insertBefore(el,this1.firstElementChild);
};
browser_$tools__$AElement_AElement_$Impl_$.prependElementString = function(this1,s) {
	var node = window.document.createDocumentFragment();
	node.textContent = s;
	this1.insertBefore(node,this1.firstElementChild);
};
browser_$tools__$AElement_AElement_$Impl_$.get = function(this1,key) {
	return this1.getAttribute(key);
};
browser_$tools__$AElement_AElement_$Impl_$.set = function(this1,key,value) {
	this1.setAttribute(key,value);
};
var browser_$tools_Select = { __ename__ : true, __constructs__ : ["id","tag","css","query"] };
browser_$tools_Select.id = function(id_element) { var $x = ["id",0,id_element]; $x.__enum__ = browser_$tools_Select; $x.toString = $estr; return $x; };
browser_$tools_Select.tag = function(node,tagName) { var $x = ["tag",1,node,tagName]; $x.__enum__ = browser_$tools_Select; $x.toString = $estr; return $x; };
browser_$tools_Select.css = function(node,className) { var $x = ["css",2,node,className]; $x.__enum__ = browser_$tools_Select; $x.toString = $estr; return $x; };
browser_$tools_Select.query = function(node,selector) { var $x = ["query",3,node,selector]; $x.__enum__ = browser_$tools_Select; $x.toString = $estr; return $x; };
var browser_$tools_DomIterator = function(a) {
	this.a = a;
	this.i = 0;
};
browser_$tools_DomIterator.__name__ = true;
browser_$tools_DomIterator.prototype = {
	hasNext: function() {
		return this.i < this.a.length;
	}
	,next: function() {
		return this.a[this.i++];
	}
};
var browser_$tools__$HtmlTools_ADomIterable_$Impl_$ = {};
browser_$tools__$HtmlTools_ADomIterable_$Impl_$.__name__ = true;
browser_$tools__$HtmlTools_ADomIterable_$Impl_$._new = function(itr) {
	return itr;
};
browser_$tools__$HtmlTools_ADomIterable_$Impl_$.fromNodeList = function(list) {
	return { iterator : function() {
		return new browser_$tools_DomIterator(list);
	}};
};
browser_$tools__$HtmlTools_ADomIterable_$Impl_$.fromArrayAElement = function(list) {
	return { iterator : function() {
		return new browser_$tools_DomIterator(list);
	}};
};
var browser_$tools_HtmlTools = function() { };
browser_$tools_HtmlTools.__name__ = true;
browser_$tools_HtmlTools.byId = function(id) {
	return window.document.getElementById(id);
};
browser_$tools_HtmlTools.jq = function(selector) {
	return js.JQuery(selector);
};
browser_$tools_HtmlTools.node_jq = function(node) {
	return js.JQuery(node);
};
browser_$tools_HtmlTools.queryClass = function(className,node) {
	return node.getElementsByClassName(className);
};
browser_$tools_HtmlTools.query = function(selector,node) {
	return node.querySelectorAll(selector);
};
browser_$tools_HtmlTools.queryTagNameBody = function(tagName) {
	var node = window.document.body;
	return node.getElementsByTagName(tagName);
};
browser_$tools_HtmlTools.queryClassBody = function(className) {
	return browser_$tools_HtmlTools.queryClass(className,window.document.body);
};
browser_$tools_HtmlTools.queryBody = function(selector) {
	return browser_$tools_HtmlTools.query(selector,window.document.body);
};
browser_$tools_HtmlTools.injectCss = function(css) {
	var style;
	var _this = window.document;
	style = _this.createElement("style");
	style.innerText = css;
	window.document.body.appendChild(style);
};
var browser_$tools_Main = function() { };
browser_$tools_Main.__name__ = true;
browser_$tools_Main.main = function() {
};
var browser_$tools_StyleTools = function() { };
browser_$tools_StyleTools.__name__ = true;
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
