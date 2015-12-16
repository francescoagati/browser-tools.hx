package browser_tools;

using browser_tools.AnimationTools;
using StringTools;

class AnimationTools  {

  static var _is_animations_supported:Bool = null;
  public static  var is_animations_supported(get,never):Bool;
  public static inline function get_is_animations_supported():Bool {
    if (_is_animations_supported == null) _is_animations_supported = check_for_animations();
    return _is_animations_supported;
  }


  @:noUsing
  static function check_for_animations():Bool {
    //from https://hacks.mozilla.org/2011/09/detecting-and-generating-css-animations-in-javascript/

    var animation = false,
        animationstring = 'animation',
        keyframeprefix = '',
        domPrefixes = 'Webkit Moz O ms Khtml'.split(' '),
        pfx  = '',
        elm = js.Browser.document.createElement('div');

    if( elm.style.animationName != null ) { animation = true; }

    if( animation == false ) {

      var style:haxe.DynamicAccess<Dynamic> = untyped elm.style;

      for( prefix in domPrefixes) {
        if( style[ prefix + 'AnimationName' ] != null ) {
          pfx = prefix;
          animationstring = pfx + 'Animation';
          keyframeprefix = '-' + pfx.toLowerCase() + '-';
          animation = true;
          break;
        }
      }
    }

    return animation;

  }




  public static inline function opacity_hide(element:AElement,value:String) {
    element.set_opacity('0');
  }


  public static inline function opacity_show(element:AElement,value:String) {
    element.set_opacity('1');
  }

  public static inline function set_opacity(element:AElement,value:String) {
    element.style.opacity = value;
  }


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

    var check_one = false;

    function handler (e) {

      if (check_one == false) {
        check_one = true;
        cb();
        //element.on.transitionend - handler;
        element.removeEventListener('webkitTransitionEnd',handler);
        element.removeEventListener('msTransitionEnd',handler);
        element.removeEventListener('transitionend',handler);
      }
    };

    element.addEventListener('webkitTransitionEnd',handler);
    element.addEventListener('msTransitionEnd',handler);
    element.addEventListener('transitionend',handler);

    //element.on.transitionend + handler;
  }


}
