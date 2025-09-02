import 'package:preferences/src/wesal_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WesalPreferencesImpl implements WesalPreferences {
  final SharedPreferences _preferences;

  const WesalPreferencesImpl(this._preferences);

  static Future<WesalPreferencesImpl> create() async {
    final prefs = await SharedPreferences.getInstance();
    return WesalPreferencesImpl(prefs);
  }

  @override
  T getValue<T>(String key, T defaultValue) {
    if (!_preferences.containsKey(key)) return defaultValue;

    final value = _preferences.get(key);

    // Check if the value matches the expected type
    if (value is T) {
      return value;
    }

    // Handle List<String> case safely
    if (defaultValue is List<String> && value is List<Object?>) {
      return List<String>.from(value) as T; // Ensure a growable List<String>
    }

    throw Exception(
      "Value for key '$key' is not of type ${defaultValue.runtimeType}",
    );
  }

  @override
  Future<void> setValue<T>(String key, T value) async {
    if (value is String) {
      await _preferences.setString(key, value);
    } else if (value is int) {
      await _preferences.setInt(key, value);
    } else if (value is bool) {
      await _preferences.setBool(key, value);
    } else if (value is double) {
      await _preferences.setDouble(key, value);
    } else if (value is List<String>) {
      await _preferences.setStringList(key, value);
    } else {
      throw Exception("Unsupported type ${T.runtimeType} for key '$key'");
    }
  }

  @override
  bool isKeyExist(String key) {
    return _preferences.containsKey(key);
  }

  @override
  Future<bool> remove(String key) {
    return _preferences.remove(key);
  }

  @override
  Future<bool> clear() {
    return _preferences.clear();
  }
}
