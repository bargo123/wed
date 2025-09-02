abstract class WesalPreferences {
  T getValue<T>(String key, T defaultValue);
  Future<void> setValue<T>(String key, T value);

  bool isKeyExist(String key);
  Future<bool> remove(String key);
  Future<bool> clear();
}
