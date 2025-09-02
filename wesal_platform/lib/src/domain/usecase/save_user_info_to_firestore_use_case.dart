import 'package:fpdart/fpdart.dart';
import 'package:wesal/src/data/user_details_info_model.dart';
import 'package:wesal/src/domain/repository/user_info_repository.dart';

class SaveUserInfoToFirestoreUseCase {
  final UserInfoRepository _userInfoRepository;

  SaveUserInfoToFirestoreUseCase({
    required UserInfoRepository userInfoRepository,
  }) : _userInfoRepository = userInfoRepository;

  TaskEither<Exception, Unit> call(UserDetailsInfoModel userInfo) {
    return _userInfoRepository.saveUserInfoToFirestore(userInfo);
  }
}
