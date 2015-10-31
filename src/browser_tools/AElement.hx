package browser_tools;
import js.html.*;
import js.JQuery;
import js.Browser;
import browser_tools.Events;

/*
abstract EventClick(Element) {
   public inline function new(el:ELM) this = el;

   @:op(A+B) public inline function addEL(el:EL) {
       this.addEventListener('click',el);
       return new EventClick(this);
   }

   @:op(A-B) public inline function removeEl(el:EL) {
       this.removeEventListener('click',el);
       return new EventClick(this);
   }

}


abstract EventMouseOver(Element) {
   public inline function new(el:ELM) this = el;

   @:op(A+B) public inline function addEL(el:EL) {
       this.addEventListener('mouseover',el);
       return new EventMouseOver(this);
   }

   @:op(A-B) public inline function removeEl(el:EL) {
       this.removeEventListener('mouseover',el);
       return new EventMouseOver(this);
   }

}


abstract EventMouseOut(Element) {
   public inline function new(el:ELM) this = el;

   @:op(A+B) public inline function addEL(el:EL) {
       this.addEventListener('mouseout',el);
       return new EventMouseOut(this);
   }

   @:op(A-B) public inline function removeEl(el:EL) {
       this.removeEventListener('mouseout',el);
       return new EventMouseOut(this);
   }

}
*/

abstract AttrAccessor(Element) {
    public inline function new(el:ELM) this = el;

    @:arrayAccess
    public inline function set(name:String,value:String) {
        this.setAttribute(name,value);
    }

     @:arrayAccess
    public inline function get(name:String) {
        this.getAttribute(name);
    }

}
/*
abstract EventAccessor(Element) {
    public inline function new(el:ELM) this = el;

    @:arrayAccess
    public inline function set(event:String,el:EL) {
        this.addEventListener(event,el);
    }

    public inline function remove(event:String,el:EL) {
        this.removeEventListener(event,el);
    }

    public var click(get, never):EventClick;
    inline function get_click() return new EventClick(this);

    public var mouseover(get, never):EventMouseOver;
    inline function get_mouseover() return new EventMouseOver(this);

    public var mouseout(get, never):EventMouseOut;
    inline function get_mouseout() return new EventMouseOut(this);


}
*/

@:forward abstract AElement(Element) from Element to Element {

    public inline function new(el:Element) {
        this = el;
    }


    public var on(get, never):Events.EventAccessor;
    inline function get_on() return new Events.EventAccessor(this);

    public var attr(get, never):AttrAccessor;
    inline function get_attr() return new AttrAccessor(this);



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
			return browser_tools.HtmlTools.query(selector,this);
		}


    public var height(get, set):Dynamic;

    inline function get_height():Dynamic {
        return this.style.height;
    }

    inline function set_height(value:Dynamic) {
        return this.style.height = value;
    }

    public var width(get, set):Dynamic;

    inline function get_width():Dynamic {
        return this.style.width;
    }

    inline function set_width(value:Dynamic) {
        return this.style.width = value;
    }

}
