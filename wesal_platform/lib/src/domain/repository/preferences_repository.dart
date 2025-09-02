import 'package:fpdart/fpdart.dart';
import 'package:preferences/preferences.dart';
import 'package:wesal/src/data/user_model.dart';

class PreferencesRepository {
  final WesalPreferences _preferences;

  PreferencesRepository({required WesalPreferences preferences})
    : _preferences = preferences;

  TaskEither<Exception, void> saveUser(UserModel user) {
    return TaskEither.tryCatch(
      () async => _preferences.setValue('user', user),
      (error, _) => Exception("Error saving user"),
    );
  }
}
