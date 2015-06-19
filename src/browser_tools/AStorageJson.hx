package browser_tools;

@:forward
abstract AStorageJson(js.html.Storage) from js.html.Storage to js.html.Storage {
  public inline function new(storage:js.html.Storage) {
    this = storage;
  }

  @:arrayAccess public inline function get(key:String) return haxe.Json.parse(this.getItem(key));
  @:arrayAccess public inline function set(key:String,value:Dynamic) this.setItem(key,haxe.Json.stringify(value));
}
