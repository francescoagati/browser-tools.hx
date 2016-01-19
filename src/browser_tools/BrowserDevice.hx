package browser_tools;
using BrowserDevice.MatchTools;


typedef BrowserType = {browser:String,version:Float,type:String};

class MatchTools {

  public inline static function match(s:String,rg:EReg) {
    return rg.match(s);
  }


}



class BrowserDevice {

  public static var browser:BrowserType = get_browser();

  static var is_mobile_explorer = (function() {
    return browser.browser == 'Trident' && browser.type  == 'mobile' ? true : false;
  })();


  static var is_desktop_explorer = (function() {
    return browser.browser == 'Trident' && (browser.type != 'mobile') ? true : false;
  })();


  public static var isOnlyWebkit(get,never):Bool;
  public static var safariiOS(get,never):Bool;
  public static var chromeiOS(get,never):Bool;
  public static var chromeAndroid(get,never):Bool;
  public static var android(get,never):Bool;
  public static var gingerBread(get,never):Bool;
  public static var blackBerry(get,never):Bool;
  public static var iOS(get,never):Bool;
  public static var iOS7(get,never):Bool;
  public static var iOS8(get,never):Bool;
  public static var iOS9(get,never):Bool;
  public static var opera(get,never):Bool;
  public static var fireFox(get,never):Bool;
  public static var windows_mobile(get,never):Bool;
  public static var IE11_mobile(get,never):Bool;
  public static var IE11_desktop(get,never):Bool;
  public static var IE10_or_9(get,never):Bool;
  public static var IEEDGE(get,never):Bool;

  public static var isIE(get,never):Int;

  static inline function get_browser():BrowserType {
    var navigator = js.Browser.navigator;
    var navigatorObj = navigator.appName,
        userAgentObj = navigator.userAgent,
        matchVersion;



    var browser:String = null,version:String = null;
    var rg_browser = ~/(opera|chrome|safari|firefox|msie|trident)\/?\s*(\.?\d+(\.\d+)*)/i;
    var rg_system_mobile =  ~/iPhone|Android|webOS|iPad/i;
    var rg_version = ~/version\/([\.\d]+)/i;

    var match_browser = rg_browser.match(userAgentObj);
    var match_version = rg_version.match(userAgentObj);


    var browser = if (match_browser) {
      rg_browser.matched(1);
    } else {
      navigatorObj;
    }

    version = if (match_version) rg_version.matched(1); else rg_browser.matched(2);

    return if (rg_system_mobile.match(navigator.userAgent)) {
      {
        browser:browser,
        version:Std.parseFloat(version),
        type:'mobile'
      }
    } else {
      {
        browser:browser,
        version:Std.parseFloat(version),
        type:'desktop'
      }
    }

  }

  static inline function navigator() return js.Browser.navigator;
  static inline function get_gingerBread() return navigator().userAgent.match(~/Android 2\.3\.[3-7]/i);



  static function get_IEEDGE() {
    return (navigator().userAgent.match(~/Edge\/(.+)/i));
  }

  static function get_isIE():Int {
    var myNav = js.Browser.navigator.userAgent.toLowerCase();
    return (myNav.indexOf('msie') != -1) ? Std.parseInt(myNav.split('msie')[1]) : -1;
  }


  static inline function get_isOnlyWebkit() {
    return (navigator().userAgent.match(~/WebKit/i) && navigator().userAgent.match(~/Android/i)) && !navigator().userAgent.match(~/Chrome/i) && is_mobile_explorer == false;
  }

  static inline function get_safariiOS() {
    return (navigator().userAgent.match(~/Safari/i)) && iOS && is_mobile_explorer == false;
  }

  static inline function get_chromeAndroid() {
    return (navigator().userAgent.match(~/chrome/i)) && android && is_mobile_explorer == false;
  }


  static inline function get_chromeiOS() {
    return (navigator().userAgent.match(~/CriOS/i)) && is_mobile_explorer == false;
  }

  static inline function get_android() {
    return (navigator().userAgent.match(~/Android/i)) && is_mobile_explorer == false;
  }

  static inline function get_blackBerry() {
    return (navigator().userAgent.match(~/BlackBerry/i)) && is_mobile_explorer == false;
  }

  static inline function get_iOS() {
    return (navigator().userAgent.match(~/iPhone|iPad|iPod/i)) && is_mobile_explorer == false;
  }

  static inline function get_iOS7() {
    return navigator().userAgent.match(~/(iPad|iPhone);.*CPU.*OS 7_\d/i) && is_mobile_explorer == false;
  }

  static inline function get_iOS8() {
    return navigator().userAgent.match(~/(iPad|iPhone);.*CPU.*OS 8_\d/i) && is_mobile_explorer == false;
  }

  static inline function get_iOS9() {
    return navigator().userAgent.match(~/(iPad|iPhone);.*CPU.*OS 9_\d/i) && is_mobile_explorer == false;
  }

  static inline function get_opera() {
    return (navigator().userAgent.match(~/Opera Mobi/i)) && is_mobile_explorer == false;
  }
  static inline function get_fireFox() {
    return navigator().userAgent.toLowerCase().indexOf('firefox') > -1 && is_mobile_explorer == false;
  }

  static inline function get_windows_mobile() {
    return (navigator().userAgent.match(~/IEMobile/i)) || is_mobile_explorer == true;
  }


  static inline function get_IE11_mobile() {
    return (navigator().userAgent.match(~/IEMobile\/11/i)) && is_mobile_explorer == true;
  }

  static inline function get_IE11_desktop() {
    return is_desktop_explorer;
  }

  static inline function get_IE10_or_9() {
    return browser.browser == 'MSIE' && (browser.version == 9 || browser.version == 10);
  }


}
