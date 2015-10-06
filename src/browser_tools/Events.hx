

package browser_tools;
import js.html.*;
import js.JQuery;
import js.Browser;

typedef ELM = Element;
typedef EL = Event -> Void;



      abstract EventCompositionend(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("compositionend",el);
             return new EventCompositionend(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("compositionend",el);
             return new EventCompositionend(this);
         }

      }



    


      abstract EventWheel(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("wheel",el);
             return new EventWheel(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("wheel",el);
             return new EventWheel(this);
         }

      }



    


      abstract EventEnded(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("ended",el);
             return new EventEnded(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("ended",el);
             return new EventEnded(this);
         }

      }



    


      abstract EventTimeout(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("timeout",el);
             return new EventTimeout(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("timeout",el);
             return new EventTimeout(this);
         }

      }



    


      abstract EventBlocked(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("blocked",el);
             return new EventBlocked(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("blocked",el);
             return new EventBlocked(this);
         }

      }



    


      abstract EventDOMAttrModified(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("domattrmodified",el);
             return new EventDOMAttrModified(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("domattrmodified",el);
             return new EventDOMAttrModified(this);
         }

      }



    


      abstract EventDragenter(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("dragenter",el);
             return new EventDragenter(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("dragenter",el);
             return new EventDragenter(this);
         }

      }



    


      abstract EventTouchmove(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("touchmove",el);
             return new EventTouchmove(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("touchmove",el);
             return new EventTouchmove(this);
         }

      }



    


      abstract EventComplete(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("complete",el);
             return new EventComplete(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("complete",el);
             return new EventComplete(this);
         }

      }



    


      abstract EventDOMElementNameChanged(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("domelementnamechanged",el);
             return new EventDOMElementNameChanged(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("domelementnamechanged",el);
             return new EventDOMElementNameChanged(this);
         }

      }



    


      abstract EventObsolete(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("obsolete",el);
             return new EventObsolete(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("obsolete",el);
             return new EventObsolete(this);
         }

      }



    


      abstract EventMouseover(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("mouseover",el);
             return new EventMouseover(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("mouseover",el);
             return new EventMouseover(this);
         }

      }



    


      abstract EventGamepaddisconnected(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("gamepaddisconnected",el);
             return new EventGamepaddisconnected(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("gamepaddisconnected",el);
             return new EventGamepaddisconnected(this);
         }

      }



    


      abstract EventDOMAttributeNameChanged(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("domattributenamechanged",el);
             return new EventDOMAttributeNameChanged(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("domattributenamechanged",el);
             return new EventDOMAttributeNameChanged(this);
         }

      }



    


      abstract EventPagehide(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("pagehide",el);
             return new EventPagehide(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("pagehide",el);
             return new EventPagehide(this);
         }

      }



    


      abstract EventSuccess(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("success",el);
             return new EventSuccess(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("success",el);
             return new EventSuccess(this);
         }

      }



    


      abstract EventChange(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("change",el);
             return new EventChange(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("change",el);
             return new EventChange(this);
         }

      }



    


      abstract EventSelect(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("select",el);
             return new EventSelect(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("select",el);
             return new EventSelect(this);
         }

      }



    


      abstract EventDOMSubtreeModified(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("domsubtreemodified",el);
             return new EventDOMSubtreeModified(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("domsubtreemodified",el);
             return new EventDOMSubtreeModified(this);
         }

      }



    


      abstract EventSVGZoom(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("svgzoom",el);
             return new EventSVGZoom(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("svgzoom",el);
             return new EventSVGZoom(this);
         }

      }



    


      abstract EventPlaying(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("playing",el);
             return new EventPlaying(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("playing",el);
             return new EventPlaying(this);
         }

      }



    


      abstract EventMouseenter(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("mouseenter",el);
             return new EventMouseenter(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("mouseenter",el);
             return new EventMouseenter(this);
         }

      }



    


      abstract EventTouchcancel(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("touchcancel",el);
             return new EventTouchcancel(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("touchcancel",el);
             return new EventTouchcancel(this);
         }

      }



    


      abstract EventDevicelight(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("devicelight",el);
             return new EventDevicelight(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("devicelight",el);
             return new EventDevicelight(this);
         }

      }



    


      abstract EventPlay(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("play",el);
             return new EventPlay(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("play",el);
             return new EventPlay(this);
         }

      }



    


      abstract EventShow(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("show",el);
             return new EventShow(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("show",el);
             return new EventShow(this);
         }

      }



    


      abstract EventStorage(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("storage",el);
             return new EventStorage(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("storage",el);
             return new EventStorage(this);
         }

      }



    


      abstract EventInput(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("input",el);
             return new EventInput(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("input",el);
             return new EventInput(this);
         }

      }



    


      abstract EventUpdateready(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("updateready",el);
             return new EventUpdateready(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("updateready",el);
             return new EventUpdateready(this);
         }

      }



    


      abstract EventVisibilitychange(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("visibilitychange",el);
             return new EventVisibilitychange(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("visibilitychange",el);
             return new EventVisibilitychange(this);
         }

      }



    


      abstract EventFullscreenchange(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("fullscreenchange",el);
             return new EventFullscreenchange(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("fullscreenchange",el);
             return new EventFullscreenchange(this);
         }

      }



    


      abstract EventCanplaythrough(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("canplaythrough",el);
             return new EventCanplaythrough(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("canplaythrough",el);
             return new EventCanplaythrough(this);
         }

      }



    


      abstract EventDragleave(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("dragleave",el);
             return new EventDragleave(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("dragleave",el);
             return new EventDragleave(this);
         }

      }



    


      abstract EventOffline(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("offline",el);
             return new EventOffline(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("offline",el);
             return new EventOffline(this);
         }

      }



    


      abstract EventTouchenter(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("touchenter",el);
             return new EventTouchenter(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("touchenter",el);
             return new EventTouchenter(this);
         }

      }



    


      abstract EventBeforeprint(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("beforeprint",el);
             return new EventBeforeprint(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("beforeprint",el);
             return new EventBeforeprint(this);
         }

      }



    


      abstract EventDownloading(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("downloading",el);
             return new EventDownloading(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("downloading",el);
             return new EventDownloading(this);
         }

      }



    


      abstract EventAbort(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("abort",el);
             return new EventAbort(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("abort",el);
             return new EventAbort(this);
         }

      }



    


      abstract EventPageshow(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("pageshow",el);
             return new EventPageshow(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("pageshow",el);
             return new EventPageshow(this);
         }

      }



    


      abstract EventSubmit(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("submit",el);
             return new EventSubmit(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("submit",el);
             return new EventSubmit(this);
         }

      }



    


      abstract EventVersionchange(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("versionchange",el);
             return new EventVersionchange(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("versionchange",el);
             return new EventVersionchange(this);
         }

      }



    


      abstract EventContextmenu(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("contextmenu",el);
             return new EventContextmenu(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("contextmenu",el);
             return new EventContextmenu(this);
         }

      }



    


      abstract EventOpen(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("open",el);
             return new EventOpen(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("open",el);
             return new EventOpen(this);
         }

      }



    


      abstract EventRatechange(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("ratechange",el);
             return new EventRatechange(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("ratechange",el);
             return new EventRatechange(this);
         }

      }



    


      abstract EventPointerout(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("pointerout",el);
             return new EventPointerout(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("pointerout",el);
             return new EventPointerout(this);
         }

      }



    


      abstract EventBeforeunload(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("beforeunload",el);
             return new EventBeforeunload(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("beforeunload",el);
             return new EventBeforeunload(this);
         }

      }



    


      abstract EventDOMCharacterDataModified(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("domcharacterdatamodified",el);
             return new EventDOMCharacterDataModified(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("domcharacterdatamodified",el);
             return new EventDOMCharacterDataModified(this);
         }

      }



    


      abstract EventDragstart(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("dragstart",el);
             return new EventDragstart(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("dragstart",el);
             return new EventDragstart(this);
         }

      }



    


      abstract EventDrop(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("drop",el);
             return new EventDrop(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("drop",el);
             return new EventDrop(this);
         }

      }



    


      abstract EventGotpointercapture(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("gotpointercapture",el);
             return new EventGotpointercapture(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("gotpointercapture",el);
             return new EventGotpointercapture(this);
         }

      }



    


      abstract EventUpgradeneeded(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("upgradeneeded",el);
             return new EventUpgradeneeded(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("upgradeneeded",el);
             return new EventUpgradeneeded(this);
         }

      }



    


      abstract EventSVGError(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("svgerror",el);
             return new EventSVGError(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("svgerror",el);
             return new EventSVGError(this);
         }

      }



    


      abstract EventAfterprint(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("afterprint",el);
             return new EventAfterprint(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("afterprint",el);
             return new EventAfterprint(this);
         }

      }



    


      abstract EventReadystatechange(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("readystatechange",el);
             return new EventReadystatechange(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("readystatechange",el);
             return new EventReadystatechange(this);
         }

      }



    


      abstract EventLanguagechange(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("languagechange",el);
             return new EventLanguagechange(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("languagechange",el);
             return new EventLanguagechange(this);
         }

      }



    


      abstract EventSVGAbort(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("svgabort",el);
             return new EventSVGAbort(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("svgabort",el);
             return new EventSVGAbort(this);
         }

      }



    


      abstract EventSVGResize(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("svgresize",el);
             return new EventSVGResize(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("svgresize",el);
             return new EventSVGResize(this);
         }

      }



    


      abstract EventFocusoutUnimplemented(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("focusoutunimplemented",el);
             return new EventFocusoutUnimplemented(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("focusoutunimplemented",el);
             return new EventFocusoutUnimplemented(this);
         }

      }



    


      abstract EventMousedown(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("mousedown",el);
             return new EventMousedown(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("mousedown",el);
             return new EventMousedown(this);
         }

      }



    


      abstract EventKeydown(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("keydown",el);
             return new EventKeydown(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("keydown",el);
             return new EventKeydown(this);
         }

      }



    


      abstract EventPointerover(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("pointerover",el);
             return new EventPointerover(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("pointerover",el);
             return new EventPointerover(this);
         }

      }



    


      abstract EventWaiting(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("waiting",el);
             return new EventWaiting(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("waiting",el);
             return new EventWaiting(this);
         }

      }



    


      abstract EventPause(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("pause",el);
             return new EventPause(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("pause",el);
             return new EventPause(this);
         }

      }



    


      abstract EventSelectstart(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("selectstart",el);
             return new EventSelectstart(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("selectstart",el);
             return new EventSelectstart(this);
         }

      }



    


      abstract EventTransitionend(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("transitionend",el);
             return new EventTransitionend(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("transitionend",el);
             return new EventTransitionend(this);
         }

      }



    


      abstract EventCanplay(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("canplay",el);
             return new EventCanplay(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("canplay",el);
             return new EventCanplay(this);
         }

      }



    


      abstract EventDurationchange(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("durationchange",el);
             return new EventDurationchange(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("durationchange",el);
             return new EventDurationchange(this);
         }

      }



    


      abstract EventSelectionchange(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("selectionchange",el);
             return new EventSelectionchange(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("selectionchange",el);
             return new EventSelectionchange(this);
         }

      }



    


      abstract EventCopy(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("copy",el);
             return new EventCopy(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("copy",el);
             return new EventCopy(this);
         }

      }



    


      abstract EventDragend(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("dragend",el);
             return new EventDragend(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("dragend",el);
             return new EventDragend(this);
         }

      }



    


      abstract EventSVGUnload(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("svgunload",el);
             return new EventSVGUnload(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("svgunload",el);
             return new EventSVGUnload(this);
         }

      }



    


      abstract EventDblclick(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("dblclick",el);
             return new EventDblclick(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("dblclick",el);
             return new EventDblclick(this);
         }

      }



    


      abstract EventDOMFocusIn(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("domfocusin",el);
             return new EventDOMFocusIn(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("domfocusin",el);
             return new EventDOMFocusIn(this);
         }

      }



    


      abstract EventLoadstart(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("loadstart",el);
             return new EventLoadstart(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("loadstart",el);
             return new EventLoadstart(this);
         }

      }



    


      abstract EventDOMActivate(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("domactivate",el);
             return new EventDOMActivate(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("domactivate",el);
             return new EventDOMActivate(this);
         }

      }



    


      abstract EventDOMNodeInserted(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("domnodeinserted",el);
             return new EventDOMNodeInserted(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("domnodeinserted",el);
             return new EventDOMNodeInserted(this);
         }

      }



    


      abstract EventCached(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("cached",el);
             return new EventCached(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("cached",el);
             return new EventCached(this);
         }

      }



    


      abstract EventBlur(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("blur",el);
             return new EventBlur(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("blur",el);
             return new EventBlur(this);
         }

      }



    


      abstract EventSeeked(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("seeked",el);
             return new EventSeeked(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("seeked",el);
             return new EventSeeked(this);
         }

      }



    


      abstract EventFocus(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("focus",el);
             return new EventFocus(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("focus",el);
             return new EventFocus(this);
         }

      }



    


      abstract EventKeypress(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("keypress",el);
             return new EventKeypress(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("keypress",el);
             return new EventKeypress(this);
         }

      }



    


      abstract EventPointerlockerror(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("pointerlockerror",el);
             return new EventPointerlockerror(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("pointerlockerror",el);
             return new EventPointerlockerror(this);
         }

      }



    


      abstract EventChargingtimechange(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("chargingtimechange",el);
             return new EventChargingtimechange(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("chargingtimechange",el);
             return new EventChargingtimechange(this);
         }

      }



    


      abstract EventVolumechange(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("volumechange",el);
             return new EventVolumechange(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("volumechange",el);
             return new EventVolumechange(this);
         }

      }



    


      abstract EventCompositionstart(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("compositionstart",el);
             return new EventCompositionstart(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("compositionstart",el);
             return new EventCompositionstart(this);
         }

      }



    


      abstract EventMouseout(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("mouseout",el);
             return new EventMouseout(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("mouseout",el);
             return new EventMouseout(this);
         }

      }



    


      abstract EventAnimationstart(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("animationstart",el);
             return new EventAnimationstart(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("animationstart",el);
             return new EventAnimationstart(this);
         }

      }



    


      abstract EventDeviceproximity(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("deviceproximity",el);
             return new EventDeviceproximity(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("deviceproximity",el);
             return new EventDeviceproximity(this);
         }

      }



    


      abstract EventLoadend(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("loadend",el);
             return new EventLoadend(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("loadend",el);
             return new EventLoadend(this);
         }

      }



    


      abstract EventPointerenter(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("pointerenter",el);
             return new EventPointerenter(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("pointerenter",el);
             return new EventPointerenter(this);
         }

      }



    


      abstract EventDOMFocusOut(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("domfocusout",el);
             return new EventDOMFocusOut(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("domfocusout",el);
             return new EventDOMFocusOut(this);
         }

      }



    


      abstract EventDrag(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("drag",el);
             return new EventDrag(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("drag",el);
             return new EventDrag(this);
         }

      }



    


      abstract EventSuspend(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("suspend",el);
             return new EventSuspend(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("suspend",el);
             return new EventSuspend(this);
         }

      }



    


      abstract EventPaste(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("paste",el);
             return new EventPaste(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("paste",el);
             return new EventPaste(this);
         }

      }



    


      abstract EventDeviceorientation(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("deviceorientation",el);
             return new EventDeviceorientation(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("deviceorientation",el);
             return new EventDeviceorientation(this);
         }

      }



    


      abstract EventMouseleave(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("mouseleave",el);
             return new EventMouseleave(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("mouseleave",el);
             return new EventMouseleave(this);
         }

      }



    


      abstract EventFullscreenerror(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("fullscreenerror",el);
             return new EventFullscreenerror(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("fullscreenerror",el);
             return new EventFullscreenerror(this);
         }

      }



    


      abstract EventTouchstart(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("touchstart",el);
             return new EventTouchstart(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("touchstart",el);
             return new EventTouchstart(this);
         }

      }



    


      abstract EventDischargingtimechange(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("dischargingtimechange",el);
             return new EventDischargingtimechange(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("dischargingtimechange",el);
             return new EventDischargingtimechange(this);
         }

      }



    


      abstract EventChargingchange(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("chargingchange",el);
             return new EventChargingchange(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("chargingchange",el);
             return new EventChargingchange(this);
         }

      }



    


      abstract EventMessage(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("message",el);
             return new EventMessage(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("message",el);
             return new EventMessage(this);
         }

      }



    


      abstract EventPointerdown(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("pointerdown",el);
             return new EventPointerdown(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("pointerdown",el);
             return new EventPointerdown(this);
         }

      }



    


      abstract EventEndEvent(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("endevent",el);
             return new EventEndEvent(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("endevent",el);
             return new EventEndEvent(this);
         }

      }



    


      abstract EventDevicemotion(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("devicemotion",el);
             return new EventDevicemotion(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("devicemotion",el);
             return new EventDevicemotion(this);
         }

      }



    


      abstract EventPointerlockchange(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("pointerlockchange",el);
             return new EventPointerlockchange(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("pointerlockchange",el);
             return new EventPointerlockchange(this);
         }

      }



    


      abstract EventResize(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("resize",el);
             return new EventResize(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("resize",el);
             return new EventResize(this);
         }

      }



    


      abstract EventTouchleave(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("touchleave",el);
             return new EventTouchleave(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("touchleave",el);
             return new EventTouchleave(this);
         }

      }



    


      abstract EventPointercancel(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("pointercancel",el);
             return new EventPointercancel(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("pointercancel",el);
             return new EventPointercancel(this);
         }

      }



    


      abstract EventProgress(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("progress",el);
             return new EventProgress(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("progress",el);
             return new EventProgress(this);
         }

      }



    


      abstract EventCut(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("cut",el);
             return new EventCut(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("cut",el);
             return new EventCut(this);
         }

      }



    


      abstract EventPointerleave(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("pointerleave",el);
             return new EventPointerleave(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("pointerleave",el);
             return new EventPointerleave(this);
         }

      }



    


      abstract EventAnimationend(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("animationend",el);
             return new EventAnimationend(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("animationend",el);
             return new EventAnimationend(this);
         }

      }



    


      abstract EventLoadeddata(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("loadeddata",el);
             return new EventLoadeddata(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("loadeddata",el);
             return new EventLoadeddata(this);
         }

      }



    


      abstract EventOnline(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("online",el);
             return new EventOnline(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("online",el);
             return new EventOnline(this);
         }

      }



    


      abstract EventSVGScroll(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("svgscroll",el);
             return new EventSVGScroll(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("svgscroll",el);
             return new EventSVGScroll(this);
         }

      }



    


      abstract EventClick(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("click",el);
             return new EventClick(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("click",el);
             return new EventClick(this);
         }

      }



    


      abstract EventDOMNodeRemoved(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("domnoderemoved",el);
             return new EventDOMNodeRemoved(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("domnoderemoved",el);
             return new EventDOMNodeRemoved(this);
         }

      }



    


      abstract EventEmptied(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("emptied",el);
             return new EventEmptied(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("emptied",el);
             return new EventEmptied(this);
         }

      }



    


      abstract EventError(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("error",el);
             return new EventError(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("error",el);
             return new EventError(this);
         }

      }



    


      abstract EventDOMNodeInsertedIntoDocument(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("domnodeinsertedintodocument",el);
             return new EventDOMNodeInsertedIntoDocument(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("domnodeinsertedintodocument",el);
             return new EventDOMNodeInsertedIntoDocument(this);
         }

      }



    


      abstract EventScroll(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("scroll",el);
             return new EventScroll(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("scroll",el);
             return new EventScroll(this);
         }

      }



    


      abstract EventFocusinUnimplemented(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("focusinunimplemented",el);
             return new EventFocusinUnimplemented(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("focusinunimplemented",el);
             return new EventFocusinUnimplemented(this);
         }

      }



    


      abstract EventLevelchange(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("levelchange",el);
             return new EventLevelchange(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("levelchange",el);
             return new EventLevelchange(this);
         }

      }



    


      abstract EventTouchend(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("touchend",el);
             return new EventTouchend(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("touchend",el);
             return new EventTouchend(this);
         }

      }



    


      abstract EventLoad(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("load",el);
             return new EventLoad(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("load",el);
             return new EventLoad(this);
         }

      }



    


      abstract EventUnload(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("unload",el);
             return new EventUnload(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("unload",el);
             return new EventUnload(this);
         }

      }



    


      abstract EventDOMContentLoaded(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("domcontentloaded",el);
             return new EventDOMContentLoaded(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("domcontentloaded",el);
             return new EventDOMContentLoaded(this);
         }

      }



    


      abstract EventMouseup(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("mouseup",el);
             return new EventMouseup(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("mouseup",el);
             return new EventMouseup(this);
         }

      }



    


      abstract EventOrientationchange(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("orientationchange",el);
             return new EventOrientationchange(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("orientationchange",el);
             return new EventOrientationchange(this);
         }

      }



    


      abstract EventUserproximity(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("userproximity",el);
             return new EventUserproximity(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("userproximity",el);
             return new EventUserproximity(this);
         }

      }



    


      abstract EventAudioprocess(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("audioprocess",el);
             return new EventAudioprocess(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("audioprocess",el);
             return new EventAudioprocess(this);
         }

      }



    


      abstract EventLostpointercapture(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("lostpointercapture",el);
             return new EventLostpointercapture(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("lostpointercapture",el);
             return new EventLostpointercapture(this);
         }

      }



    


      abstract EventSeeking(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("seeking",el);
             return new EventSeeking(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("seeking",el);
             return new EventSeeking(this);
         }

      }



    


      abstract EventAnimationiteration(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("animationiteration",el);
             return new EventAnimationiteration(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("animationiteration",el);
             return new EventAnimationiteration(this);
         }

      }



    


      abstract EventBeginEvent(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("beginevent",el);
             return new EventBeginEvent(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("beginevent",el);
             return new EventBeginEvent(this);
         }

      }



    


      abstract EventReset(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("reset",el);
             return new EventReset(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("reset",el);
             return new EventReset(this);
         }

      }



    


      abstract EventDragover(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("dragover",el);
             return new EventDragover(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("dragover",el);
             return new EventDragover(this);
         }

      }



    


      abstract EventHashchange(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("hashchange",el);
             return new EventHashchange(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("hashchange",el);
             return new EventHashchange(this);
         }

      }



    


      abstract EventInvalid(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("invalid",el);
             return new EventInvalid(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("invalid",el);
             return new EventInvalid(this);
         }

      }



    


      abstract EventSVGLoad(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("svgload",el);
             return new EventSVGLoad(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("svgload",el);
             return new EventSVGLoad(this);
         }

      }



    


      abstract EventCompositionupdate(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("compositionupdate",el);
             return new EventCompositionupdate(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("compositionupdate",el);
             return new EventCompositionupdate(this);
         }

      }



    


      abstract EventStalled(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("stalled",el);
             return new EventStalled(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("stalled",el);
             return new EventStalled(this);
         }

      }



    


      abstract EventChecking(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("checking",el);
             return new EventChecking(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("checking",el);
             return new EventChecking(this);
         }

      }



    


      abstract EventNoupdate(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("noupdate",el);
             return new EventNoupdate(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("noupdate",el);
             return new EventNoupdate(this);
         }

      }



    


      abstract EventPointermove(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("pointermove",el);
             return new EventPointermove(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("pointermove",el);
             return new EventPointermove(this);
         }

      }



    


      abstract EventLoadedmetadata(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("loadedmetadata",el);
             return new EventLoadedmetadata(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("loadedmetadata",el);
             return new EventLoadedmetadata(this);
         }

      }



    


      abstract EventDOMNodeRemovedFromDocument(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("domnoderemovedfromdocument",el);
             return new EventDOMNodeRemovedFromDocument(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("domnoderemovedfromdocument",el);
             return new EventDOMNodeRemovedFromDocument(this);
         }

      }



    


      abstract EventRepeatEvent(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("repeatevent",el);
             return new EventRepeatEvent(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("repeatevent",el);
             return new EventRepeatEvent(this);
         }

      }



    


      abstract EventClose(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("close",el);
             return new EventClose(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("close",el);
             return new EventClose(this);
         }

      }



    


      abstract EventGamepadconnected(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("gamepadconnected",el);
             return new EventGamepadconnected(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("gamepadconnected",el);
             return new EventGamepadconnected(this);
         }

      }



    


      abstract EventPointerup(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("pointerup",el);
             return new EventPointerup(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("pointerup",el);
             return new EventPointerup(this);
         }

      }



    


      abstract EventKeyup(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("keyup",el);
             return new EventKeyup(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("keyup",el);
             return new EventKeyup(this);
         }

      }



    


      abstract EventMousemove(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("mousemove",el);
             return new EventMousemove(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("mousemove",el);
             return new EventMousemove(this);
         }

      }



    


      abstract EventTimeupdate(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("timeupdate",el);
             return new EventTimeupdate(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
             this.removeEventListener("timeupdate",el);
             return new EventTimeupdate(this);
         }

      }



    


      abstract EventPopstate(Element) {
         public inline function new(el:Element) this = el;

         @:op(A+B) public inline function addEL(el:Event -> Void;) {
             this.addEventListener("popstate",el);
             return new EventPopstate(this);
         }

         @:op(A-B) public inline function removeEl(el:Event -> Void;) {
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

    
        public var mouseCompositionend(get, never):EventCompositionend;
        inline function get_Compositionend() return new EventCompositionend(this);
      

        public var mouseWheel(get, never):EventWheel;
        inline function get_Wheel() return new EventWheel(this);
      

        public var mouseEnded(get, never):EventEnded;
        inline function get_Ended() return new EventEnded(this);
      

        public var mouseTimeout(get, never):EventTimeout;
        inline function get_Timeout() return new EventTimeout(this);
      

        public var mouseBlocked(get, never):EventBlocked;
        inline function get_Blocked() return new EventBlocked(this);
      

        public var mouseDOMAttrModified(get, never):EventDOMAttrModified;
        inline function get_DOMAttrModified() return new EventDOMAttrModified(this);
      

        public var mouseDragenter(get, never):EventDragenter;
        inline function get_Dragenter() return new EventDragenter(this);
      

        public var mouseTouchmove(get, never):EventTouchmove;
        inline function get_Touchmove() return new EventTouchmove(this);
      

        public var mouseComplete(get, never):EventComplete;
        inline function get_Complete() return new EventComplete(this);
      

        public var mouseDOMElementNameChanged(get, never):EventDOMElementNameChanged;
        inline function get_DOMElementNameChanged() return new EventDOMElementNameChanged(this);
      

        public var mouseObsolete(get, never):EventObsolete;
        inline function get_Obsolete() return new EventObsolete(this);
      

        public var mouseMouseover(get, never):EventMouseover;
        inline function get_Mouseover() return new EventMouseover(this);
      

        public var mouseGamepaddisconnected(get, never):EventGamepaddisconnected;
        inline function get_Gamepaddisconnected() return new EventGamepaddisconnected(this);
      

        public var mouseDOMAttributeNameChanged(get, never):EventDOMAttributeNameChanged;
        inline function get_DOMAttributeNameChanged() return new EventDOMAttributeNameChanged(this);
      

        public var mousePagehide(get, never):EventPagehide;
        inline function get_Pagehide() return new EventPagehide(this);
      

        public var mouseSuccess(get, never):EventSuccess;
        inline function get_Success() return new EventSuccess(this);
      

        public var mouseChange(get, never):EventChange;
        inline function get_Change() return new EventChange(this);
      

        public var mouseSelect(get, never):EventSelect;
        inline function get_Select() return new EventSelect(this);
      

        public var mouseDOMSubtreeModified(get, never):EventDOMSubtreeModified;
        inline function get_DOMSubtreeModified() return new EventDOMSubtreeModified(this);
      

        public var mouseSVGZoom(get, never):EventSVGZoom;
        inline function get_SVGZoom() return new EventSVGZoom(this);
      

        public var mousePlaying(get, never):EventPlaying;
        inline function get_Playing() return new EventPlaying(this);
      

        public var mouseMouseenter(get, never):EventMouseenter;
        inline function get_Mouseenter() return new EventMouseenter(this);
      

        public var mouseTouchcancel(get, never):EventTouchcancel;
        inline function get_Touchcancel() return new EventTouchcancel(this);
      

        public var mouseDevicelight(get, never):EventDevicelight;
        inline function get_Devicelight() return new EventDevicelight(this);
      

        public var mousePlay(get, never):EventPlay;
        inline function get_Play() return new EventPlay(this);
      

        public var mouseShow(get, never):EventShow;
        inline function get_Show() return new EventShow(this);
      

        public var mouseStorage(get, never):EventStorage;
        inline function get_Storage() return new EventStorage(this);
      

        public var mouseInput(get, never):EventInput;
        inline function get_Input() return new EventInput(this);
      

        public var mouseUpdateready(get, never):EventUpdateready;
        inline function get_Updateready() return new EventUpdateready(this);
      

        public var mouseVisibilitychange(get, never):EventVisibilitychange;
        inline function get_Visibilitychange() return new EventVisibilitychange(this);
      

        public var mouseFullscreenchange(get, never):EventFullscreenchange;
        inline function get_Fullscreenchange() return new EventFullscreenchange(this);
      

        public var mouseCanplaythrough(get, never):EventCanplaythrough;
        inline function get_Canplaythrough() return new EventCanplaythrough(this);
      

        public var mouseDragleave(get, never):EventDragleave;
        inline function get_Dragleave() return new EventDragleave(this);
      

        public var mouseOffline(get, never):EventOffline;
        inline function get_Offline() return new EventOffline(this);
      

        public var mouseTouchenter(get, never):EventTouchenter;
        inline function get_Touchenter() return new EventTouchenter(this);
      

        public var mouseBeforeprint(get, never):EventBeforeprint;
        inline function get_Beforeprint() return new EventBeforeprint(this);
      

        public var mouseDownloading(get, never):EventDownloading;
        inline function get_Downloading() return new EventDownloading(this);
      

        public var mouseAbort(get, never):EventAbort;
        inline function get_Abort() return new EventAbort(this);
      

        public var mousePageshow(get, never):EventPageshow;
        inline function get_Pageshow() return new EventPageshow(this);
      

        public var mouseSubmit(get, never):EventSubmit;
        inline function get_Submit() return new EventSubmit(this);
      

        public var mouseVersionchange(get, never):EventVersionchange;
        inline function get_Versionchange() return new EventVersionchange(this);
      

        public var mouseContextmenu(get, never):EventContextmenu;
        inline function get_Contextmenu() return new EventContextmenu(this);
      

        public var mouseOpen(get, never):EventOpen;
        inline function get_Open() return new EventOpen(this);
      

        public var mouseRatechange(get, never):EventRatechange;
        inline function get_Ratechange() return new EventRatechange(this);
      

        public var mousePointerout(get, never):EventPointerout;
        inline function get_Pointerout() return new EventPointerout(this);
      

        public var mouseBeforeunload(get, never):EventBeforeunload;
        inline function get_Beforeunload() return new EventBeforeunload(this);
      

        public var mouseDOMCharacterDataModified(get, never):EventDOMCharacterDataModified;
        inline function get_DOMCharacterDataModified() return new EventDOMCharacterDataModified(this);
      

        public var mouseDragstart(get, never):EventDragstart;
        inline function get_Dragstart() return new EventDragstart(this);
      

        public var mouseDrop(get, never):EventDrop;
        inline function get_Drop() return new EventDrop(this);
      

        public var mouseGotpointercapture(get, never):EventGotpointercapture;
        inline function get_Gotpointercapture() return new EventGotpointercapture(this);
      

        public var mouseUpgradeneeded(get, never):EventUpgradeneeded;
        inline function get_Upgradeneeded() return new EventUpgradeneeded(this);
      

        public var mouseSVGError(get, never):EventSVGError;
        inline function get_SVGError() return new EventSVGError(this);
      

        public var mouseAfterprint(get, never):EventAfterprint;
        inline function get_Afterprint() return new EventAfterprint(this);
      

        public var mouseReadystatechange(get, never):EventReadystatechange;
        inline function get_Readystatechange() return new EventReadystatechange(this);
      

        public var mouseLanguagechange(get, never):EventLanguagechange;
        inline function get_Languagechange() return new EventLanguagechange(this);
      

        public var mouseSVGAbort(get, never):EventSVGAbort;
        inline function get_SVGAbort() return new EventSVGAbort(this);
      

        public var mouseSVGResize(get, never):EventSVGResize;
        inline function get_SVGResize() return new EventSVGResize(this);
      

        public var mouseFocusoutUnimplemented(get, never):EventFocusoutUnimplemented;
        inline function get_FocusoutUnimplemented() return new EventFocusoutUnimplemented(this);
      

        public var mouseMousedown(get, never):EventMousedown;
        inline function get_Mousedown() return new EventMousedown(this);
      

        public var mouseKeydown(get, never):EventKeydown;
        inline function get_Keydown() return new EventKeydown(this);
      

        public var mousePointerover(get, never):EventPointerover;
        inline function get_Pointerover() return new EventPointerover(this);
      

        public var mouseWaiting(get, never):EventWaiting;
        inline function get_Waiting() return new EventWaiting(this);
      

        public var mousePause(get, never):EventPause;
        inline function get_Pause() return new EventPause(this);
      

        public var mouseSelectstart(get, never):EventSelectstart;
        inline function get_Selectstart() return new EventSelectstart(this);
      

        public var mouseTransitionend(get, never):EventTransitionend;
        inline function get_Transitionend() return new EventTransitionend(this);
      

        public var mouseCanplay(get, never):EventCanplay;
        inline function get_Canplay() return new EventCanplay(this);
      

        public var mouseDurationchange(get, never):EventDurationchange;
        inline function get_Durationchange() return new EventDurationchange(this);
      

        public var mouseSelectionchange(get, never):EventSelectionchange;
        inline function get_Selectionchange() return new EventSelectionchange(this);
      

        public var mouseCopy(get, never):EventCopy;
        inline function get_Copy() return new EventCopy(this);
      

        public var mouseDragend(get, never):EventDragend;
        inline function get_Dragend() return new EventDragend(this);
      

        public var mouseSVGUnload(get, never):EventSVGUnload;
        inline function get_SVGUnload() return new EventSVGUnload(this);
      

        public var mouseDblclick(get, never):EventDblclick;
        inline function get_Dblclick() return new EventDblclick(this);
      

        public var mouseDOMFocusIn(get, never):EventDOMFocusIn;
        inline function get_DOMFocusIn() return new EventDOMFocusIn(this);
      

        public var mouseLoadstart(get, never):EventLoadstart;
        inline function get_Loadstart() return new EventLoadstart(this);
      

        public var mouseDOMActivate(get, never):EventDOMActivate;
        inline function get_DOMActivate() return new EventDOMActivate(this);
      

        public var mouseDOMNodeInserted(get, never):EventDOMNodeInserted;
        inline function get_DOMNodeInserted() return new EventDOMNodeInserted(this);
      

        public var mouseCached(get, never):EventCached;
        inline function get_Cached() return new EventCached(this);
      

        public var mouseBlur(get, never):EventBlur;
        inline function get_Blur() return new EventBlur(this);
      

        public var mouseSeeked(get, never):EventSeeked;
        inline function get_Seeked() return new EventSeeked(this);
      

        public var mouseFocus(get, never):EventFocus;
        inline function get_Focus() return new EventFocus(this);
      

        public var mouseKeypress(get, never):EventKeypress;
        inline function get_Keypress() return new EventKeypress(this);
      

        public var mousePointerlockerror(get, never):EventPointerlockerror;
        inline function get_Pointerlockerror() return new EventPointerlockerror(this);
      

        public var mouseChargingtimechange(get, never):EventChargingtimechange;
        inline function get_Chargingtimechange() return new EventChargingtimechange(this);
      

        public var mouseVolumechange(get, never):EventVolumechange;
        inline function get_Volumechange() return new EventVolumechange(this);
      

        public var mouseCompositionstart(get, never):EventCompositionstart;
        inline function get_Compositionstart() return new EventCompositionstart(this);
      

        public var mouseMouseout(get, never):EventMouseout;
        inline function get_Mouseout() return new EventMouseout(this);
      

        public var mouseAnimationstart(get, never):EventAnimationstart;
        inline function get_Animationstart() return new EventAnimationstart(this);
      

        public var mouseDeviceproximity(get, never):EventDeviceproximity;
        inline function get_Deviceproximity() return new EventDeviceproximity(this);
      

        public var mouseLoadend(get, never):EventLoadend;
        inline function get_Loadend() return new EventLoadend(this);
      

        public var mousePointerenter(get, never):EventPointerenter;
        inline function get_Pointerenter() return new EventPointerenter(this);
      

        public var mouseDOMFocusOut(get, never):EventDOMFocusOut;
        inline function get_DOMFocusOut() return new EventDOMFocusOut(this);
      

        public var mouseDrag(get, never):EventDrag;
        inline function get_Drag() return new EventDrag(this);
      

        public var mouseSuspend(get, never):EventSuspend;
        inline function get_Suspend() return new EventSuspend(this);
      

        public var mousePaste(get, never):EventPaste;
        inline function get_Paste() return new EventPaste(this);
      

        public var mouseDeviceorientation(get, never):EventDeviceorientation;
        inline function get_Deviceorientation() return new EventDeviceorientation(this);
      

        public var mouseMouseleave(get, never):EventMouseleave;
        inline function get_Mouseleave() return new EventMouseleave(this);
      

        public var mouseFullscreenerror(get, never):EventFullscreenerror;
        inline function get_Fullscreenerror() return new EventFullscreenerror(this);
      

        public var mouseTouchstart(get, never):EventTouchstart;
        inline function get_Touchstart() return new EventTouchstart(this);
      

        public var mouseDischargingtimechange(get, never):EventDischargingtimechange;
        inline function get_Dischargingtimechange() return new EventDischargingtimechange(this);
      

        public var mouseChargingchange(get, never):EventChargingchange;
        inline function get_Chargingchange() return new EventChargingchange(this);
      

        public var mouseMessage(get, never):EventMessage;
        inline function get_Message() return new EventMessage(this);
      

        public var mousePointerdown(get, never):EventPointerdown;
        inline function get_Pointerdown() return new EventPointerdown(this);
      

        public var mouseEndEvent(get, never):EventEndEvent;
        inline function get_EndEvent() return new EventEndEvent(this);
      

        public var mouseDevicemotion(get, never):EventDevicemotion;
        inline function get_Devicemotion() return new EventDevicemotion(this);
      

        public var mousePointerlockchange(get, never):EventPointerlockchange;
        inline function get_Pointerlockchange() return new EventPointerlockchange(this);
      

        public var mouseResize(get, never):EventResize;
        inline function get_Resize() return new EventResize(this);
      

        public var mouseTouchleave(get, never):EventTouchleave;
        inline function get_Touchleave() return new EventTouchleave(this);
      

        public var mousePointercancel(get, never):EventPointercancel;
        inline function get_Pointercancel() return new EventPointercancel(this);
      

        public var mouseProgress(get, never):EventProgress;
        inline function get_Progress() return new EventProgress(this);
      

        public var mouseCut(get, never):EventCut;
        inline function get_Cut() return new EventCut(this);
      

        public var mousePointerleave(get, never):EventPointerleave;
        inline function get_Pointerleave() return new EventPointerleave(this);
      

        public var mouseAnimationend(get, never):EventAnimationend;
        inline function get_Animationend() return new EventAnimationend(this);
      

        public var mouseLoadeddata(get, never):EventLoadeddata;
        inline function get_Loadeddata() return new EventLoadeddata(this);
      

        public var mouseOnline(get, never):EventOnline;
        inline function get_Online() return new EventOnline(this);
      

        public var mouseSVGScroll(get, never):EventSVGScroll;
        inline function get_SVGScroll() return new EventSVGScroll(this);
      

        public var mouseClick(get, never):EventClick;
        inline function get_Click() return new EventClick(this);
      

        public var mouseDOMNodeRemoved(get, never):EventDOMNodeRemoved;
        inline function get_DOMNodeRemoved() return new EventDOMNodeRemoved(this);
      

        public var mouseEmptied(get, never):EventEmptied;
        inline function get_Emptied() return new EventEmptied(this);
      

        public var mouseError(get, never):EventError;
        inline function get_Error() return new EventError(this);
      

        public var mouseDOMNodeInsertedIntoDocument(get, never):EventDOMNodeInsertedIntoDocument;
        inline function get_DOMNodeInsertedIntoDocument() return new EventDOMNodeInsertedIntoDocument(this);
      

        public var mouseScroll(get, never):EventScroll;
        inline function get_Scroll() return new EventScroll(this);
      

        public var mouseFocusinUnimplemented(get, never):EventFocusinUnimplemented;
        inline function get_FocusinUnimplemented() return new EventFocusinUnimplemented(this);
      

        public var mouseLevelchange(get, never):EventLevelchange;
        inline function get_Levelchange() return new EventLevelchange(this);
      

        public var mouseTouchend(get, never):EventTouchend;
        inline function get_Touchend() return new EventTouchend(this);
      

        public var mouseLoad(get, never):EventLoad;
        inline function get_Load() return new EventLoad(this);
      

        public var mouseUnload(get, never):EventUnload;
        inline function get_Unload() return new EventUnload(this);
      

        public var mouseDOMContentLoaded(get, never):EventDOMContentLoaded;
        inline function get_DOMContentLoaded() return new EventDOMContentLoaded(this);
      

        public var mouseMouseup(get, never):EventMouseup;
        inline function get_Mouseup() return new EventMouseup(this);
      

        public var mouseOrientationchange(get, never):EventOrientationchange;
        inline function get_Orientationchange() return new EventOrientationchange(this);
      

        public var mouseUserproximity(get, never):EventUserproximity;
        inline function get_Userproximity() return new EventUserproximity(this);
      

        public var mouseAudioprocess(get, never):EventAudioprocess;
        inline function get_Audioprocess() return new EventAudioprocess(this);
      

        public var mouseLostpointercapture(get, never):EventLostpointercapture;
        inline function get_Lostpointercapture() return new EventLostpointercapture(this);
      

        public var mouseSeeking(get, never):EventSeeking;
        inline function get_Seeking() return new EventSeeking(this);
      

        public var mouseAnimationiteration(get, never):EventAnimationiteration;
        inline function get_Animationiteration() return new EventAnimationiteration(this);
      

        public var mouseBeginEvent(get, never):EventBeginEvent;
        inline function get_BeginEvent() return new EventBeginEvent(this);
      

        public var mouseReset(get, never):EventReset;
        inline function get_Reset() return new EventReset(this);
      

        public var mouseDragover(get, never):EventDragover;
        inline function get_Dragover() return new EventDragover(this);
      

        public var mouseHashchange(get, never):EventHashchange;
        inline function get_Hashchange() return new EventHashchange(this);
      

        public var mouseInvalid(get, never):EventInvalid;
        inline function get_Invalid() return new EventInvalid(this);
      

        public var mouseSVGLoad(get, never):EventSVGLoad;
        inline function get_SVGLoad() return new EventSVGLoad(this);
      

        public var mouseCompositionupdate(get, never):EventCompositionupdate;
        inline function get_Compositionupdate() return new EventCompositionupdate(this);
      

        public var mouseStalled(get, never):EventStalled;
        inline function get_Stalled() return new EventStalled(this);
      

        public var mouseChecking(get, never):EventChecking;
        inline function get_Checking() return new EventChecking(this);
      

        public var mouseNoupdate(get, never):EventNoupdate;
        inline function get_Noupdate() return new EventNoupdate(this);
      

        public var mousePointermove(get, never):EventPointermove;
        inline function get_Pointermove() return new EventPointermove(this);
      

        public var mouseLoadedmetadata(get, never):EventLoadedmetadata;
        inline function get_Loadedmetadata() return new EventLoadedmetadata(this);
      

        public var mouseDOMNodeRemovedFromDocument(get, never):EventDOMNodeRemovedFromDocument;
        inline function get_DOMNodeRemovedFromDocument() return new EventDOMNodeRemovedFromDocument(this);
      

        public var mouseRepeatEvent(get, never):EventRepeatEvent;
        inline function get_RepeatEvent() return new EventRepeatEvent(this);
      

        public var mouseClose(get, never):EventClose;
        inline function get_Close() return new EventClose(this);
      

        public var mouseGamepadconnected(get, never):EventGamepadconnected;
        inline function get_Gamepadconnected() return new EventGamepadconnected(this);
      

        public var mousePointerup(get, never):EventPointerup;
        inline function get_Pointerup() return new EventPointerup(this);
      

        public var mouseKeyup(get, never):EventKeyup;
        inline function get_Keyup() return new EventKeyup(this);
      

        public var mouseMousemove(get, never):EventMousemove;
        inline function get_Mousemove() return new EventMousemove(this);
      

        public var mouseTimeupdate(get, never):EventTimeupdate;
        inline function get_Timeupdate() return new EventTimeupdate(this);
      

        public var mousePopstate(get, never):EventPopstate;
        inline function get_Popstate() return new EventPopstate(this);
      
}


class Events {}


    