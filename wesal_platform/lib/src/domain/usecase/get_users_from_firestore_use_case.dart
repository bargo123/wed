import 'package:fpdart/fpdart.dart';
import 'package:wesal/src/data/user_info_model.dart';
import 'package:wesal/src/domain/repository/user_info_repository.dart';

class GetUsersFromFirestoreUseCase {
  final UserInfoRepository _userInfoRepository;

  GetUsersFromFirestoreUseCase({required UserInfoRepository userInfoRepository})
    : _userInfoRepository = userInfoRepository;

  TaskEither<Exception, Stream<List<UserInfoModel>>> call() {
    return _userInfoRepository.getUsersInfoFromFirestore();
  }
}
