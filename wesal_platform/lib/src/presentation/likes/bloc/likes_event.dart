part of 'likes_bloc.dart';

@freezed
class LikesEvent with _$LikesEvent {
  const factory LikesEvent.subscribe() = _Subscribe;
  const factory LikesEvent.likeBack(String userId) = _LikeBack;
  const factory LikesEvent.remove(String userId) = _Remove;
  const factory LikesEvent.emitUsers(Map<bool, UserInfoModel> users) =
      _EmitUsers;
}
