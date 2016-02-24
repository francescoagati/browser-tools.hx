package browser_tools;
import js.html.*;
import js.JQuery;
import js.Browser;
import browser_tools.abstracts.Events.EventAccessor;
import browser_tools.abstracts.AttrAccessor;
import browser_tools.abstracts.ClassesAccessor;
import browser_tools.abstracts.DisplayAccessor;

@:forward abstract AElement(Element) from Element to Element {

    public inline function new(el:Element) {
        this = el;
    }

    public var display(get, never):DisplayAccessor;
    inline function get_display() return new DisplayAccessor(this);


    public var on(get, never):EventAccessor;
    inline function get_on() return new EventAccessor(this);

    public var attr(get, never):AttrAccessor;
    inline function get_attr() return new AttrAccessor(this);

    public var classes(get, never):browser_tools.abstracts.ClassesAccessor;
    inline function get_classes() return new browser_tools.abstracts.ClassesAccessor(this);

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
