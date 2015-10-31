

package browser_tools;
import js.html.*;
import js.JQuery;
import js.Browser;

typedef ELM = Element;
typedef EL = Event -> Void;



      abstract EventCompositionend(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("compositionend",el);
             return new EventCompositionend(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("compositionend",el);
             return new EventCompositionend(this);
         }

      }



    


      abstract EventWheel(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("wheel",el);
             return new EventWheel(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("wheel",el);
             return new EventWheel(this);
         }

      }



    


      abstract EventEnded(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("ended",el);
             return new EventEnded(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("ended",el);
             return new EventEnded(this);
         }

      }



    


      abstract EventTimeout(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("timeout",el);
             return new EventTimeout(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("timeout",el);
             return new EventTimeout(this);
         }

      }



    


      abstract EventBlocked(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("blocked",el);
             return new EventBlocked(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("blocked",el);
             return new EventBlocked(this);
         }

      }



    


      abstract EventDOMAttrModified(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("domattrmodified",el);
             return new EventDOMAttrModified(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("domattrmodified",el);
             return new EventDOMAttrModified(this);
         }

      }



    


      abstract EventDragenter(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("dragenter",el);
             return new EventDragenter(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("dragenter",el);
             return new EventDragenter(this);
         }

      }



    


      abstract EventTouchmove(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("touchmove",el);
             return new EventTouchmove(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("touchmove",el);
             return new EventTouchmove(this);
         }

      }



    


      abstract EventComplete(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("complete",el);
             return new EventComplete(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("complete",el);
             return new EventComplete(this);
         }

      }



    


      abstract EventDOMElementNameChanged(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("domelementnamechanged",el);
             return new EventDOMElementNameChanged(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("domelementnamechanged",el);
             return new EventDOMElementNameChanged(this);
         }

      }



    


      abstract EventObsolete(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("obsolete",el);
             return new EventObsolete(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("obsolete",el);
             return new EventObsolete(this);
         }

      }



    


      abstract EventMouseover(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("mouseover",el);
             return new EventMouseover(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("mouseover",el);
             return new EventMouseover(this);
         }

      }



    


      abstract EventGamepaddisconnected(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("gamepaddisconnected",el);
             return new EventGamepaddisconnected(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("gamepaddisconnected",el);
             return new EventGamepaddisconnected(this);
         }

      }



    


      abstract EventDOMAttributeNameChanged(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("domattributenamechanged",el);
             return new EventDOMAttributeNameChanged(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("domattributenamechanged",el);
             return new EventDOMAttributeNameChanged(this);
         }

      }



    


      abstract EventPagehide(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("pagehide",el);
             return new EventPagehide(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("pagehide",el);
             return new EventPagehide(this);
         }

      }



    


      abstract EventSuccess(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("success",el);
             return new EventSuccess(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("success",el);
             return new EventSuccess(this);
         }

      }



    


      abstract EventChange(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("change",el);
             return new EventChange(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("change",el);
             return new EventChange(this);
         }

      }



    


      abstract EventSelect(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("select",el);
             return new EventSelect(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("select",el);
             return new EventSelect(this);
         }

      }



    


      abstract EventDOMSubtreeModified(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("domsubtreemodified",el);
             return new EventDOMSubtreeModified(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("domsubtreemodified",el);
             return new EventDOMSubtreeModified(this);
         }

      }



    


      abstract EventSVGZoom(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("svgzoom",el);
             return new EventSVGZoom(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("svgzoom",el);
             return new EventSVGZoom(this);
         }

      }



    


      abstract EventPlaying(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("playing",el);
             return new EventPlaying(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("playing",el);
             return new EventPlaying(this);
         }

      }



    


      abstract EventMouseenter(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("mouseenter",el);
             return new EventMouseenter(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("mouseenter",el);
             return new EventMouseenter(this);
         }

      }



    


      abstract EventTouchcancel(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("touchcancel",el);
             return new EventTouchcancel(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("touchcancel",el);
             return new EventTouchcancel(this);
         }

      }



    


      abstract EventDevicelight(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("devicelight",el);
             return new EventDevicelight(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("devicelight",el);
             return new EventDevicelight(this);
         }

      }



    


      abstract EventPlay(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("play",el);
             return new EventPlay(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("play",el);
             return new EventPlay(this);
         }

      }



    


      abstract EventShow(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("show",el);
             return new EventShow(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("show",el);
             return new EventShow(this);
         }

      }



    


      abstract EventStorage(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("storage",el);
             return new EventStorage(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("storage",el);
             return new EventStorage(this);
         }

      }



    


      abstract EventInput(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("input",el);
             return new EventInput(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("input",el);
             return new EventInput(this);
         }

      }



    


      abstract EventUpdateready(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("updateready",el);
             return new EventUpdateready(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("updateready",el);
             return new EventUpdateready(this);
         }

      }



    


      abstract EventVisibilitychange(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("visibilitychange",el);
             return new EventVisibilitychange(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("visibilitychange",el);
             return new EventVisibilitychange(this);
         }

      }



    


      abstract EventFullscreenchange(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("fullscreenchange",el);
             return new EventFullscreenchange(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("fullscreenchange",el);
             return new EventFullscreenchange(this);
         }

      }



    


      abstract EventCanplaythrough(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("canplaythrough",el);
             return new EventCanplaythrough(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("canplaythrough",el);
             return new EventCanplaythrough(this);
         }

      }



    


      abstract EventDragleave(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("dragleave",el);
             return new EventDragleave(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("dragleave",el);
             return new EventDragleave(this);
         }

      }



    


      abstract EventOffline(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("offline",el);
             return new EventOffline(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("offline",el);
             return new EventOffline(this);
         }

      }



    


      abstract EventTouchenter(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("touchenter",el);
             return new EventTouchenter(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("touchenter",el);
             return new EventTouchenter(this);
         }

      }



    


      abstract EventBeforeprint(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("beforeprint",el);
             return new EventBeforeprint(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("beforeprint",el);
             return new EventBeforeprint(this);
         }

      }



    


      abstract EventDownloading(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("downloading",el);
             return new EventDownloading(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("downloading",el);
             return new EventDownloading(this);
         }

      }



    


      abstract EventAbort(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("abort",el);
             return new EventAbort(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("abort",el);
             return new EventAbort(this);
         }

      }



    


      abstract EventPageshow(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("pageshow",el);
             return new EventPageshow(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("pageshow",el);
             return new EventPageshow(this);
         }

      }



    


      abstract EventSubmit(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("submit",el);
             return new EventSubmit(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("submit",el);
             return new EventSubmit(this);
         }

      }



    


      abstract EventVersionchange(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("versionchange",el);
             return new EventVersionchange(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("versionchange",el);
             return new EventVersionchange(this);
         }

      }



    


      abstract EventContextmenu(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("contextmenu",el);
             return new EventContextmenu(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("contextmenu",el);
             return new EventContextmenu(this);
         }

      }



    


      abstract EventOpen(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("open",el);
             return new EventOpen(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("open",el);
             return new EventOpen(this);
         }

      }



    


      abstract EventRatechange(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("ratechange",el);
             return new EventRatechange(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("ratechange",el);
             return new EventRatechange(this);
         }

      }



    


      abstract EventPointerout(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("pointerout",el);
             return new EventPointerout(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("pointerout",el);
             return new EventPointerout(this);
         }

      }



    


      abstract EventBeforeunload(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("beforeunload",el);
             return new EventBeforeunload(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("beforeunload",el);
             return new EventBeforeunload(this);
         }

      }



    


      abstract EventDOMCharacterDataModified(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("domcharacterdatamodified",el);
             return new EventDOMCharacterDataModified(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("domcharacterdatamodified",el);
             return new EventDOMCharacterDataModified(this);
         }

      }



    


      abstract EventDragstart(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("dragstart",el);
             return new EventDragstart(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("dragstart",el);
             return new EventDragstart(this);
         }

      }



    


      abstract EventDrop(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("drop",el);
             return new EventDrop(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("drop",el);
             return new EventDrop(this);
         }

      }



    


      abstract EventGotpointercapture(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("gotpointercapture",el);
             return new EventGotpointercapture(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("gotpointercapture",el);
             return new EventGotpointercapture(this);
         }

      }



    


      abstract EventUpgradeneeded(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("upgradeneeded",el);
             return new EventUpgradeneeded(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("upgradeneeded",el);
             return new EventUpgradeneeded(this);
         }

      }



    


      abstract EventSVGError(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("svgerror",el);
             return new EventSVGError(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("svgerror",el);
             return new EventSVGError(this);
         }

      }



    


      abstract EventAfterprint(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("afterprint",el);
             return new EventAfterprint(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("afterprint",el);
             return new EventAfterprint(this);
         }

      }



    


      abstract EventReadystatechange(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("readystatechange",el);
             return new EventReadystatechange(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("readystatechange",el);
             return new EventReadystatechange(this);
         }

      }



    


      abstract EventLanguagechange(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("languagechange",el);
             return new EventLanguagechange(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("languagechange",el);
             return new EventLanguagechange(this);
         }

      }



    


      abstract EventSVGAbort(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("svgabort",el);
             return new EventSVGAbort(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("svgabort",el);
             return new EventSVGAbort(this);
         }

      }



    


      abstract EventSVGResize(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("svgresize",el);
             return new EventSVGResize(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("svgresize",el);
             return new EventSVGResize(this);
         }

      }



    


      abstract EventMousedown(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("mousedown",el);
             return new EventMousedown(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("mousedown",el);
             return new EventMousedown(this);
         }

      }



    


      abstract EventKeydown(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("keydown",el);
             return new EventKeydown(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("keydown",el);
             return new EventKeydown(this);
         }

      }



    


      abstract EventPointerover(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("pointerover",el);
             return new EventPointerover(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("pointerover",el);
             return new EventPointerover(this);
         }

      }



    


      abstract EventWaiting(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("waiting",el);
             return new EventWaiting(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("waiting",el);
             return new EventWaiting(this);
         }

      }



    


      abstract EventPause(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("pause",el);
             return new EventPause(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("pause",el);
             return new EventPause(this);
         }

      }



    


      abstract EventSelectstart(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("selectstart",el);
             return new EventSelectstart(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("selectstart",el);
             return new EventSelectstart(this);
         }

      }



    


      abstract EventTransitionend(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("transitionend",el);
             return new EventTransitionend(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("transitionend",el);
             return new EventTransitionend(this);
         }

      }



    


      abstract EventCanplay(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("canplay",el);
             return new EventCanplay(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("canplay",el);
             return new EventCanplay(this);
         }

      }



    


      abstract EventDurationchange(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("durationchange",el);
             return new EventDurationchange(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("durationchange",el);
             return new EventDurationchange(this);
         }

      }



    


      abstract EventSelectionchange(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("selectionchange",el);
             return new EventSelectionchange(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("selectionchange",el);
             return new EventSelectionchange(this);
         }

      }



    


      abstract EventCopy(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("copy",el);
             return new EventCopy(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("copy",el);
             return new EventCopy(this);
         }

      }



    


      abstract EventDragend(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("dragend",el);
             return new EventDragend(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("dragend",el);
             return new EventDragend(this);
         }

      }



    


      abstract EventSVGUnload(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("svgunload",el);
             return new EventSVGUnload(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("svgunload",el);
             return new EventSVGUnload(this);
         }

      }



    


      abstract EventDblclick(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("dblclick",el);
             return new EventDblclick(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("dblclick",el);
             return new EventDblclick(this);
         }

      }



    


      abstract EventDOMFocusIn(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("domfocusin",el);
             return new EventDOMFocusIn(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("domfocusin",el);
             return new EventDOMFocusIn(this);
         }

      }



    


      abstract EventLoadstart(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("loadstart",el);
             return new EventLoadstart(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("loadstart",el);
             return new EventLoadstart(this);
         }

      }



    


      abstract EventDOMActivate(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("domactivate",el);
             return new EventDOMActivate(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("domactivate",el);
             return new EventDOMActivate(this);
         }

      }



    


      abstract EventDOMNodeInserted(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("domnodeinserted",el);
             return new EventDOMNodeInserted(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("domnodeinserted",el);
             return new EventDOMNodeInserted(this);
         }

      }



    


      abstract EventCached(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("cached",el);
             return new EventCached(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("cached",el);
             return new EventCached(this);
         }

      }



    


      abstract EventBlur(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("blur",el);
             return new EventBlur(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("blur",el);
             return new EventBlur(this);
         }

      }



    


      abstract EventSeeked(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("seeked",el);
             return new EventSeeked(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("seeked",el);
             return new EventSeeked(this);
         }

      }



    


      abstract EventFocus(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("focus",el);
             return new EventFocus(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("focus",el);
             return new EventFocus(this);
         }

      }



    


      abstract EventKeypress(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("keypress",el);
             return new EventKeypress(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("keypress",el);
             return new EventKeypress(this);
         }

      }



    


      abstract EventPointerlockerror(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("pointerlockerror",el);
             return new EventPointerlockerror(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("pointerlockerror",el);
             return new EventPointerlockerror(this);
         }

      }



    


      abstract EventChargingtimechange(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("chargingtimechange",el);
             return new EventChargingtimechange(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("chargingtimechange",el);
             return new EventChargingtimechange(this);
         }

      }



    


      abstract EventVolumechange(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("volumechange",el);
             return new EventVolumechange(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("volumechange",el);
             return new EventVolumechange(this);
         }

      }



    


      abstract EventCompositionstart(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("compositionstart",el);
             return new EventCompositionstart(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("compositionstart",el);
             return new EventCompositionstart(this);
         }

      }



    


      abstract EventMouseout(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("mouseout",el);
             return new EventMouseout(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("mouseout",el);
             return new EventMouseout(this);
         }

      }



    


      abstract EventAnimationstart(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("animationstart",el);
             return new EventAnimationstart(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("animationstart",el);
             return new EventAnimationstart(this);
         }

      }



    


      abstract EventDeviceproximity(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("deviceproximity",el);
             return new EventDeviceproximity(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("deviceproximity",el);
             return new EventDeviceproximity(this);
         }

      }



    


      abstract EventLoadend(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("loadend",el);
             return new EventLoadend(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("loadend",el);
             return new EventLoadend(this);
         }

      }



    


      abstract EventPointerenter(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("pointerenter",el);
             return new EventPointerenter(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("pointerenter",el);
             return new EventPointerenter(this);
         }

      }



    


      abstract EventDOMFocusOut(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("domfocusout",el);
             return new EventDOMFocusOut(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("domfocusout",el);
             return new EventDOMFocusOut(this);
         }

      }



    


      abstract EventDrag(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("drag",el);
             return new EventDrag(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("drag",el);
             return new EventDrag(this);
         }

      }



    


      abstract EventSuspend(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("suspend",el);
             return new EventSuspend(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("suspend",el);
             return new EventSuspend(this);
         }

      }



    


      abstract EventPaste(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("paste",el);
             return new EventPaste(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("paste",el);
             return new EventPaste(this);
         }

      }



    


      abstract EventDeviceorientation(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("deviceorientation",el);
             return new EventDeviceorientation(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("deviceorientation",el);
             return new EventDeviceorientation(this);
         }

      }



    


      abstract EventMouseleave(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("mouseleave",el);
             return new EventMouseleave(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("mouseleave",el);
             return new EventMouseleave(this);
         }

      }



    


      abstract EventFullscreenerror(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("fullscreenerror",el);
             return new EventFullscreenerror(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("fullscreenerror",el);
             return new EventFullscreenerror(this);
         }

      }



    


      abstract EventTouchstart(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("touchstart",el);
             return new EventTouchstart(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("touchstart",el);
             return new EventTouchstart(this);
         }

      }



    


      abstract EventDischargingtimechange(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("dischargingtimechange",el);
             return new EventDischargingtimechange(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("dischargingtimechange",el);
             return new EventDischargingtimechange(this);
         }

      }



    


      abstract EventChargingchange(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("chargingchange",el);
             return new EventChargingchange(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("chargingchange",el);
             return new EventChargingchange(this);
         }

      }



    


      abstract EventMessage(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("message",el);
             return new EventMessage(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("message",el);
             return new EventMessage(this);
         }

      }



    


      abstract EventPointerdown(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("pointerdown",el);
             return new EventPointerdown(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("pointerdown",el);
             return new EventPointerdown(this);
         }

      }



    


      abstract EventEndEvent(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("endevent",el);
             return new EventEndEvent(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("endevent",el);
             return new EventEndEvent(this);
         }

      }



    


      abstract EventDevicemotion(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("devicemotion",el);
             return new EventDevicemotion(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("devicemotion",el);
             return new EventDevicemotion(this);
         }

      }



    


      abstract EventPointerlockchange(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("pointerlockchange",el);
             return new EventPointerlockchange(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("pointerlockchange",el);
             return new EventPointerlockchange(this);
         }

      }



    


      abstract EventResize(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("resize",el);
             return new EventResize(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("resize",el);
             return new EventResize(this);
         }

      }



    


      abstract EventTouchleave(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("touchleave",el);
             return new EventTouchleave(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("touchleave",el);
             return new EventTouchleave(this);
         }

      }



    


      abstract EventPointercancel(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("pointercancel",el);
             return new EventPointercancel(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("pointercancel",el);
             return new EventPointercancel(this);
         }

      }



    


      abstract EventProgress(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("progress",el);
             return new EventProgress(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("progress",el);
             return new EventProgress(this);
         }

      }



    


      abstract EventCut(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("cut",el);
             return new EventCut(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("cut",el);
             return new EventCut(this);
         }

      }



    


      abstract EventPointerleave(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("pointerleave",el);
             return new EventPointerleave(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("pointerleave",el);
             return new EventPointerleave(this);
         }

      }



    


      abstract EventAnimationend(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("animationend",el);
             return new EventAnimationend(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("animationend",el);
             return new EventAnimationend(this);
         }

      }



    


      abstract EventLoadeddata(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("loadeddata",el);
             return new EventLoadeddata(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("loadeddata",el);
             return new EventLoadeddata(this);
         }

      }



    


      abstract EventOnline(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("online",el);
             return new EventOnline(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("online",el);
             return new EventOnline(this);
         }

      }



    


      abstract EventSVGScroll(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("svgscroll",el);
             return new EventSVGScroll(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("svgscroll",el);
             return new EventSVGScroll(this);
         }

      }



    


      abstract EventClick(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("click",el);
             return new EventClick(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("click",el);
             return new EventClick(this);
         }

      }



    


      abstract EventDOMNodeRemoved(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("domnoderemoved",el);
             return new EventDOMNodeRemoved(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("domnoderemoved",el);
             return new EventDOMNodeRemoved(this);
         }

      }



    


      abstract EventEmptied(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("emptied",el);
             return new EventEmptied(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("emptied",el);
             return new EventEmptied(this);
         }

      }



    


      abstract EventError(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("error",el);
             return new EventError(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("error",el);
             return new EventError(this);
         }

      }



    


      abstract EventDOMNodeInsertedIntoDocument(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("domnodeinsertedintodocument",el);
             return new EventDOMNodeInsertedIntoDocument(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("domnodeinsertedintodocument",el);
             return new EventDOMNodeInsertedIntoDocument(this);
         }

      }



    


      abstract EventScroll(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("scroll",el);
             return new EventScroll(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("scroll",el);
             return new EventScroll(this);
         }

      }



    


      abstract EventLevelchange(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("levelchange",el);
             return new EventLevelchange(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("levelchange",el);
             return new EventLevelchange(this);
         }

      }



    


      abstract EventTouchend(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("touchend",el);
             return new EventTouchend(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("touchend",el);
             return new EventTouchend(this);
         }

      }



    


      abstract EventLoad(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("load",el);
             return new EventLoad(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("load",el);
             return new EventLoad(this);
         }

      }



    


      abstract EventUnload(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("unload",el);
             return new EventUnload(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("unload",el);
             return new EventUnload(this);
         }

      }



    


      abstract EventDOMContentLoaded(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("domcontentloaded",el);
             return new EventDOMContentLoaded(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("domcontentloaded",el);
             return new EventDOMContentLoaded(this);
         }

      }



    


      abstract EventMouseup(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("mouseup",el);
             return new EventMouseup(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("mouseup",el);
             return new EventMouseup(this);
         }

      }



    


      abstract EventOrientationchange(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("orientationchange",el);
             return new EventOrientationchange(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("orientationchange",el);
             return new EventOrientationchange(this);
         }

      }



    


      abstract EventUserproximity(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("userproximity",el);
             return new EventUserproximity(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("userproximity",el);
             return new EventUserproximity(this);
         }

      }



    


      abstract EventAudioprocess(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("audioprocess",el);
             return new EventAudioprocess(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("audioprocess",el);
             return new EventAudioprocess(this);
         }

      }



    


      abstract EventLostpointercapture(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("lostpointercapture",el);
             return new EventLostpointercapture(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("lostpointercapture",el);
             return new EventLostpointercapture(this);
         }

      }



    


      abstract EventSeeking(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("seeking",el);
             return new EventSeeking(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("seeking",el);
             return new EventSeeking(this);
         }

      }



    


      abstract EventAnimationiteration(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("animationiteration",el);
             return new EventAnimationiteration(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("animationiteration",el);
             return new EventAnimationiteration(this);
         }

      }



    


      abstract EventBeginEvent(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("beginevent",el);
             return new EventBeginEvent(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("beginevent",el);
             return new EventBeginEvent(this);
         }

      }



    


      abstract EventReset(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("reset",el);
             return new EventReset(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("reset",el);
             return new EventReset(this);
         }

      }



    


      abstract EventDragover(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("dragover",el);
             return new EventDragover(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("dragover",el);
             return new EventDragover(this);
         }

      }



    


      abstract EventHashchange(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("hashchange",el);
             return new EventHashchange(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("hashchange",el);
             return new EventHashchange(this);
         }

      }



    


      abstract EventInvalid(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("invalid",el);
             return new EventInvalid(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("invalid",el);
             return new EventInvalid(this);
         }

      }



    


      abstract EventSVGLoad(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("svgload",el);
             return new EventSVGLoad(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("svgload",el);
             return new EventSVGLoad(this);
         }

      }



    


      abstract EventCompositionupdate(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("compositionupdate",el);
             return new EventCompositionupdate(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("compositionupdate",el);
             return new EventCompositionupdate(this);
         }

      }



    


      abstract EventStalled(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("stalled",el);
             return new EventStalled(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("stalled",el);
             return new EventStalled(this);
         }

      }



    


      abstract EventChecking(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("checking",el);
             return new EventChecking(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("checking",el);
             return new EventChecking(this);
         }

      }



    


      abstract EventNoupdate(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("noupdate",el);
             return new EventNoupdate(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("noupdate",el);
             return new EventNoupdate(this);
         }

      }



    


      abstract EventPointermove(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("pointermove",el);
             return new EventPointermove(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("pointermove",el);
             return new EventPointermove(this);
         }

      }



    


      abstract EventLoadedmetadata(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("loadedmetadata",el);
             return new EventLoadedmetadata(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("loadedmetadata",el);
             return new EventLoadedmetadata(this);
         }

      }



    


      abstract EventDOMNodeRemovedFromDocument(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("domnoderemovedfromdocument",el);
             return new EventDOMNodeRemovedFromDocument(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("domnoderemovedfromdocument",el);
             return new EventDOMNodeRemovedFromDocument(this);
         }

      }



    


      abstract EventRepeatEvent(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("repeatevent",el);
             return new EventRepeatEvent(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("repeatevent",el);
             return new EventRepeatEvent(this);
         }

      }



    


      abstract EventClose(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("close",el);
             return new EventClose(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("close",el);
             return new EventClose(this);
         }

      }



    


      abstract EventGamepadconnected(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("gamepadconnected",el);
             return new EventGamepadconnected(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("gamepadconnected",el);
             return new EventGamepadconnected(this);
         }

      }



    


      abstract EventPointerup(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("pointerup",el);
             return new EventPointerup(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("pointerup",el);
             return new EventPointerup(this);
         }

      }



    


      abstract EventKeyup(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("keyup",el);
             return new EventKeyup(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("keyup",el);
             return new EventKeyup(this);
         }

      }



    


      abstract EventMousemove(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("mousemove",el);
             return new EventMousemove(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("mousemove",el);
             return new EventMousemove(this);
         }

      }



    


      abstract EventTimeupdate(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("timeupdate",el);
             return new EventTimeupdate(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("timeupdate",el);
             return new EventTimeupdate(this);
         }

      }



    


      abstract EventPopstate(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEventListener(el:Event -> Void) {
             this.addEventListener("popstate",el);
             return new EventPopstate(this);
         }

         @:op(A-B) public inline function removeEventListener(el:Event -> Void) {
             this.removeEventListener("popstate",el);
             return new EventPopstate(this);
         }

      }



    

abstract EventAccessor(Element) {
    public inline function new(el:ELM) this = el;

    @:arrayAccess
    public inline function set(event:String,el:EL) {
        this.addEventListener(event,el);
    }

    public inline function remove(event:String,el:EL) {
        this.removeEventListener(event,el);
    }

    
        public var compositionend(get, never):EventCompositionend;
        inline function get_compositionend() return new EventCompositionend(this);
      

        public var wheel(get, never):EventWheel;
        inline function get_wheel() return new EventWheel(this);
      

        public var ended(get, never):EventEnded;
        inline function get_ended() return new EventEnded(this);
      

        public var timeout(get, never):EventTimeout;
        inline function get_timeout() return new EventTimeout(this);
      

        public var blocked(get, never):EventBlocked;
        inline function get_blocked() return new EventBlocked(this);
      

        public var domattrmodified(get, never):EventDOMAttrModified;
        inline function get_domattrmodified() return new EventDOMAttrModified(this);
      

        public var dragenter(get, never):EventDragenter;
        inline function get_dragenter() return new EventDragenter(this);
      

        public var touchmove(get, never):EventTouchmove;
        inline function get_touchmove() return new EventTouchmove(this);
      

        public var complete(get, never):EventComplete;
        inline function get_complete() return new EventComplete(this);
      

        public var domelementnamechanged(get, never):EventDOMElementNameChanged;
        inline function get_domelementnamechanged() return new EventDOMElementNameChanged(this);
      

        public var obsolete(get, never):EventObsolete;
        inline function get_obsolete() return new EventObsolete(this);
      

        public var mouseover(get, never):EventMouseover;
        inline function get_mouseover() return new EventMouseover(this);
      

        public var gamepaddisconnected(get, never):EventGamepaddisconnected;
        inline function get_gamepaddisconnected() return new EventGamepaddisconnected(this);
      

        public var domattributenamechanged(get, never):EventDOMAttributeNameChanged;
        inline function get_domattributenamechanged() return new EventDOMAttributeNameChanged(this);
      

        public var pagehide(get, never):EventPagehide;
        inline function get_pagehide() return new EventPagehide(this);
      

        public var success(get, never):EventSuccess;
        inline function get_success() return new EventSuccess(this);
      

        public var change(get, never):EventChange;
        inline function get_change() return new EventChange(this);
      

        public var select(get, never):EventSelect;
        inline function get_select() return new EventSelect(this);
      

        public var domsubtreemodified(get, never):EventDOMSubtreeModified;
        inline function get_domsubtreemodified() return new EventDOMSubtreeModified(this);
      

        public var svgzoom(get, never):EventSVGZoom;
        inline function get_svgzoom() return new EventSVGZoom(this);
      

        public var playing(get, never):EventPlaying;
        inline function get_playing() return new EventPlaying(this);
      

        public var mouseenter(get, never):EventMouseenter;
        inline function get_mouseenter() return new EventMouseenter(this);
      

        public var touchcancel(get, never):EventTouchcancel;
        inline function get_touchcancel() return new EventTouchcancel(this);
      

        public var devicelight(get, never):EventDevicelight;
        inline function get_devicelight() return new EventDevicelight(this);
      

        public var play(get, never):EventPlay;
        inline function get_play() return new EventPlay(this);
      

        public var show(get, never):EventShow;
        inline function get_show() return new EventShow(this);
      

        public var storage(get, never):EventStorage;
        inline function get_storage() return new EventStorage(this);
      

        public var input(get, never):EventInput;
        inline function get_input() return new EventInput(this);
      

        public var updateready(get, never):EventUpdateready;
        inline function get_updateready() return new EventUpdateready(this);
      

        public var visibilitychange(get, never):EventVisibilitychange;
        inline function get_visibilitychange() return new EventVisibilitychange(this);
      

        public var fullscreenchange(get, never):EventFullscreenchange;
        inline function get_fullscreenchange() return new EventFullscreenchange(this);
      

        public var canplaythrough(get, never):EventCanplaythrough;
        inline function get_canplaythrough() return new EventCanplaythrough(this);
      

        public var dragleave(get, never):EventDragleave;
        inline function get_dragleave() return new EventDragleave(this);
      

        public var offline(get, never):EventOffline;
        inline function get_offline() return new EventOffline(this);
      

        public var touchenter(get, never):EventTouchenter;
        inline function get_touchenter() return new EventTouchenter(this);
      

        public var beforeprint(get, never):EventBeforeprint;
        inline function get_beforeprint() return new EventBeforeprint(this);
      

        public var downloading(get, never):EventDownloading;
        inline function get_downloading() return new EventDownloading(this);
      

        public var abort(get, never):EventAbort;
        inline function get_abort() return new EventAbort(this);
      

        public var pageshow(get, never):EventPageshow;
        inline function get_pageshow() return new EventPageshow(this);
      

        public var submit(get, never):EventSubmit;
        inline function get_submit() return new EventSubmit(this);
      

        public var versionchange(get, never):EventVersionchange;
        inline function get_versionchange() return new EventVersionchange(this);
      

        public var contextmenu(get, never):EventContextmenu;
        inline function get_contextmenu() return new EventContextmenu(this);
      

        public var open(get, never):EventOpen;
        inline function get_open() return new EventOpen(this);
      

        public var ratechange(get, never):EventRatechange;
        inline function get_ratechange() return new EventRatechange(this);
      

        public var pointerout(get, never):EventPointerout;
        inline function get_pointerout() return new EventPointerout(this);
      

        public var beforeunload(get, never):EventBeforeunload;
        inline function get_beforeunload() return new EventBeforeunload(this);
      

        public var domcharacterdatamodified(get, never):EventDOMCharacterDataModified;
        inline function get_domcharacterdatamodified() return new EventDOMCharacterDataModified(this);
      

        public var dragstart(get, never):EventDragstart;
        inline function get_dragstart() return new EventDragstart(this);
      

        public var drop(get, never):EventDrop;
        inline function get_drop() return new EventDrop(this);
      

        public var gotpointercapture(get, never):EventGotpointercapture;
        inline function get_gotpointercapture() return new EventGotpointercapture(this);
      

        public var upgradeneeded(get, never):EventUpgradeneeded;
        inline function get_upgradeneeded() return new EventUpgradeneeded(this);
      

        public var svgerror(get, never):EventSVGError;
        inline function get_svgerror() return new EventSVGError(this);
      

        public var afterprint(get, never):EventAfterprint;
        inline function get_afterprint() return new EventAfterprint(this);
      

        public var readystatechange(get, never):EventReadystatechange;
        inline function get_readystatechange() return new EventReadystatechange(this);
      

        public var languagechange(get, never):EventLanguagechange;
        inline function get_languagechange() return new EventLanguagechange(this);
      

        public var svgabort(get, never):EventSVGAbort;
        inline function get_svgabort() return new EventSVGAbort(this);
      

        public var svgresize(get, never):EventSVGResize;
        inline function get_svgresize() return new EventSVGResize(this);
      

        public var mousedown(get, never):EventMousedown;
        inline function get_mousedown() return new EventMousedown(this);
      

        public var keydown(get, never):EventKeydown;
        inline function get_keydown() return new EventKeydown(this);
      

        public var pointerover(get, never):EventPointerover;
        inline function get_pointerover() return new EventPointerover(this);
      

        public var waiting(get, never):EventWaiting;
        inline function get_waiting() return new EventWaiting(this);
      

        public var pause(get, never):EventPause;
        inline function get_pause() return new EventPause(this);
      

        public var selectstart(get, never):EventSelectstart;
        inline function get_selectstart() return new EventSelectstart(this);
      

        public var transitionend(get, never):EventTransitionend;
        inline function get_transitionend() return new EventTransitionend(this);
      

        public var canplay(get, never):EventCanplay;
        inline function get_canplay() return new EventCanplay(this);
      

        public var durationchange(get, never):EventDurationchange;
        inline function get_durationchange() return new EventDurationchange(this);
      

        public var selectionchange(get, never):EventSelectionchange;
        inline function get_selectionchange() return new EventSelectionchange(this);
      

        public var copy(get, never):EventCopy;
        inline function get_copy() return new EventCopy(this);
      

        public var dragend(get, never):EventDragend;
        inline function get_dragend() return new EventDragend(this);
      

        public var svgunload(get, never):EventSVGUnload;
        inline function get_svgunload() return new EventSVGUnload(this);
      

        public var dblclick(get, never):EventDblclick;
        inline function get_dblclick() return new EventDblclick(this);
      

        public var domfocusin(get, never):EventDOMFocusIn;
        inline function get_domfocusin() return new EventDOMFocusIn(this);
      

        public var loadstart(get, never):EventLoadstart;
        inline function get_loadstart() return new EventLoadstart(this);
      

        public var domactivate(get, never):EventDOMActivate;
        inline function get_domactivate() return new EventDOMActivate(this);
      

        public var domnodeinserted(get, never):EventDOMNodeInserted;
        inline function get_domnodeinserted() return new EventDOMNodeInserted(this);
      

        public var cached(get, never):EventCached;
        inline function get_cached() return new EventCached(this);
      

        public var blur(get, never):EventBlur;
        inline function get_blur() return new EventBlur(this);
      

        public var seeked(get, never):EventSeeked;
        inline function get_seeked() return new EventSeeked(this);
      

        public var focus(get, never):EventFocus;
        inline function get_focus() return new EventFocus(this);
      

        public var keypress(get, never):EventKeypress;
        inline function get_keypress() return new EventKeypress(this);
      

        public var pointerlockerror(get, never):EventPointerlockerror;
        inline function get_pointerlockerror() return new EventPointerlockerror(this);
      

        public var chargingtimechange(get, never):EventChargingtimechange;
        inline function get_chargingtimechange() return new EventChargingtimechange(this);
      

        public var volumechange(get, never):EventVolumechange;
        inline function get_volumechange() return new EventVolumechange(this);
      

        public var compositionstart(get, never):EventCompositionstart;
        inline function get_compositionstart() return new EventCompositionstart(this);
      

        public var mouseout(get, never):EventMouseout;
        inline function get_mouseout() return new EventMouseout(this);
      

        public var animationstart(get, never):EventAnimationstart;
        inline function get_animationstart() return new EventAnimationstart(this);
      

        public var deviceproximity(get, never):EventDeviceproximity;
        inline function get_deviceproximity() return new EventDeviceproximity(this);
      

        public var loadend(get, never):EventLoadend;
        inline function get_loadend() return new EventLoadend(this);
      

        public var pointerenter(get, never):EventPointerenter;
        inline function get_pointerenter() return new EventPointerenter(this);
      

        public var domfocusout(get, never):EventDOMFocusOut;
        inline function get_domfocusout() return new EventDOMFocusOut(this);
      

        public var drag(get, never):EventDrag;
        inline function get_drag() return new EventDrag(this);
      

        public var suspend(get, never):EventSuspend;
        inline function get_suspend() return new EventSuspend(this);
      

        public var paste(get, never):EventPaste;
        inline function get_paste() return new EventPaste(this);
      

        public var deviceorientation(get, never):EventDeviceorientation;
        inline function get_deviceorientation() return new EventDeviceorientation(this);
      

        public var mouseleave(get, never):EventMouseleave;
        inline function get_mouseleave() return new EventMouseleave(this);
      

        public var fullscreenerror(get, never):EventFullscreenerror;
        inline function get_fullscreenerror() return new EventFullscreenerror(this);
      

        public var touchstart(get, never):EventTouchstart;
        inline function get_touchstart() return new EventTouchstart(this);
      

        public var dischargingtimechange(get, never):EventDischargingtimechange;
        inline function get_dischargingtimechange() return new EventDischargingtimechange(this);
      

        public var chargingchange(get, never):EventChargingchange;
        inline function get_chargingchange() return new EventChargingchange(this);
      

        public var message(get, never):EventMessage;
        inline function get_message() return new EventMessage(this);
      

        public var pointerdown(get, never):EventPointerdown;
        inline function get_pointerdown() return new EventPointerdown(this);
      

        public var endevent(get, never):EventEndEvent;
        inline function get_endevent() return new EventEndEvent(this);
      

        public var devicemotion(get, never):EventDevicemotion;
        inline function get_devicemotion() return new EventDevicemotion(this);
      

        public var pointerlockchange(get, never):EventPointerlockchange;
        inline function get_pointerlockchange() return new EventPointerlockchange(this);
      

        public var resize(get, never):EventResize;
        inline function get_resize() return new EventResize(this);
      

        public var touchleave(get, never):EventTouchleave;
        inline function get_touchleave() return new EventTouchleave(this);
      

        public var pointercancel(get, never):EventPointercancel;
        inline function get_pointercancel() return new EventPointercancel(this);
      

        public var progress(get, never):EventProgress;
        inline function get_progress() return new EventProgress(this);
      

        public var cut(get, never):EventCut;
        inline function get_cut() return new EventCut(this);
      

        public var pointerleave(get, never):EventPointerleave;
        inline function get_pointerleave() return new EventPointerleave(this);
      

        public var animationend(get, never):EventAnimationend;
        inline function get_animationend() return new EventAnimationend(this);
      

        public var loadeddata(get, never):EventLoadeddata;
        inline function get_loadeddata() return new EventLoadeddata(this);
      

        public var online(get, never):EventOnline;
        inline function get_online() return new EventOnline(this);
      

        public var svgscroll(get, never):EventSVGScroll;
        inline function get_svgscroll() return new EventSVGScroll(this);
      

        public var click(get, never):EventClick;
        inline function get_click() return new EventClick(this);
      

        public var domnoderemoved(get, never):EventDOMNodeRemoved;
        inline function get_domnoderemoved() return new EventDOMNodeRemoved(this);
      

        public var emptied(get, never):EventEmptied;
        inline function get_emptied() return new EventEmptied(this);
      

        public var error(get, never):EventError;
        inline function get_error() return new EventError(this);
      

        public var domnodeinsertedintodocument(get, never):EventDOMNodeInsertedIntoDocument;
        inline function get_domnodeinsertedintodocument() return new EventDOMNodeInsertedIntoDocument(this);
      

        public var scroll(get, never):EventScroll;
        inline function get_scroll() return new EventScroll(this);
      

        public var levelchange(get, never):EventLevelchange;
        inline function get_levelchange() return new EventLevelchange(this);
      

        public var touchend(get, never):EventTouchend;
        inline function get_touchend() return new EventTouchend(this);
      

        public var load(get, never):EventLoad;
        inline function get_load() return new EventLoad(this);
      

        public var unload(get, never):EventUnload;
        inline function get_unload() return new EventUnload(this);
      

        public var domcontentloaded(get, never):EventDOMContentLoaded;
        inline function get_domcontentloaded() return new EventDOMContentLoaded(this);
      

        public var mouseup(get, never):EventMouseup;
        inline function get_mouseup() return new EventMouseup(this);
      

        public var orientationchange(get, never):EventOrientationchange;
        inline function get_orientationchange() return new EventOrientationchange(this);
      

        public var userproximity(get, never):EventUserproximity;
        inline function get_userproximity() return new EventUserproximity(this);
      

        public var audioprocess(get, never):EventAudioprocess;
        inline function get_audioprocess() return new EventAudioprocess(this);
      

        public var lostpointercapture(get, never):EventLostpointercapture;
        inline function get_lostpointercapture() return new EventLostpointercapture(this);
      

        public var seeking(get, never):EventSeeking;
        inline function get_seeking() return new EventSeeking(this);
      

        public var animationiteration(get, never):EventAnimationiteration;
        inline function get_animationiteration() return new EventAnimationiteration(this);
      

        public var beginevent(get, never):EventBeginEvent;
        inline function get_beginevent() return new EventBeginEvent(this);
      

        public var reset(get, never):EventReset;
        inline function get_reset() return new EventReset(this);
      

        public var dragover(get, never):EventDragover;
        inline function get_dragover() return new EventDragover(this);
      

        public var hashchange(get, never):EventHashchange;
        inline function get_hashchange() return new EventHashchange(this);
      

        public var invalid(get, never):EventInvalid;
        inline function get_invalid() return new EventInvalid(this);
      

        public var svgload(get, never):EventSVGLoad;
        inline function get_svgload() return new EventSVGLoad(this);
      

        public var compositionupdate(get, never):EventCompositionupdate;
        inline function get_compositionupdate() return new EventCompositionupdate(this);
      

        public var stalled(get, never):EventStalled;
        inline function get_stalled() return new EventStalled(this);
      

        public var checking(get, never):EventChecking;
        inline function get_checking() return new EventChecking(this);
      

        public var noupdate(get, never):EventNoupdate;
        inline function get_noupdate() return new EventNoupdate(this);
      

        public var pointermove(get, never):EventPointermove;
        inline function get_pointermove() return new EventPointermove(this);
      

        public var loadedmetadata(get, never):EventLoadedmetadata;
        inline function get_loadedmetadata() return new EventLoadedmetadata(this);
      

        public var domnoderemovedfromdocument(get, never):EventDOMNodeRemovedFromDocument;
        inline function get_domnoderemovedfromdocument() return new EventDOMNodeRemovedFromDocument(this);
      

        public var repeatevent(get, never):EventRepeatEvent;
        inline function get_repeatevent() return new EventRepeatEvent(this);
      

        public var close(get, never):EventClose;
        inline function get_close() return new EventClose(this);
      

        public var gamepadconnected(get, never):EventGamepadconnected;
        inline function get_gamepadconnected() return new EventGamepadconnected(this);
      

        public var pointerup(get, never):EventPointerup;
        inline function get_pointerup() return new EventPointerup(this);
      

        public var keyup(get, never):EventKeyup;
        inline function get_keyup() return new EventKeyup(this);
      

        public var mousemove(get, never):EventMousemove;
        inline function get_mousemove() return new EventMousemove(this);
      

        public var timeupdate(get, never):EventTimeupdate;
        inline function get_timeupdate() return new EventTimeupdate(this);
      

        public var popstate(get, never):EventPopstate;
        inline function get_popstate() return new EventPopstate(this);
      
}


class Events {}


    