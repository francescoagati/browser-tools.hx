class StyleTools {

	@:extern
	public inline static function setClip(style:CSSStyleDeclaration,top:Int,left:Int,width:Int,height:Int) {
		style.top = '${top}px';
		style.left = '${left}px';
		style.width = '${width}px';
		style.height = '${height}px';
		return style;
	}

	@:extern
  public static inline function setColor(style:CSSStyleDeclaration,background:String,foreground:String) {
    style.backgroundColor = background;
		style.color = foreground;
		return style;
  }

  @:extern
  public static inline function setBackgroundImage(style:CSSStyleDeclaration,url:String) {
    style.backgroundImage = 'url($url)';
		return style;
  }

}
