package browser_tools;

import js.Boot;
import js.Browser;
import js.html.*;
import js.JQuery;
using Lambda;
using browser_tools.StyleTools;
using browser_tools.HtmlTools;

enum Select {
  id(id_element:String);
	tag(node:Element, tagName:String);
	css(node:Element, className:String);
	query(node:Element, selector:String);
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

  public static inline function AsyncinjectCss(css:String) {
    var style = js.Browser.document.createStyleElement();
    style.innerText = css;
    Browser.window.requestAnimationFrame(function(i) {
      js.Browser.document.body.appendChild(style);
    });
  }

	public static inline function injectCss(css:String) {
			var style = js.Browser.document.createStyleElement();
			style.innerText = css;
			js.Browser.document.body.appendChild(style);
	}


  @:extern
	public inline static function moveTo(element:Element,top:Dynamic,left:Dynamic) {
		element.style.top = top;
    element.style.left = left;
		return element;
	}

  @:extern
	public inline static function setDimension(element:Element,width:Dynamic,height:Dynamic) {
		element.style.width = width;
    element.style.height = height;
		return element;
	}

  @:extern
	public inline static function setBackgroundColor(element:Element,background:Dynamic) {
		element.style.backgroundColor = background;
		return element;
	}

  @:extern
	public inline static function setZIndex(element:Element,zIndex:Dynamic) {
		element.style.zIndex = zIndex;
		return element;
	}

  @:extern
	public inline static function setPosition(element:Element,position:Dynamic) {
		element.style.position = position;
		return element;
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

  @:extern public static inline function addClass(element:Element,cls:String) {
    element.classList.add(cls);
		return element;
  }

  @:extern public static inline function removeClass(element:Element,cls:String) {
    element.classList.remove(cls);
		return element;
  }

  @:extern public static inline function setContent(element:Element,html:String) {
    element.innerHTML = html;
		return element;
  }

  @:extern public static inline function hasClass(element:Element,cls:String):Bool {
    return element.classList.contains(cls);
  }


  @:extern public static inline function setClass(element:Element,cls:String,check:Bool) {
    if (check == true) element.removeClass(cls);
    if (check == false) element.addClass(cls);
		return element;
  }

  @:extern public static inline function remove_node(element:Element) {
    if (element.remove == null) {
      element.parentNode.removeChild(element);
    } else {
      element.remove();
    }
    return element;
  }

  public static inline function visibility_hide(element:Element) element.style.visibility = 'hidden';
  public static inline function visibility_show(element:Element) element.style.visibility = 'visible';


  public static inline function grow(textarea:browser_tools.AElement) {

      var textarea_line = 10;
      var newHeight = textarea.scrollHeight;
      var currentHeight = textarea.clientHeight;

      if (newHeight > currentHeight) {
         textarea.style.height = newHeight + 5 * textarea_line + 'px';
      }
  }


  @:extern
	public inline static function setWidth(element:Element,width:Dynamic) {
		element.style.width = width;
		return element;
	}

  @:extern
	public inline static function setHeight(element:Element,height:Dynamic) {
		element.style.height = height;
		return element;
	}


}
