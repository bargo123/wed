part of 'likes_bloc.dart';

@freezed
sealed class LikesState with _$LikesState {
  const factory LikesState({
    @Default({}) Map<bool, UserInfoModel> users,
    @Default(LikesProcessState.loading()) LikesProcessState processState,
  }) = _LikesState;
}

@freezed
class LikesProcessState with _$LikesProcessState {
  const factory LikesProcessState.loading() = _Loading;
  const factory LikesProcessState.success() = _Success;
  const factory LikesProcessState.empty() = _Empty;
  const factory LikesProcessState.error(String message) = _Error;
}
