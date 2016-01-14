package browser_tools;

@:forward
abstract AStorageJson(js.html.Storage) from js.html.Storage to js.html.Storage {
  public inline function new(storage:js.html.Storage) {
    this = storage;
  }

  @:arrayAccess public inline function get(key:String) {
    var value = untyped this[key];
    if (value == null) value = "null";
    return haxe.Json.parse(value);
  }
  @:arrayAccess public inline function set(key:String,value:Dynamic) {
    untyped this[key] = haxe.Json.stringify(value);
  }
  public inline function exists(key:String) return {
    untyped this[key] != null;
  }
}
