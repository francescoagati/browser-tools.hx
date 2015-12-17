(function (console) { "use strict";
function $extend(from, fields) {
	function Inherit() {} Inherit.prototype = from; var proto = new Inherit();
	for (var name in fields) proto[name] = fields[name];
	if( fields.toString !== Object.prototype.toString ) proto.toString = fields.toString;
	return proto;
}
var EReg = function(r,opt) {
	opt = opt.split("u").join("");
	this.r = new RegExp(r,opt);
};
EReg.__name__ = true;
EReg.prototype = {
	match: function(s) {
		if(this.r.global) this.r.lastIndex = 0;
		this.r.m = this.r.exec(s);
		this.r.s = s;
		return this.r.m != null;
	}
	,matched: function(n) {
		var tmp;
		if(this.r.m != null && n >= 0 && n < this.r.m.length) tmp = this.r.m[n]; else throw new js__$Boot_HaxeError("EReg::matched");
		return tmp;
	}
};
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
var browser_$tools_AnimationTools = function() { };
browser_$tools_AnimationTools.__name__ = true;
browser_$tools_AnimationTools.get_prefix = function() {
	if(browser_$tools_AnimationTools._prefix == null) {
		var check = (function($this) {
			var $r;
			if(browser_$tools_AnimationTools._is_animations_supported == null) browser_$tools_AnimationTools._is_animations_supported = browser_$tools_AnimationTools.check_for_animations();
			$r = browser_$tools_AnimationTools._is_animations_supported;
			return $r;
		}(this));
		if(check == true) {
			var style = window.document.body.style;
			browser_$tools_AnimationTools._prefix = style.transform != null?"":style.msTransform != null?"ms":style.MozTransform != null?"moz":style.webkitTransform != null?"webkit":style.OTransform != null?"o":"not-supported";
		} else browser_$tools_AnimationTools._prefix = "not-supported";
	}
	return browser_$tools_AnimationTools._prefix;
};
browser_$tools_AnimationTools.check_for_animations = function() {
	var animation = false;
	var animationstring = "animation";
	var keyframeprefix = "";
	var domPrefixes = "Webkit Moz O ms Khtml".split(" ");
	var pfx = "";
	var elm = window.document.createElement("div");
	if(elm.style.animationName != null) animation = true;
	if(animation == false) {
		var style = elm.style;
		var _g = 0;
		while(_g < domPrefixes.length) {
			var prefix = domPrefixes[_g];
			++_g;
			if(style[prefix + "AnimationName"] != null) {
				pfx = prefix;
				animationstring = pfx + "Animation";
				keyframeprefix = "-" + pfx.toLowerCase() + "-";
				animation = true;
				break;
			}
		}
	}
	return animation;
};
var browser_$tools_BrowserDevice = function() { };
browser_$tools_BrowserDevice.__name__ = true;
var browser_$tools_Main = function() { };
browser_$tools_Main.__name__ = true;
browser_$tools_Main.__interfaces__ = [async_$tools_Async];
browser_$tools_Main.animate = function(__return) {
	var el = window.document.getElementById("animation");
	el;
	var extension = browser_$tools_AnimationTools.get_prefix();
	if(extension != "not-supported") {
		var prop = extension == ""?"transition":"-" + "transition" + "-";
		el.style.setProperty("transition","all 2s");
	}
	window.requestAnimationFrame(function(i) {
		var extension1 = browser_$tools_AnimationTools.get_prefix();
		if(extension1 != "not-supported") {
			var prop1 = extension1 == ""?"transform":"-" + "transform" + "-";
			el.style.setProperty("transform","translateX(-100px)");
		}
	});
	var element = el;
	var cb2 = function() {
		window.requestAnimationFrame(function(i1) {
			var extension2 = browser_$tools_AnimationTools.get_prefix();
			if(extension2 != "not-supported") {
				var prop2 = extension2 == ""?"transform":"-" + "transform" + "-";
				el.style.setProperty("transform","translateX(0px)");
			}
		});
		var element1 = el;
		var cb1 = function() {
			setTimeout(function() {
				window.requestAnimationFrame(function(i2) {
					var extension3 = browser_$tools_AnimationTools.get_prefix();
					if(extension3 != "not-supported") {
						var prop3 = extension3 == ""?"transform":"-" + "transform" + "-";
						el.style.setProperty("transform","translateY(100px)");
					}
				});
				var element2 = el;
				var cb = function() {
					var y = '500px';
					y;
					window.requestAnimationFrame(function(i3) {
						var extension4 = browser_$tools_AnimationTools.get_prefix();
						if(extension4 != "not-supported") {
							var prop4 = extension4 == ""?"transform":"-" + "transform" + "-";
							el.style.setProperty("transform","translate(" + "500px" + "," + y + ")");
						}
					});
					__return();
				};
				var check_one = false;
				var prefix_string = browser_$tools_AnimationTools.get_prefix();
				if(browser_$tools_AnimationTools.get_prefix() != "not-supported") {
					var handler1 = (function($this) {
						var $r;
						var handler = null;
						handler = function(e) {
							if(check_one == false) {
								check_one = true;
								cb();
								element2.removeEventListener("" + prefix_string + "transitionend",handler);
							}
						};
						$r = handler;
						return $r;
					}(this));
					element2.addEventListener("" + prefix_string + "transitionend",handler1);
				}
			},3000);
		};
		var check_one1 = false;
		var prefix_string1 = browser_$tools_AnimationTools.get_prefix();
		if(browser_$tools_AnimationTools.get_prefix() != "not-supported") {
			var handler3 = (function($this) {
				var $r;
				var handler2 = null;
				handler2 = function(e1) {
					if(check_one1 == false) {
						check_one1 = true;
						cb1();
						element1.removeEventListener("" + prefix_string1 + "transitionend",handler2);
					}
				};
				$r = handler2;
				return $r;
			}(this));
			element1.addEventListener("" + prefix_string1 + "transitionend",handler3);
		}
	};
	var check_one2 = false;
	var prefix_string2 = browser_$tools_AnimationTools.get_prefix();
	if(browser_$tools_AnimationTools.get_prefix() != "not-supported") {
		var handler5 = (function($this) {
			var $r;
			var handler4 = null;
			handler4 = function(e2) {
				if(check_one2 == false) {
					check_one2 = true;
					cb2();
					element.removeEventListener("" + prefix_string2 + "transitionend",handler4);
				}
			};
			$r = handler4;
			return $r;
		}(this));
		element.addEventListener("" + prefix_string2 + "transitionend",handler5);
	}
};
browser_$tools_Main.main = function() {
	var tmp;
	var s = window.navigator.userAgent;
	var rg = new EReg("Safari","i");
	tmp = rg.match(s);
	var tmp1;
	if(tmp) {
		var tmp2;
		var s1 = window.navigator.userAgent;
		var rg1 = new EReg("iPhone|iPad|iPod","i");
		tmp2 = rg1.match(s1);
		if(tmp2) tmp1 = browser_$tools_BrowserDevice.is_mobile_explorer == false; else tmp1 = false;
	} else tmp1 = false;
	js_Browser.alert(tmp1 && browser_$tools_BrowserDevice.is_mobile_explorer == false);
	js_Browser.alert(browser_$tools_BrowserDevice.browser.version);
	browser_$tools_Main.animate(function() {
	});
	var prefix = browser_$tools_AnimationTools.get_prefix();
	js_Browser.alert(prefix);
	console.log(prefix);
};
var js__$Boot_HaxeError = function(val) {
	Error.call(this);
	this.val = val;
	this.message = String(val);
	if(Error.captureStackTrace) Error.captureStackTrace(this,js__$Boot_HaxeError);
};
js__$Boot_HaxeError.__name__ = true;
js__$Boot_HaxeError.__super__ = Error;
js__$Boot_HaxeError.prototype = $extend(Error.prototype,{
});
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
			if (e instanceof js__$Boot_HaxeError) e = e.val;
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
js_Browser.alert = function(v) {
	window.alert(js_Boot.__string_rec(v,""));
};
function $iterator(o) { if( o instanceof Array ) return function() { return HxOverrides.iter(o); }; return typeof(o.iterator) == 'function' ? $bind(o,o.iterator) : o.iterator; }
var $_, $fid = 0;
function $bind(o,m) { if( m == null ) return null; if( m.__id__ == null ) m.__id__ = $fid++; var f; if( o.hx__closures__ == null ) o.hx__closures__ = {}; else f = o.hx__closures__[m.__id__]; if( f == null ) { f = function(){ return f.method.apply(f.scope, arguments); }; f.scope = o; f.method = m; o.hx__closures__[m.__id__] = f; } return f; }
String.__name__ = true;
Array.__name__ = true;
var q = window.jQuery;
var js = js || {}
js.JQuery = q;
browser_$tools_BrowserDevice.browser = (function($this) {
	var $r;
	var navigator = window.navigator;
	var navigatorObj = navigator.appName;
	var userAgentObj = navigator.userAgent;
	var matchVersion;
	var browser = null;
	var version = null;
	var rg_browser = new EReg("(opera|chrome|safari|firefox|msie|trident)/?\\s*(\\.?\\d+(\\.\\d+)*)","i");
	var rg_system_mobile = new EReg("iPhone|Android|webOS|iPad","i");
	var rg_version = new EReg("version/([\\.\\d]+)","i");
	var match_browser = rg_browser.match(userAgentObj);
	var match_version = rg_version.match(userAgentObj);
	var browser1 = match_browser?rg_browser.matched(1):navigatorObj;
	version = match_version?rg_version.matched(1):rg_browser.matched(2);
	$r = rg_system_mobile.match(navigator.userAgent)?{ browser : browser1, version : parseFloat(version), type : "mobile"}:{ browser : browser1, version : parseFloat(version), type : "desktop"};
	return $r;
}(this));
browser_$tools_BrowserDevice.is_mobile_explorer = browser_$tools_BrowserDevice.browser.browser == "Trident" && browser_$tools_BrowserDevice.browser.type == "mobile"?true:false;
browser_$tools_Main.main();
})(typeof console != "undefined" ? console : {log:function(){}});
