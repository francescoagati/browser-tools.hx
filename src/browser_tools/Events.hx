

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

    --
}


class Events {}


    