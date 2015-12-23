package browser_tools.abstracts;

#if macro
  import haxe.macro.Expr;
#end


#if js
  import async_tools.Cps.*;
  import js.html.Element;
  import browser_tools.events.Helper;
  import browser_tools.animations.fps.Transaction;
  typedef ELMWRAPPER = Element
#else
  typedef ELMWRAPPER = Dynamic
#end



abstract ClassesAccessor(ELMWRAPPER) {
    public inline function new(el:ELMWRAPPER) this = el;

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

    #if js
      public inline function animate_class(cls:String,?property_detect:String = null,cb:Dynamic->Void) {
        var el = new AElement(this);

        var prefix = AnimationTools.get_prefix();
        var event_animation = browser_tools.events.Helper.get_event('AnimationEnd');
        var event_transition = browser_tools.events.Helper.get_event('TransitionEnd');
        var check = false;
        function fn(e) {
          if (check == false) cb(null);
          check = true;
          el.removeEventListener(event_animation,fn);
          el.removeEventListener(event_transition,fn);
          el.classes - cls;
        };

        if (property_detect != null) {
          Transaction.check_for_property_change(el,property_detect,function(response) {
            if (response == false) fn(null);
          });
        }

        el.addEventListener(event_animation,fn);
        el.addEventListener(event_transition,fn);
        el.classes + cls;
        //el.addEventListener('webkitTransitionEnd',fn);



      }
    #end

}
