package browser_tools;




class AnimationTools  {

  public static inline function set_transition(element:AElement,transition:String) {
    HelperAnimationTools.set_vendor_property(element,'transition',transition);
  }

  public static inline function set_transform(element:AElement,transition:String) {
    HelperAnimationTools.set_vendor_property(element,'transform',transition);
  }


  public static inline function set_translate(element:AElement,x:String,y:String) {
    HelperAnimationTools.set_vendor_property(element,'transform','translate($x,$y)');
  }




  public static inline function set_scale(element:AElement,x:String,y:String) {
    HelperAnimationTools.set_vendor_property(element,'transform','scale($x,$y)');
  }

  public static inline function set_scaleX(element:AElement,x:String) {
    HelperAnimationTools.set_vendor_property(element,'transform','scaleX($x)');
  }

  public static inline function set_scaleY(element:AElement,y:String) {
    HelperAnimationTools.set_vendor_property(element,'transform','scaleY($y)');
  }


  public static inline function set_rotate(element:AElement,angle:String) {
    HelperAnimationTools.set_vendor_property(element,'transform','rotate($angle)');
  }



  public static inline function set_translateX(element:AElement,x:String) {
    HelperAnimationTools.set_vendor_property(element,'transform','translateX($x)');
  }

  public static inline function set_translateY(element:AElement,y:String) {
    HelperAnimationTools.set_vendor_property(element,'transform','translateY($y)');
  }

  public static inline function wait_for_end_animation(element:AElement,cb:Void->Void) {

    function handler (e) {
      cb();
      element.on.transitionend - handler;
    };

    element.on.transitionend + handler;
  }


}
