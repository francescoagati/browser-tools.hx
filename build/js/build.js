(function (console) { "use strict";
function $extend(from, fields) {
	function Inherit() {} Inherit.prototype = from; var proto = new Inherit();
	for (var name in fields) proto[name] = fields[name];
	if( fields.toString !== Object.prototype.toString ) proto.toString = fields.toString;
	return proto;
}
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
var browser_$tools_HtmlTools = function() { };
browser_$tools_HtmlTools.__name__ = true;
browser_$tools_HtmlTools.is_dom_node = function(v) {
	var e;
	var nn;
	if(v == null) return false;
	if(typeof v == "object") return false;
	if(Object.prototype.hasOwnProperty.call(v,"nodeName") == false) return false;
	nn = v.nodeName;
	try {
		v.nodeName = "is readonly?";
	} catch( _error ) {
		e = _error;
		return true;
	}
	if(v.nodeName == nn) return true;
	v.nodeName = nn;
	return false;
};
var browser_$tools_angular_IRoutes = function() { };
browser_$tools_angular_IRoutes.__name__ = true;
var browser_$tools_angular_IAngularBinder = function() { };
browser_$tools_angular_IAngularBinder.__name__ = true;
var browser_$tools_BinderBase = function() { };
browser_$tools_BinderBase.__name__ = true;
browser_$tools_BinderBase.__interfaces__ = [browser_$tools_angular_IRoutes,browser_$tools_angular_IAngularBinder];
browser_$tools_BinderBase.prototype = {
	changed: function(n,o) {
		console.log(n);
	}
	,pippa: function() {
	}
};
var browser_$tools_Binder = function() {
	if(this.scope != null) this.scope = this.scope;
	this.scope.pippa = $bind(this,this.pippa);
	this.scope.watch("\"a.b.c\"",$bind(this,this.changed),true);
};
browser_$tools_Binder.__name__ = true;
browser_$tools_Binder.factory = function() {
	console.log(browser_$tools_Binder.class_path);
};
browser_$tools_Binder.__super__ = browser_$tools_BinderBase;
browser_$tools_Binder.prototype = $extend(browser_$tools_BinderBase.prototype,{
	bind_methods: function() {
		if(this.scope != null) this.scope = this.scope;
		this.scope.pippa = $bind(this,this.pippa);
		this.scope.watch("\"a.b.c\"",$bind(this,this.changed),true);
	}
});
var browser_$tools_Main = function() { };
browser_$tools_Main.__name__ = true;
browser_$tools_Main.__interfaces__ = [async_$tools_Async];
browser_$tools_Main.main = function() {
	js_Browser.alert(browser_$tools_utils_features_Storage.check_for_local_storage());
	return;
	browser_$tools_HtmlTools.is_dom_node(test);
	var __afterVar_36 = function(position) {
		position;
		var location = new google.maps.LatLng(position.coords.latitude,position.coords.longitude);
		location;
		var map = new google.maps.Map(window.document.getElementById("canvas"),{ mapTypeId : "roadmap", center : location, zoom : 15});
		map;
		var places = new google.maps.places.PlacesService(map);
		places;
		var request = { location : location, radius : 15000, types : ["university"]};
		request;
		var __afterVar_42 = function(results,status) {
			results;
			status;
			var __iterator = 0;
			var __doCount = 0;
			var __continue_451 = (function($this) {
				var $r;
				var __continue_45 = null;
				__continue_45 = function() {
					if(__iterator < results.length) {
						if(__doCount++ == 0) do {
							var result = results[__iterator++];
							result;
							console.log([result.name,result.vicinity]);
							__continue_45();
						} while(--__doCount != 0);
					} else thx_Functions.noop();
				};
				$r = __continue_45;
				return $r;
			}(this));
			__continue_451();
		};
		places.nearbySearch(request,function(__parameter_43,__parameter_44) {
			__afterVar_42(__parameter_43,__parameter_44);
		});
	};
	window.navigator.geolocation.getCurrentPosition(function(__parameter_37) {
		__afterVar_36(__parameter_37);
	});
	((function($this) {
		var $r;
		var __fn_tmp_35218944_3092248365_d57b787ecc7603a64fff095801b09ec1 = function(__return) {
			__return();
		};
		$r = __fn_tmp_35218944_3092248365_d57b787ecc7603a64fff095801b09ec1;
		return $r;
	}(this)))(function() {
	});
};
var browser_$tools_utils_features_Storage = function() { };
browser_$tools_utils_features_Storage.__name__ = true;
browser_$tools_utils_features_Storage.check_for_local_storage = function() {
	var storage = js_Browser.getLocalStorage();
	var tmp;
	try {
		storage.setItem("_veespo_test","1");
		storage.removeItem("_veespo_test");
		tmp = true;
	} catch( e ) {
		tmp = false;
	}
	return tmp;
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
js_Browser.getLocalStorage = function() {
	try {
		var s = window.localStorage;
		s.getItem("");
		return s;
	} catch( e ) {
		return null;
	}
};
js_Browser.alert = function(v) {
	window.alert(js_Boot.__string_rec(v,""));
};
var thx_Functions = function() { };
thx_Functions.__name__ = true;
thx_Functions.noop = function() {
};
function $iterator(o) { if( o instanceof Array ) return function() { return HxOverrides.iter(o); }; return typeof(o.iterator) == 'function' ? $bind(o,o.iterator) : o.iterator; }
var $_, $fid = 0;
function $bind(o,m) { if( m == null ) return null; if( m.__id__ == null ) m.__id__ = $fid++; var f; if( o.hx__closures__ == null ) o.hx__closures__ = {}; else f = o.hx__closures__[m.__id__]; if( f == null ) { f = function(){ return f.method.apply(f.scope, arguments); }; f.scope = o; f.method = m; o.hx__closures__[m.__id__] = f; } return f; }
String.__name__ = true;
Array.__name__ = true;
var q = window.jQuery;
var js = js || {}
js.JQuery = q;
browser_$tools_Binder.class_path = "browser_tools.Binder";
browser_$tools_Main.main();
})(typeof console != "undefined" ? console : {log:function(){}});
