package browser_tools;

@:forward('clear')
abstract AStorageText(js.html.Storage) from js.html.Storage to js.html.Storage {
  public inline function new(storage:js.html.Storage) {
    this = storage;
  }

  @:arrayAccess inline public function get(key:String) return untyped this[key];
  @:arrayAccess inline public function set(key:String,value:Dynamic) untyped this[key] = value;

  public inline function setItem(key:String,value)  untyped this[key] = value;
  public inline function getItem(key:String)  return untyped this[key];
  public inline function exists(key:String) return untyped this[key] != null;


}
