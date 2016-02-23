package browser_tools.storage;

import browser_tools.storage.*;

@:multiType(K)
abstract Map<K,V>(IStorage<V> ) {
  public function new();
  @:to static inline function toStringMap<K:LocalStorage<V>,V>(t:LocalStorage<V>) return untyped pippa;
}

@:enum
abstract Factory(Int) {
  var local_storage = 0;
  var session_storage= 1;
  var memory_storage = 2;

  static var check_for_local_storage:Bool = browser_tools.utils.features.Storage.check_for_local_storage();

  static inline function get<T>(storage_type:Factory)  {

      return switch(storage_type) {
        case local_storage:new browser_tools.storage.LocalStorage<T>();
        case session_storage:new browser_tools.storage.SessionStorage<T>();
        case memory_storage:new A<LocalStorage<T>,T>();
        case _:null;
      }
  }

}


//return if (check_for_local_storage == true) {
