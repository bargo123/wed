import 'package:fpdart/fpdart.dart';
import 'package:wesal/src/domain/repository/user_info_repository.dart';

class CheckUserExistanceUseCase {
  final UserInfoRepository _userInfoRepository;

  CheckUserExistanceUseCase({required UserInfoRepository userInfoRepository})
    : _userInfoRepository = userInfoRepository;
  TaskEither<Exception, bool> call() {
    return _userInfoRepository.checkIfUserExists();
  }
}
