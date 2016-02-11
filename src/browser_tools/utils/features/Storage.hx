package browser_tools.utils.features;


class Storage {

  public static function check_for_local_storage():Bool {
      var testKey = "_veespo_test";
      var storage = js.Browser.getLocalStorage();
      return try {
        storage.setItem(testKey,"1");
        storage.removeItem(testKey);
        true;
      } catch(e:Dynamic) {
        false;
      }
  }

}
