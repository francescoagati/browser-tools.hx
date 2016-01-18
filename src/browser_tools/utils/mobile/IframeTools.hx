package browser_tools.utils.mobile;

class IFrameTools {


  public static inline function fix_mobile(iframe:js.html.IFrameElement) {

    var node:browser_tools.AElement = iframe;
    node['frameborder']="no";
    node['scrolling']="no";
    node['marginheight']="0";
    node['margiwidth']="0";
    node['style'] = "border:0px;padding:0px;margin:0px;width:100%;height:100%;overflow:hidden";

    node.ontouchstart = function() return false;
    node.ontouchmove = function() return false;

  }

}
