package browser_tools.storage;


abstract LocalStorage<T>(Dynamic) {

  static var storage = js.Browser.getLocalStorage();

  public inline function new() {}

  @:arrayAccess public inline function get<T>(key:String):T {
    var value = storage.getItem(key);
    if (value == null) value = "null";
    return untyped haxe.Json.parse(value);
  }
  @:arrayAccess public inline function set<T>(key:String,value:T) {
    storage.setItem(key, haxe.Json.stringify(value));
  }
  public inline function exists(key:String):Dynamic return {
    return storage.getItem(key) != null;
  }

  public inline function remove(key:String):Dynamic  {
    storage.removeItem(key);
    return null;
  }

}
