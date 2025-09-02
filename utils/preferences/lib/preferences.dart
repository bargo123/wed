library preferences;

import 'package:preferences/src/wesal_preferences.dart';
import 'package:preferences/src/wesal_preferences_impl.dart';
export 'package:preferences/src/wesal_preferences.dart';

class Preferences {
  static Future<WesalPreferences> create() async {
    return await WesalPreferencesImpl.create();
  }
}
