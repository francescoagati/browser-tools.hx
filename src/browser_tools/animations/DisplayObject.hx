package browser_tools.animations;
import js.html.Element;
using browser_tools.HtmlTools;
import async_tools.Cps.*;

typedef Rect = {
  bottom:Float,
  left:Float,
  right:Float,
  top:Float,
  width:Float,
  height:Float,
  scaleX:Float,
  scaleY:Float,
  rotation:Float,
  ?alpha:Float
}


@:native('transaction_check')
@:keep
class TransactionCheck implements async_tools.Async {

  @:extern public static inline function delete_check() {
    'check_animation_one'.byId().remove_node();
    'check_animation_two'.byId().remove_node();
  }


  @:extern @:async static inline function check_for_transform():Array<Dynamic> {
    var check = 'check_animation_one'.byId();
    var last = check.getBoundingClientRect().left;
    @await wait(300);
    var now = check.getBoundingClientRect().left;
    @await wait(50);
    return  [last-now != 0,last-now];

  }


  @:expose @:async public static inline function check_for_animations(?container:AElement) {

    @await wait(20);

    var html = '

      <style>
          @-webkit-keyframes wave {
            from {
              -webkit-transform: translateX(0);
                      transform: translateX(0);
            }
            to {
              -webkit-transform: translateX(100%);
                      transform: translateX(100%);
            }
          }
          @keyframes wave {
            from {
              -webkit-transform: translateX(0);
                      transform: translateX(0);
            }
            to {
              -webkit-transform: translateX(100%);
                      transform: translateX(100%);
            }
          }
          .check_animate {
            -webkit-animation: wave 500ms ease alternate infinite;
                    animation: wave 500ms ease alternate infinite;
          }

          div.check_animate {
            width: 20px;
            position:fixed;
            bottom:0;
            height: 2px;
          }

          #check_animation_one {
            background-color: white;
            -webkit-transform: translateZ(0);
                    transform: translateZ(0);
            will-change: transform;
          }

          #check_animation_two {
            background-color: #ececec;
          }
      </style>


      <div id="check_animation_one" class="check_animate"></div>
      <div id="check_animation_two" class="check_animate"></div>

    ';

    var div:AElement = html.toNode();


    if (container == null) container = js.Browser.document.body;

    container.appendChild(div);
    @await wait(20);
    var check = @await check_for_transform();
    delete_check();
    return check;
  }


}


abstract DisplayObject(Element) from Element to Element {
  public inline function new(el:Element) this = el;

  public var x(get,set):Float;
  public var y(get,set):Float;
  public var height(get,set):Float;
  public var width(get,set):Float;
  public var visible(get,set):Bool;
  public var scaleX(get,set):Float;
  public var scaleY(get,set):Float;
  public var rotation(get,set):Float;
  public var alpha(get,set):Float;
  public var rect(get,never):Rect;

  var cache(get,set):Rect;

  public  inline function get_cache() {
    return untyped this.cache_rect;
  }
  public  inline function set_cache(value) {
    untyped this.cache_rect = value;
    return null;
  }

  public  inline function get_x() return cache.left;
  public  inline function set_x(value) return untyped null;

  public  inline function get_y() return cache.top;
  public  inline function set_y(value) return untyped null;

  public  inline function get_width() return cache.width;
  public  inline function set_width(value) return untyped null;

  public  inline function get_height() return cache.height;
  public  inline function set_height(value) return untyped null;

  public  inline function get_visible() return this.style.visibility == 'visible';
  public  inline function set_visible(value) return untyped null;

  public  inline function get_scaleX() return cache.scaleX;
  public  inline function set_scaleX(value) return untyped null;

  public  inline function get_scaleY() return cache.scaleY;
  public  inline function set_scaleY(value) return untyped null;

  public  inline function get_rotation() return cache.rotation;
  public  inline function set_rotation(value) return untyped null;

  public  inline function get_alpha() return Std.parseFloat(this.style.opacity);
  public  inline function set_alpha(value) return untyped null;

  inline function check_cache() {
    if (untyped this.cache_rect == null) untyped this.cache_rect = {};
  }

  inline function refresh_cache() {
    check_cache();
    cache = untyped this.getBoundingClientRect();
  }

  public  inline function get_rect() {
    return untyped null;
  }


  public static inline function check_for_animations(cb:Array<Dynamic>->Void) TransactionCheck.check_for_animations(cb);



}
