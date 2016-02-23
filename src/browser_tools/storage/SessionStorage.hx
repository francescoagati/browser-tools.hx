package browser_tools.storage;


abstract SessionStorage<T>(Dynamic) {

  static var storage = js.Browser.getSessionStorage();

  public inline function new() {}

  @:arrayAccess public inline function get<T>(key:String):T {
    var value = storage.getItem(key);
    if (value == null) value = "null";
    return untyped haxe.Json.parse(value);
  }
  @:arrayAccess public inline function set<T>(key:String,value:T) {
    storage.setItem(key, haxe.Json.stringify(value));
  }
  public inline function exists(key:String)  {
    return storage.getItem(key) != null;
  }

  public inline function remove(key:String)  {
    return storage.removeItem(key);
  }


}
