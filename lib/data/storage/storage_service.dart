import 'package:get_storage/get_storage.dart';

class StorageService {
  static Future<void> saveStorage(String key, String value) async {
    final storage = GetStorage();
    await storage.write(key, value);
  }

  static Future<String?> getStorage(String key) async {
    final storage = GetStorage();
    var data = storage.read(key);
    return data;
  }

  static Future<void> removeStorage(String key) async {
    final storage = GetStorage();
    await storage.remove(key);
  }

  static dynamic getToken(String key) async {
    final storage = GetStorage();
    return storage.read(key);
  }

  static Future<bool> hasToken(String key) async {
    final storage = GetStorage();
    return storage.read(key) == null ? false : true;
  }

  static Future<void> clearGetStorage() async {
    final storage = GetStorage();
    final keys = List.from(storage.getKeys());
    for (final key in keys) {
      await storage.remove(key);
    }
  }
}
