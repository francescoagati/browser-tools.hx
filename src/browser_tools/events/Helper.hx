package browser_tools.events;


@:enum
abstract Prefix(String) {
  var ms = 'ms';
  var moz = 'moz';
  var webkit = 'webkit';
  var opera = 'o';
  var not_supported = 'not-supported';
  var not_prefixed = '';
}


class Helper {

  static var _prefix:Prefix = null;
  public static  var prefix(get,never):Prefix;
  public static function get_prefix():Prefix {

    inline function check_stype_property(style:Dynamic,prop:String) return (untyped style[prop]) != null;

    if (_prefix == null) {
       var check = true;
       if (check == true) {
         var style:haxe.DynamicAccess<Dynamic> = untyped js.Browser.document.body.style;
        _prefix =  if (check_stype_property(style,'transform'))
          not_prefixed;
        else if (check_stype_property(style,'msTransform'))
          ms;
        else if (check_stype_property(style,'MozTransform'))
          moz;
        else if (check_stype_property(style,'webkitTransform'))
          webkit;
        else if (check_stype_property(style,'OTransform'))
          opera;
        else
          not_supported;
      } else {
        _prefix = not_supported;
      }
   }

   untyped __js__('

     if("WebkitOpacity" in document.body.style) {0} = "webkit";

   ',_prefix);

   return _prefix;
  }


  public static inline function get_event(event_name:String)
    return if (prefix == not_prefixed) event_name.toLowerCase(); else '${prefix}AnimationEnd';



}
