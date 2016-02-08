(function (console) { "use strict";
function $extend(from, fields) {
	function Inherit() {} Inherit.prototype = from; var proto = new Inherit();
	for (var name in fields) proto[name] = fields[name];
	if( fields.toString !== Object.prototype.toString ) proto.toString = fields.toString;
	return proto;
}
var HxOverrides = function() { };
HxOverrides.iter = function(a) {
	return { cur : 0, arr : a, hasNext : function() {
		return this.cur < this.arr.length;
	}, next : function() {
		return this.arr[this.cur++];
	}};
};
var async_$tools_Async = function() { };
var browser_$tools_HtmlTools = function() { };
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
var browser_$tools_angular_IAngularBinder = function() { };
var browser_$tools_BinderBase = function() { };
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
browser_$tools_Main.__interfaces__ = [async_$tools_Async];
browser_$tools_Main.main = function() {
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
		var __fn_tmp_72943003_7633155286_bd442e87928e636870108e858c3b0da0 = function(__return) {
			__return();
		};
		$r = __fn_tmp_72943003_7633155286_bd442e87928e636870108e858c3b0da0;
		return $r;
	}(this)))(function() {
	});
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
browser_$tools_Binder.class_path = "browser_tools.Binder";
browser_$tools_Main.main();
})(typeof console != "undefined" ? console : {log:function(){}});
