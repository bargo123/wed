part of 'profile_bloc.dart';

@freezed
sealed class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getCurrentUserInfo() = _GetCurrentUserInfo;
  const factory ProfileEvent.deletePhoto(String image) = _DeletePhoto;
  const factory ProfileEvent.addPhoto(File image) = _AddPhoto;
  const factory ProfileEvent.setMainPhoto(String image) = _SetMainPhoto;

  const factory ProfileEvent.updateUserValueByKey({
    required String key,
    required String? value,
  }) = _UpdateUserValueByKey;
  const factory ProfileEvent.emitUserDetails(UserDetailsInfoModel user) =
      _EmitUserDetails;
  const factory ProfileEvent.addHobby(String hobby) = _AddHobby;
  const factory ProfileEvent.removeHobby(String hobby) = _RemoveHobby;
}
