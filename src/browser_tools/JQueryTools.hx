package browser_tools;
import js.html.Element;
import js.JQuery;


class JQueryTools {

  public static inline function setClip(jq:JQuery,x:Int,y:Int,width:Int,height:Int):JQuery {
    return jq.css({
      'top':y,
      'left':x,
      'width':width,
      'height':height
    });
  }


  public static inline function setColor(jq:JQuery,background:String,foreground:String):JQuery {
    return jq.css({'background-color':background,'color':foreground});
  }


  public static inline function setBackgroundImage(jq:JQuery,url:String):JQuery {
    return jq.css({'background-image':'url($url)'});
  }

  @:extern
  public static inline function toJq(selector:String):JQuery {
    return untyped $(selector);
  }

  @:extern
  public static inline function toJqFromElement(element:Element):JQuery {
    return untyped $(element);
  }


  @:extern
  public static inline function toElement(jq:JQuery):Element {
    return jq.get(0);
  }

  @:extern
  public static inline function exists(jq:JQuery):Bool {
    return jq.length > 0;
  }


}
