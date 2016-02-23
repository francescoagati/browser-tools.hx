package browser_tools.storage;


abstract MemoryStorage<T>(Dynamic) {

  static var storage:haxe.DynamicAccess<Dynamic> = {};

  public inline function new() {}

  @:arrayAccess public inline function get<T>(key:String):T {
    var value = storage.get(key);
    if (value == null) value = "null";
    return untyped haxe.Json.parse(value);
  }
  @:arrayAccess public inline function set<T>(key:String,value:T) {
    storage.set(key, haxe.Json.stringify(value));
  }
  public inline function exists(key:String)  {
    return storage.exists(key) != null;
  }

  public inline function remove(key:String)  {
    return storage.remove(key);
  }


}
