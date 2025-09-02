part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.getCurrentUserInfo() = _GetCurrentUserInfo;
  const factory SettingsEvent.signOut({
    required void Function() onSignoutSuccess,
  }) = _SignOut;

  const factory SettingsEvent.emitUserInfo(UserInfoModel user) = _EmitUserInfo;
}
