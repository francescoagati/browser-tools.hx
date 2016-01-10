(function (console, $global) { "use strict";
var $estr = function() { return js_Boot.__string_rec(this,''); };
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
var Std = function() { };
Std.__name__ = true;
Std.string = function(s) {
	return js_Boot.__string_rec(s,"");
};
var async_$tools_Async = function() { };
async_$tools_Async.__name__ = true;
var browser_$tools_Main = function() { };
browser_$tools_Main.__name__ = true;
browser_$tools_Main.__interfaces__ = [async_$tools_Async];
browser_$tools_Main.main = function() {
	var image = new Image();
	image.src = "test.png";
	var image1 = new Image();
	image1.src = "https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.8/angular.min.js";
	var paths = ["https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.8/angular.min.js","test.png"];
	var __afterVar_15 = function(assets) {
		assets;
		thx_Functions.noop();
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
			var path = paths[__iterator++];
			var __index = [__i];
			__counter++;
			var image2 = new Image();
			image2.onload = (function(__index) {
				return function() {
					__results[__index[0]] = true;
					__checkCounter();
				};
			})(__index);
			image2.src = path;
			__i++;
		} while(__iterator < paths.length);
		__checkCounter();
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
browser_$tools_events_Mapper.__name__ = true;
browser_$tools_events_Mapper.check_query = function(element,query) {
	var matchesSelector = $element.webkitMatchesSelector || $element.mozMatchesSelector || $element.oMatchesSelector || $element.matchesSelector;
	return matchesSelector.call(element,query);
};
var haxe__$Int64__$_$_$Int64 = function(high,low) {
	this.high = high;
	this.low = low;
};
haxe__$Int64__$_$_$Int64.__name__ = true;
haxe__$Int64__$_$_$Int64.prototype = {
	__class__: haxe__$Int64__$_$_$Int64
};
var haxe_io_Error = { __ename__ : true, __constructs__ : ["Blocked","Overflow","OutsideBounds","Custom"] };
haxe_io_Error.Blocked = ["Blocked",0];
haxe_io_Error.Blocked.toString = $estr;
haxe_io_Error.Blocked.__enum__ = haxe_io_Error;
haxe_io_Error.Overflow = ["Overflow",1];
haxe_io_Error.Overflow.toString = $estr;
haxe_io_Error.Overflow.__enum__ = haxe_io_Error;
haxe_io_Error.OutsideBounds = ["OutsideBounds",2];
haxe_io_Error.OutsideBounds.toString = $estr;
haxe_io_Error.OutsideBounds.__enum__ = haxe_io_Error;
haxe_io_Error.Custom = function(e) { var $x = ["Custom",3,e]; $x.__enum__ = haxe_io_Error; $x.toString = $estr; return $x; };
var haxe_io_FPHelper = function() { };
haxe_io_FPHelper.__name__ = true;
haxe_io_FPHelper.i32ToFloat = function(i) {
	var sign = 1 - (i >>> 31 << 1);
	var exp = i >>> 23 & 255;
	var sig = i & 8388607;
	if(sig == 0 && exp == 0) return 0.0;
	return sign * (1 + Math.pow(2,-23) * sig) * Math.pow(2,exp - 127);
};
haxe_io_FPHelper.floatToI32 = function(f) {
	if(f == 0) return 0;
	var af = f < 0?-f:f;
	var exp = Math.floor(Math.log(af) / 0.6931471805599453);
	if(exp < -127) exp = -127; else if(exp > 128) exp = 128;
	var sig = Math.round((af / Math.pow(2,exp) - 1) * 8388608) & 8388607;
	return (f < 0?-2147483648:0) | exp + 127 << 23 | sig;
};
haxe_io_FPHelper.i64ToDouble = function(low,high) {
	var sign = 1 - (high >>> 31 << 1);
	var exp = (high >> 20 & 2047) - 1023;
	var sig = (high & 1048575) * 4294967296. + (low >>> 31) * 2147483648. + (low & 2147483647);
	if(sig == 0 && exp == -1023) return 0.0;
	return sign * (1.0 + Math.pow(2,-52) * sig) * Math.pow(2,exp);
};
haxe_io_FPHelper.doubleToI64 = function(v) {
	var i64 = haxe_io_FPHelper.i64tmp;
	if(v == 0) {
		i64.low = 0;
		i64.high = 0;
	} else {
		var av = v < 0?-v:v;
		var exp = Math.floor(Math.log(av) / 0.6931471805599453);
		var tmp;
		var v1 = (av / Math.pow(2,exp) - 1) * 4503599627370496.;
		tmp = Math.round(v1);
		var sig = tmp;
		var sig_l = sig | 0;
		var sig_h = sig / 4294967296.0 | 0;
		i64.low = sig_l;
		i64.high = (v < 0?-2147483648:0) | exp + 1023 << 20 | sig_h;
	}
	return i64;
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
	__class__: js__$Boot_HaxeError
});
var js_Boot = function() { };
js_Boot.__name__ = true;
js_Boot.getClass = function(o) {
	if((o instanceof Array) && o.__enum__ == null) return Array; else {
		var cl = o.__class__;
		if(cl != null) return cl;
		var name = js_Boot.__nativeClassName(o);
		if(name != null) return js_Boot.__resolveNativeClass(name);
		return null;
	}
};
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
js_Boot.__interfLoop = function(cc,cl) {
	if(cc == null) return false;
	if(cc == cl) return true;
	var intf = cc.__interfaces__;
	if(intf != null) {
		var _g1 = 0;
		var _g = intf.length;
		while(_g1 < _g) {
			var i = _g1++;
			var i1 = intf[i];
			if(i1 == cl || js_Boot.__interfLoop(i1,cl)) return true;
		}
	}
	return js_Boot.__interfLoop(cc.__super__,cl);
};
js_Boot.__instanceof = function(o,cl) {
	if(cl == null) return false;
	switch(cl) {
	case Int:
		return (o|0) === o;
	case Float:
		return typeof(o) == "number";
	case Bool:
		return typeof(o) == "boolean";
	case String:
		return typeof(o) == "string";
	case Array:
		return (o instanceof Array) && o.__enum__ == null;
	case Dynamic:
		return true;
	default:
		if(o != null) {
			if(typeof(cl) == "function") {
				if(o instanceof cl) return true;
				if(js_Boot.__interfLoop(js_Boot.getClass(o),cl)) return true;
			} else if(typeof(cl) == "object" && js_Boot.__isNativeObj(cl)) {
				if(o instanceof cl) return true;
			}
		} else return false;
		if(cl == Class && o.__name__ != null) return true;
		if(cl == Enum && o.__ename__ != null) return true;
		return o.__enum__ == cl;
	}
};
js_Boot.__nativeClassName = function(o) {
	var name = js_Boot.__toStr.call(o).slice(8,-1);
	if(name == "Object" || name == "Function" || name == "Math" || name == "JSON") return null;
	return name;
};
js_Boot.__isNativeObj = function(o) {
	return js_Boot.__nativeClassName(o) != null;
};
js_Boot.__resolveNativeClass = function(name) {
	return $global[name];
};
var js_html_compat_ArrayBuffer = function(a) {
	if((a instanceof Array) && a.__enum__ == null) {
		this.a = a;
		this.byteLength = a.length;
	} else {
		var len = a;
		this.a = [];
		var _g = 0;
		while(_g < len) {
			var i = _g++;
			this.a[i] = 0;
		}
		this.byteLength = len;
	}
};
js_html_compat_ArrayBuffer.__name__ = true;
js_html_compat_ArrayBuffer.sliceImpl = function(begin,end) {
	var u = new Uint8Array(this,begin,end == null?null:end - begin);
	var result = new ArrayBuffer(u.byteLength);
	var resultArray = new Uint8Array(result);
	resultArray.set(u);
	return result;
};
js_html_compat_ArrayBuffer.prototype = {
	slice: function(begin,end) {
		return new js_html_compat_ArrayBuffer(this.a.slice(begin,end));
	}
	,__class__: js_html_compat_ArrayBuffer
};
var js_html_compat_DataView = function(buffer,byteOffset,byteLength) {
	this.buf = buffer;
	this.offset = byteOffset == null?0:byteOffset;
	this.length = byteLength == null?buffer.byteLength - this.offset:byteLength;
	if(this.offset < 0 || this.length < 0 || this.offset + this.length > buffer.byteLength) throw new js__$Boot_HaxeError(haxe_io_Error.OutsideBounds);
};
js_html_compat_DataView.__name__ = true;
js_html_compat_DataView.prototype = {
	getInt8: function(byteOffset) {
		var v = this.buf.a[this.offset + byteOffset];
		return v >= 128?v - 256:v;
	}
	,getUint8: function(byteOffset) {
		return this.buf.a[this.offset + byteOffset];
	}
	,getInt16: function(byteOffset,littleEndian) {
		var v = this.getUint16(byteOffset,littleEndian);
		return v >= 32768?v - 65536:v;
	}
	,getUint16: function(byteOffset,littleEndian) {
		return littleEndian?this.buf.a[this.offset + byteOffset] | this.buf.a[this.offset + byteOffset + 1] << 8:this.buf.a[this.offset + byteOffset] << 8 | this.buf.a[this.offset + byteOffset + 1];
	}
	,getInt32: function(byteOffset,littleEndian) {
		var p = this.offset + byteOffset;
		var a = this.buf.a[p++];
		var b = this.buf.a[p++];
		var c = this.buf.a[p++];
		var d = this.buf.a[p++];
		return littleEndian?a | b << 8 | c << 16 | d << 24:d | c << 8 | b << 16 | a << 24;
	}
	,getUint32: function(byteOffset,littleEndian) {
		var v = this.getInt32(byteOffset,littleEndian);
		return v < 0?v + 4294967296.:v;
	}
	,getFloat32: function(byteOffset,littleEndian) {
		return haxe_io_FPHelper.i32ToFloat(this.getInt32(byteOffset,littleEndian));
	}
	,getFloat64: function(byteOffset,littleEndian) {
		var a = this.getInt32(byteOffset,littleEndian);
		var b = this.getInt32(byteOffset + 4,littleEndian);
		return haxe_io_FPHelper.i64ToDouble(littleEndian?a:b,littleEndian?b:a);
	}
	,setInt8: function(byteOffset,value) {
		this.buf.a[byteOffset + this.offset] = value < 0?value + 128 & 255:value & 255;
	}
	,setUint8: function(byteOffset,value) {
		this.buf.a[byteOffset + this.offset] = value & 255;
	}
	,setInt16: function(byteOffset,value,littleEndian) {
		this.setUint16(byteOffset,value < 0?value + 65536:value,littleEndian);
	}
	,setUint16: function(byteOffset,value,littleEndian) {
		var p = byteOffset + this.offset;
		if(littleEndian) {
			this.buf.a[p] = value & 255;
			this.buf.a[p++] = value >> 8 & 255;
		} else {
			this.buf.a[p++] = value >> 8 & 255;
			this.buf.a[p] = value & 255;
		}
	}
	,setInt32: function(byteOffset,value,littleEndian) {
		this.setUint32(byteOffset,value,littleEndian);
	}
	,setUint32: function(byteOffset,value,littleEndian) {
		var p = byteOffset + this.offset;
		if(littleEndian) {
			this.buf.a[p++] = value & 255;
			this.buf.a[p++] = value >> 8 & 255;
			this.buf.a[p++] = value >> 16 & 255;
			this.buf.a[p++] = value >>> 24;
		} else {
			this.buf.a[p++] = value >>> 24;
			this.buf.a[p++] = value >> 16 & 255;
			this.buf.a[p++] = value >> 8 & 255;
			this.buf.a[p++] = value & 255;
		}
	}
	,setFloat32: function(byteOffset,value,littleEndian) {
		this.setUint32(byteOffset,haxe_io_FPHelper.floatToI32(value),littleEndian);
	}
	,setFloat64: function(byteOffset,value,littleEndian) {
		var i64 = haxe_io_FPHelper.doubleToI64(value);
		if(littleEndian) {
			this.setUint32(byteOffset,i64.low);
			this.setUint32(byteOffset,i64.high);
		} else {
			this.setUint32(byteOffset,i64.high);
			this.setUint32(byteOffset,i64.low);
		}
	}
	,__class__: js_html_compat_DataView
};
var js_html_compat_Uint8Array = function() { };
js_html_compat_Uint8Array.__name__ = true;
js_html_compat_Uint8Array._new = function(arg1,offset,length) {
	var arr;
	if(typeof(arg1) == "number") {
		arr = [];
		var _g = 0;
		while(_g < arg1) {
			var i = _g++;
			arr[i] = 0;
		}
		arr.byteLength = arr.length;
		arr.byteOffset = 0;
		arr.buffer = new js_html_compat_ArrayBuffer(arr);
	} else if(js_Boot.__instanceof(arg1,js_html_compat_ArrayBuffer)) {
		var buffer = arg1;
		if(offset == null) offset = 0;
		if(length == null) length = buffer.byteLength - offset;
		if(offset == 0) arr = buffer.a; else arr = buffer.a.slice(offset,offset + length);
		arr.byteLength = arr.length;
		arr.byteOffset = offset;
		arr.buffer = buffer;
	} else if((arg1 instanceof Array) && arg1.__enum__ == null) {
		arr = arg1.slice();
		arr.byteLength = arr.length;
		arr.byteOffset = 0;
		arr.buffer = new js_html_compat_ArrayBuffer(arr);
	} else throw new js__$Boot_HaxeError("TODO " + Std.string(arg1));
	arr.subarray = js_html_compat_Uint8Array._subarray;
	arr.set = js_html_compat_Uint8Array._set;
	return arr;
};
js_html_compat_Uint8Array._set = function(arg,offset) {
	var t = this;
	if(js_Boot.__instanceof(arg.buffer,js_html_compat_ArrayBuffer)) {
		var a = arg;
		if(arg.byteLength + offset > t.byteLength) throw new js__$Boot_HaxeError("set() outside of range");
		var _g1 = 0;
		var _g = arg.byteLength;
		while(_g1 < _g) {
			var i = _g1++;
			t[i + offset] = a[i];
		}
	} else if((arg instanceof Array) && arg.__enum__ == null) {
		var a1 = arg;
		if(a1.length + offset > t.byteLength) throw new js__$Boot_HaxeError("set() outside of range");
		var _g11 = 0;
		var _g2 = a1.length;
		while(_g11 < _g2) {
			var i1 = _g11++;
			t[i1 + offset] = a1[i1];
		}
	} else throw new js__$Boot_HaxeError("TODO");
};
js_html_compat_Uint8Array._subarray = function(start,end) {
	var t = this;
	var a = js_html_compat_Uint8Array._new(t.slice(start,end));
	a.byteOffset = start;
	return a;
};
var thx_Either = { __ename__ : true, __constructs__ : ["Left","Right"] };
thx_Either.Left = function(value) { var $x = ["Left",0,value]; $x.__enum__ = thx_Either; $x.toString = $estr; return $x; };
thx_Either.Right = function(value) { var $x = ["Right",1,value]; $x.__enum__ = thx_Either; $x.toString = $estr; return $x; };
var thx_Functions = function() { };
thx_Functions.__name__ = true;
thx_Functions.noop = function() {
};
function $iterator(o) { if( o instanceof Array ) return function() { return HxOverrides.iter(o); }; return typeof(o.iterator) == 'function' ? $bind(o,o.iterator) : o.iterator; }
var $_, $fid = 0;
function $bind(o,m) { if( m == null ) return null; if( m.__id__ == null ) m.__id__ = $fid++; var f; if( o.hx__closures__ == null ) o.hx__closures__ = {}; else f = o.hx__closures__[m.__id__]; if( f == null ) { f = function(){ return f.method.apply(f.scope, arguments); }; f.scope = o; f.method = m; o.hx__closures__[m.__id__] = f; } return f; }
String.prototype.__class__ = String;
String.__name__ = true;
Array.__name__ = true;
var Int = { __name__ : ["Int"]};
var Dynamic = { __name__ : ["Dynamic"]};
var Float = Number;
Float.__name__ = ["Float"];
var Bool = Boolean;
Bool.__ename__ = ["Bool"];
var Class = { __name__ : ["Class"]};
var Enum = { };
var q = window.jQuery;
var js = js || {}
js.JQuery = q;
var ArrayBuffer = $global.ArrayBuffer || js_html_compat_ArrayBuffer;
if(ArrayBuffer.prototype.slice == null) ArrayBuffer.prototype.slice = js_html_compat_ArrayBuffer.sliceImpl;
var DataView = $global.DataView || js_html_compat_DataView;
var Uint8Array = $global.Uint8Array || js_html_compat_Uint8Array._new;
haxe_io_FPHelper.i64tmp = (function($this) {
	var $r;
	var x = new haxe__$Int64__$_$_$Int64(0,0);
	$r = x;
	return $r;
}(this));
js_Boot.__toStr = {}.toString;
js_html_compat_Uint8Array.BYTES_PER_ELEMENT = 1;
browser_$tools_Main.main();
})(typeof console != "undefined" ? console : {log:function(){}}, typeof window != "undefined" ? window : typeof global != "undefined" ? global : typeof self != "undefined" ? self : this);
