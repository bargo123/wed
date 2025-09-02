part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.googleSignin() = _GoogleSignin;
  const factory LoginEvent.checkUserExistance() = _CheckUserExistance;
}
