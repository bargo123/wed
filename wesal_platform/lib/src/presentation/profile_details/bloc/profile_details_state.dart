part of 'profile_details_bloc.dart';

@freezed
sealed class ProfileDetailsState with _$ProfileDetailsState {
  const factory ProfileDetailsState({
    UserDetailsInfoModel? user,
    @Default(ProfileDetailsProcessState.loading())
    ProfileDetailsProcessState processState,
    bool? isUserLiked,
  }) = _ProfileDetailsState;
}

@freezed
class ProfileDetailsProcessState with _$ProfileDetailsProcessState {
  const factory ProfileDetailsProcessState.loading() = _Loading;
  const factory ProfileDetailsProcessState.success() = _Success;
  const factory ProfileDetailsProcessState.error(String message) = _Error;
}
