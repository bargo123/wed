part of 'profile_details_bloc.dart';

@freezed
sealed class ProfileDetailsEvent with _$ProfileDetailsEvent {
  const factory ProfileDetailsEvent.fetchUser(String id) = _FetchUser;
  const factory ProfileDetailsEvent.likeUser(String id) = _LikeUser;
  const factory ProfileDetailsEvent.fetchUserLikeStatus(
    String id,
    UserDetailsInfoModel userData,
  ) = _FetchUserLikeStatus;
  const factory ProfileDetailsEvent.emitUserData(
    bool isLiked,
    UserDetailsInfoModel userData,
  ) = _EmitUserData;
}
