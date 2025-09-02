import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:preferences/preferences.dart';
import 'package:wesal/src/data/user_model.dart';
import 'package:wesal/src/domain/exceptions/auth_exception.dart';

class AuthRepository {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final WesalPreferences _preferences;

  AuthRepository({
    required FirebaseAuth firebaseAuth,
    required GoogleSignIn googleSignIn,
    required WesalPreferences preferences,
  }) : _firebaseAuth = firebaseAuth,
       _googleSignIn = googleSignIn,
       _preferences = preferences;

  /// Signs in a user using Google authentication.
  /// Returns a [TaskEither] that contains either an [AuthFailure] or a [UserModel].
  TaskEither<AuthFailure, UserModel> googleSignIn() {
    return _authenticateWithGoogle()
        .flatMap(_getGoogleAuth)
        .flatMap(_createFirebaseCredential)
        .flatMap(_signInWithFirebase)
        .map(_toUserModel)
        .chainFirst((user) {
          return TaskEither.tryCatch(
            () async {
              await _preferences.setValue('uid', user.uid);
              await _preferences.setValue('email', user.email);
              await _preferences.setValue('token', user.token);
            },
            (error, _) =>
                AuthFailure(message: 'Error saving user data: $error'),
          );
        });
  }

  /// Initiates the Google sign-in process.
  /// Returns a [TaskEither] containing the [GoogleSignInAccount] if successful.
  TaskEither<AuthFailure, GoogleSignInAccount> _authenticateWithGoogle() {
    return TaskEither.tryCatch(
      () => _googleSignIn.authenticate(),
      (error, _) => AuthFailure(message: 'Google sign-in failed: $error'),
    ).flatMap((account) => TaskEither.right(account));
  }

  /// Retrieves Google authentication details from the signed-in account.
  /// Returns a [TaskEither] containing [GoogleSignInAuthentication] if successful.
  TaskEither<AuthFailure, GoogleSignInAuthentication> _getGoogleAuth(
    GoogleSignInAccount account,
  ) {
    return TaskEither.tryCatch(
      () async => account.authentication,
      (error, _) =>
          AuthFailure(message: 'Google authentication failed: $error'),
    );
  }

  /// Creates Firebase credentials using Google authentication details.
  /// Returns a [TaskEither] containing [AuthCredential] if successful.
  TaskEither<AuthFailure, AuthCredential> _createFirebaseCredential(
    GoogleSignInAuthentication auth,
  ) {
    return TaskEither.tryCatch(
      () async => GoogleAuthProvider.credential(idToken: auth.idToken),
      (error, _) => AuthFailure(message: 'Credential creation failed: $error'),
    );
  }

  /// Signs in to Firebase using the provided credentials.
  /// Returns a [TaskEither] containing [UserCredential] if successful.
  TaskEither<AuthFailure, UserCredential> _signInWithFirebase(
    AuthCredential credential,
  ) {
    return TaskEither.tryCatch(
      () => _firebaseAuth.signInWithCredential(credential),
      (error, _) => AuthFailure.fromFirebase(error as FirebaseAuthException),
    );
  }

  /// Converts Firebase user credentials to a [UserModel].
  /// Returns a [UserModel] containing the user's information.
  UserModel _toUserModel(UserCredential credential) {
    return UserModel(
      uid: credential.user?.uid ?? "",
      email: credential.user?.email ?? "",
      token: credential.credential?.accessToken ?? "",
    );
  }

  TaskEither<AuthFailure, Unit> signOut() {
    return TaskEither.tryCatch(() async {
      await Future.wait([
        _firebaseAuth.signOut(),
        _googleSignIn.signOut(),
        _preferences.clear(),
      ]);
      return unit;
    }, (error, _) => AuthFailure(message: error.toString()));
  }
}
