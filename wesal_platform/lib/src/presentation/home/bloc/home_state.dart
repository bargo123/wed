part of 'home_bloc.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<UserInfoModel> users,
    @Default(HomeProcessState.loading()) HomeProcessState processState,
  }) = _HomeState;
}

@freezed
class HomeProcessState with _$HomeProcessState {
  const factory HomeProcessState.loading() = _Loading;
  const factory HomeProcessState.success() = _Success;
  const factory HomeProcessState.empty() = _Empty;
  const factory HomeProcessState.error(String message) = _Error;
}
