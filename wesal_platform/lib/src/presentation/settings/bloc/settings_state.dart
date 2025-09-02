part of 'settings_bloc.dart';

@freezed
sealed class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default(SettingsProcessState.loading()) SettingsProcessState processState,
    UserInfoModel? currentUserInfo,
  }) = _SettingsState;
}

@freezed
class SettingsProcessState with _$SettingsProcessState {
  const factory SettingsProcessState.loading() = _Loading;
  const factory SettingsProcessState.success() = _Success;
  const factory SettingsProcessState.error(String message) = _Error;
}
