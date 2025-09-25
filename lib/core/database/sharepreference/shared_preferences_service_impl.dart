import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'shared_preferences_services.dart';

class SharedPreferencesServiceImpl extends SharedPreferencesService {
  late final SharedPreferences prefs;

  SharedPreferencesServiceImpl._internal(this.prefs);

  static Future<SharedPreferencesServiceImpl> create() async {
    final prefs = await SharedPreferences.getInstance();
    return SharedPreferencesServiceImpl._internal(prefs);
  }

  @override
  Future<void> clear() async {
    await prefs.clear();
  }

  @override
  T? fetch<T>({required CacheKey key}) {
    return switch (T) {
      const (String) => prefs.getString(key.name) as T?,
      const (int) => prefs.getInt(key.name) as T?,
      const (bool) => prefs.getBool(key.name) as T?,
      const (double) => prefs.getDouble(key.name) as T?,
      _ => prefs.get(key.name) as T?,
    };
  }

  @override
  Future<void> remove(List<CacheKey> keys) async {
    for (final key in keys) {
      await prefs.remove(key.name);
    }
  }

  @override
  Future<void> save<T>({required CacheKey key, required T value}) async {
    try {
      switch (T) {
        case const (String):
          await prefs.setString(key.name, value as String);
          break;
        case const (int):
          await prefs.setInt(key.name, value as int);
          break;
        case const (bool):
          await prefs.setBool(key.name, value as bool);
          break;
        case const (double):
          await prefs.setDouble(key.name, value as double);
          break;
        default:
          await prefs.setString(key.name, value.toString());
      }
    } catch (e) {
      debugPrint('Error saving data: $e');
      rethrow;
    }
  }
}
