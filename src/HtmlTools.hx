package lib;

import js.Boot;
import js.Browser;
import js.html.*;
import js.JQuery;
using Lambda;
using lib.HtmlTools.StyleTools;

enum Select {
  id(id_element:String);
	tag(node:Element, tagName:String);
	css(node:Element, className:String);
	query(node:Element, selector:String);
}


@:forward
abstract AElement(Element) from Element to Element {

    public inline function new(el:Element) {
        this = el;
    }



		@:from
		public inline static function fromString(s:String):AElement {
			var node = new AElement(Browser.document.createDivElement());
      node.innerHTML = s;
      return node;
		}


		@:from
		public inline static function fromNode(node:Node):AElement {
			return new AElement(untyped node);
		}


		@:from
		public inline static function fromJQuery(jQ:JQuery):AElement {
			return new AElement(untyped jQ.get(0));
		}


		@:op(A++)
		public inline function show() {
			this.style.display = 'inline-block';
		}


		@:op(A--)
		public inline function hide() {
			this.style.display = 'none';
		}


		@:op(A ^ B)
		public inline function setHTMLSTring(s:String) {
			this.innerHTML = s;
		}


		@:op(A ^ B)
		public inline function setHTMLFromElement(element:Element) {
			this.innerHTML = "";
      this.appendChild(element);
		}


		@:op(A << B)
		public inline function appendElementString(s:String) {
			var node = Browser.document.createDivElement();
			node.innerHTML = s;
			this.appendChild(node);
		}

		@:op(A << B)
		public inline function appendElement(el:Element) {
			this.appendChild(el);
		}

		@:op(A >> B)
		public inline function prependElement(el:Element) {
			this.insertBefore(el, this.firstElementChild);
		}

		@:op(A >> B)
		public inline function prependElementString(s:String) {
			var node = Browser.document.createDocumentFragment();
			node.textContent = s;
			this.insertBefore(node, this.firstElementChild);
		}

    @:arrayAccess
    public inline function get(key:String):String {
       return this.getAttribute(key);
    }

		@:arrayAccess
    public inline function set(key:String,value:String):Void {
       this.setAttribute(key,value);
    }


		@:extern @:op(A / B)
		public inline function search(selector:String) {
			return lib.HtmlTools.query(selector,this);
		}

}



class DomIterator<T> {
        var a : NodeList;
        var i : Int;
        public inline function new(a) { this.a = a; this.i = 0; }
        public inline function hasNext() return i < a.length;
        public inline function next() return untyped a[i++];
}


@:forward
abstract ADomIterable(Iterable<AElement>)
from Iterable<AElement> to Iterable<AElement> {
    public inline function  new(itr:Iterable<AElement>) {
        this = itr;
    }

    @:from
    public static inline  function fromNodeList(list:NodeList):ADomIterable {
        return {
          iterator: function() {
             return new DomIterator<AElement>(list);
          }
        }
    }

    @:from public static inline
		function fromArrayAElement(list:Array<AElement>):ADomIterable {
        return {
          iterator: function() {
             return new DomIterator<AElement>(untyped list);
          }
        }
    }

		//@:from
    //public static function fromSelect(select:Select):ADomIterable {
    //	return switch(select) {
    //		case Select.css(node, className): node.getElementsByClassName(className);
    //		case Select.query(node, query): node.querySelectorAll(query);
    //		case Select.tag(node, tagName): node.getElementsByTagName(tagName);
    //		case _ : null;
    //	}
    //}

}



class HtmlTools {

	public static inline function byId(id:String):AElement {
		return Browser.document.getElementById(id);
	}

	public static inline function jq(selector:String) {
		return new JQuery(selector);
	}

	public static inline function node_jq(node:Element) {
		return new JQuery(node);
	}

  @:extern
	public inline static function queryTagName(tagName:String,node:Element):Array<AElement> {
		//if (node == null) node = Browser.document.body;
		return untyped node.getElementsByTagName(tagName);
	}

	public inline static function queryClass(className:String,node:Element):Array<AElement> {
		//if (node == null) node = Browser.document.body;
		return untyped node.getElementsByClassName(className);
	}

	public inline static function query(selector:String,node:Element):Array<AElement> {
		//if (node == null) node = Browser.document.body;
		return untyped node.querySelectorAll(selector);
	}

  
	public inline static function queryTagNameBody(tagName:String):Array<AElement> {
		return untyped HtmlTools.queryTagName(tagName, Browser.document.body);
	}

	public inline static function queryClassBody(className:String):Array<AElement> {
		return untyped HtmlTools.queryClass(className, Browser.document.body);
	}

	public inline static function queryBody(selector:String):Array<AElement> {
		return untyped HtmlTools.query(selector, Browser.document.body);
	}


  @:extern
	public inline static function toNode(html:String,?tagName:String = 'div') {
		var fragment = Browser.document.createDocumentFragment();
		var div = Browser.document.createElement(tagName);
		div.innerHTML = html;
		return div;
	}


	public static inline function injectCss(css:String) {
			var style = js.Browser.document.createStyleElement();
			style.innerText = css;
			js.Browser.document.body.appendChild(style);
	}



	@:extern
	public inline static function setClip(element:Element,top:Int,left:Int,width:Int,height:Int) {
		element.style.setClip(top, left, width, height);
		return element;
	}

	@:extern
  public static inline function setColor(element:Element,background:String,foreground:String) {
    element.style.setColor(background, foreground);
		return element;
  }

  @:extern
  public static inline function setBackgroundImage(element:Element,url:String) {
    element.style.setBackgroundImage(url);
		return element;
  }

}


class StyleTools {

	@:extern
	public inline static function setClip(style:CSSStyleDeclaration,top:Int,left:Int,width:Int,height:Int) {
		style.top = '${top}px';
		style.left = '${left}px';
		style.width = '${width}px';
		style.height = '${height}px';
		return style;
	}

	@:extern
  public static inline function setColor(style:CSSStyleDeclaration,background:String,foreground:String) {
    style.backgroundColor = background;
		style.color = foreground;
		return style;
  }

  @:extern
  public static inline function setBackgroundImage(style:CSSStyleDeclaration,url:String) {
    style.backgroundImage = 'url($url)';
		return style;
  }

}
