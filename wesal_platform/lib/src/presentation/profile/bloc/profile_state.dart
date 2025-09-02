part of 'profile_bloc.dart';

@freezed
sealed class ProfileState with _$ProfileState {
  const factory ProfileState({
    UserDetailsInfoModel? currentUser,
    @Default(ProfileProcessState.loading()) ProfileProcessState processState,
  }) = _ProfileState;
}

@freezed
class ProfileProcessState with _$ProfileProcessState {
  const factory ProfileProcessState.loading() = _Loading;
  const factory ProfileProcessState.success() = _Success;
  const factory ProfileProcessState.error(String message) = _Error;
}
