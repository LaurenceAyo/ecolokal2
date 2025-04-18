import 'package:get_storage/get_storage.dart';

class TLocalStorage {
  // Singleton instance
  static final TLocalStorage _instance = TLocalStorage._internal();
  final GetStorage _storage;

  // Factory constructor to return the same instance
  factory TLocalStorage() {
    return _instance;
  }

  // Private constructor
  TLocalStorage._internal() : _storage = GetStorage();

  // Generic method to save data
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  // Generic method to read data
  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  // Generic method to remove data
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  // Clear all data from storage
  Future<void> clearAll() async {
    await _storage.erase();
  }
}