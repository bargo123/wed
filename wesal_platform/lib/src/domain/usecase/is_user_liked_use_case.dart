import 'package:fpdart/fpdart.dart';
import 'package:wesal/src/domain/repository/like_repository.dart';

class IsUserLikedUseCase {
  final LikeRepository _likeRepository;
  IsUserLikedUseCase({required LikeRepository likeRepository})
    : _likeRepository = likeRepository;

  TaskEither<Exception, Stream<bool>> call(String userId) {
    return _likeRepository.isLiked(userId);
  }
}
