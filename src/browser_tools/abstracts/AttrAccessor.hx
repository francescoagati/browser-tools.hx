package browser_tools.abstracts;


import js.html.Element;

abstract AttrAccessor(Element) {
    public inline function new(el:Element) this = el;

    @:arrayAccess
    public inline function set(name:String,value:String) {
        this.setAttribute(name,value);
    }

     @:arrayAccess
    public inline function get(name:String) {
        this.getAttribute(name);
    }

}
