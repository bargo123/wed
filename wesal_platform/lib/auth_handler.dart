import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:preferences/preferences.dart';
import 'package:wesal/core/constants/app_constants.dart';

class AuthHandler {
  final WesalPreferences _preferences;
  final FirebaseFirestore _firestore;

  AuthHandler({
    required WesalPreferences preferences,
    required FirebaseFirestore firestore,
  }) : _preferences = preferences,
       _firestore = firestore;

  Future<bool> canUserSignin() async {
    final token = _preferences.getValue(AppConstants.token, "");
    if (token.isNotEmpty) {
      final userId = _preferences.getValue(AppConstants.uid, "");
      final user = await _firestore.collection('users').doc(userId).get();

      if (user.exists) {
        return true;
      }
      return false;
    }
    return false;
  }
}
