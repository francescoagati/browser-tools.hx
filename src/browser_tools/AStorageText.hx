package browser_tools;

@:forward
abstract AStorageText(js.html.Storage) from js.html.Storage to js.html.Storage {
  public inline function new(storage:js.html.Storage) {
    this = storage;
  }

  @:arrayAccess inline public function get(key:String) return this.getItem(key);
  @:arrayAccess inline public function set(key:String,value:Dynamic) this.setItem(key,value);

  public inline function exists(key:String) return this.getItem(key) != null;


}
