import 'package:fpdart/fpdart.dart';
import 'package:wesal/src/data/user_info_model.dart';
import 'package:wesal/src/domain/repository/user_info_repository.dart';

class GetCurrentUserInfoUseCase {
  final UserInfoRepository _userInfoRepository;

  GetCurrentUserInfoUseCase({required UserInfoRepository userInfoRepository})
    : _userInfoRepository = userInfoRepository;

  TaskEither<Exception, Stream<UserInfoModel>> call() {
    return _userInfoRepository.getMyInfoFromFirestore();
  }
}
