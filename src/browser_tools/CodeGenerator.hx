package browser_tools;
using StringTools;
using Lambda;

class CodeGenerator {

  public static inline function template(event) {

    return '

      abstract Event${event}(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("${event.toLowerCase()}",el);
             return new Event${event}(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("${event.toLowerCase()}",el);
             return new Event${event}(this);
         }

      }



    ';

  }

  inline static function capitalize(s:String) return s.substr(0,1).toUpperCase() + s.substr(1);


  public static function main() {



    var keys = new haxe.ds.StringMap<String>();

    var list = get_events()
      .split("\n")
      .map(function(s) { return s.trim().split(" ")[0]; })
      .map(function(s) { return capitalize(s); })
      .filter(function(s) { return s.length > 1; });

    for (event in list) keys.set(event,'');

    var events = [for (key in keys.keys()) key];




    var output:String = [for (event in events) template(event)].join("\n");

    var events_accessors:String = [for (event in events)
      '
        public var mouse${event}(get, never):Event${capitalize(event)};
        inline function get_${event}() return new Event${capitalize(event)}(this);
      '
    ].join("\n");


    trace(events);

    var code = '

package browser_tools;
import js.html.*;
import js.JQuery;
import js.Browser;

typedef ELM = Element;
typedef EL = Event -> Void;

$output

abstract EventAccessor(Element) {
    public inline function new(el:ELM) this = el;

    @:arrayAccess
    public inline function set(event:String,el:EL) {
        this.addEventListener(event,el);
    }

    public inline function remove(event:String,el:EL) {
        this.removeEventListener(event,el);
    }

    ${events_accessors}
}


class Events {}


    ';


    sys.io.File.saveContent('src/browser_tools/Events.hx',code);


  }


static function get_events() {


  return '

  abort
  afterprint
  animationend
  animationiteration
  animationstart
  audioprocess
  beforeprint
  beforeunload
  beginEvent
  blocked
  blur
  cached
  canplay
  canplaythrough
  change
  chargingchange
  chargingtimechange
  checking
  click
  close
  complete
  complete
  compositionend
  compositionstart
  compositionupdate
  contextmenu
  copy
  cut
  dblclick
  devicelight
  devicemotion
  deviceorientation
  deviceproximity
  dischargingtimechange
  DOMActivate
  DOMAttributeNameChanged
  DOMAttrModified
  DOMCharacterDataModified
  DOMContentLoaded
  DOMElementNameChanged
  DOMFocusIn   Unimplemented
  DOMFocusOut   Unimplemented
  DOMNodeInserted
  DOMNodeInsertedIntoDocument
  DOMNodeRemoved
  DOMNodeRemovedFromDocument
  DOMSubtreeModified
  downloading
  drag
  dragend
  dragenter
  dragleave
  dragover
  dragstart
  drop
  durationchange
  emptied
  ended
  ended
  endEvent
  error
  error
  error
  error
  error
  error
  focus
  focusinUnimplemented (see bug 687787)
  focusoutUnimplemented (see bug 687787)
  fullscreenchange
  fullscreenerror
  gamepadconnected
  gamepaddisconnected
  gotpointercapture
  hashchange
  lostpointercapture
  input
  invalid
  keydown
  keypress
  keyup
  languagechange
  levelchange
  load
  load
  loadeddata
  loadedmetadata
  loadend
  loadstart
  message
  message
  message
  message
  mousedown
  mouseenter
  mouseleave
  mousemove
  mouseout
  mouseover
  mouseup
  noupdate
  obsolete
  offline
  online
  open
  open
  orientationchange
  pagehide
  pageshow
  paste
  pause
  pointercancel
  pointerdown
  pointerenter
  pointerleave
  pointerlockchange
  pointerlockerror
  pointermove
  pointerout
  pointerover
  pointerup
  play
  playing
  popstate
  progress
  progress
  ratechange
  readystatechange
  repeatEvent
  reset
  resize
  scroll
  seeked
  seeking
  select
  selectstart
  selectionchange
  show
  stalled
  storage
  submit
  success
  suspend
  SVGAbort
  SVGError
  SVGLoad
  SVGResize
  SVGScroll
  SVGUnload
  SVGZoom
  timeout
  timeupdate
  touchcancel
  touchend
  touchenter
  touchleave
  touchmove
  touchstart
  transitionend
  unload
  updateready
  upgradeneeded
  userproximity
  versionchange
  visibilitychange
  volumechange
  waiting
  wheel


  ';



}


}
