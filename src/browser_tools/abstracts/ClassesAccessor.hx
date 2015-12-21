package browser_tools.abstracts;

#if macro
  import haxe.macro.Expr;
#end


#if js
  import js.html.Element;
  typedef ELM = Element
#else
  typedef ELM = Dynamic
#end

abstract ClassesAccessor(ELM) {
    public inline function new(el:ELM) this = el;

    public macro function add(ethis:Expr,exprs:Array<ExprOf<Dynamic>>) {
      return macro {
        untyped $ethis.classList.add($a{exprs});
      };
    }

    public macro function remove(ethis:Expr,exprs:Array<ExprOf<Dynamic>>) {
      return macro {
        untyped $ethis.classList.remove($a{exprs});
      };
    }


    public inline function contains(cls:String):Bool return this.classList.contains(cls);
    public inline function toggle(cls:String,b:Bool) return this.classList.toggle(cls,b);


    @:op(A + B) public inline function add_class(cls:String) {
      new ClassesAccessor(this).add(cls);
      return new ClassesAccessor(this);
    }
    @:op(A - B) public inline function remove_class(cls:String) {
      new ClassesAccessor(this).remove(cls);
      return new ClassesAccessor(this);
    }
    @:op(A == B) public inline function contains_class(cls:String):Bool {
      return new ClassesAccessor(this).contains(cls);
    }
}
