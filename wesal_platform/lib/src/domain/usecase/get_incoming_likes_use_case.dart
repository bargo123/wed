import 'package:fpdart/fpdart.dart';
import 'package:wesal/src/data/user_info_model.dart';
import 'package:wesal/src/domain/repository/like_repository.dart';

class GetIncomingLikesUseCase {
  final LikeRepository _likeRepository;

  GetIncomingLikesUseCase({required LikeRepository likeRepository})
    : _likeRepository = likeRepository;

  TaskEither<Exception, Stream<Map<bool, UserInfoModel>>> call() {
    return _likeRepository.getIncomingLikes();
  }
}
