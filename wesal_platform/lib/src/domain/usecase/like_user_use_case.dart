import 'package:fpdart/fpdart.dart';
import 'package:wesal/src/domain/repository/like_repository.dart';

class LikeUserUseCase {
  final LikeRepository _likeRepository;

  LikeUserUseCase({required LikeRepository likeRepository})
    : _likeRepository = likeRepository;

  TaskEither<Exception, void> call(String userId) {
    return _likeRepository.submitLike(userId);
  }
}
