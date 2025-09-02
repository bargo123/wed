import 'package:fpdart/fpdart.dart';
import 'package:wesal/src/data/user_details_info_model.dart';
import 'package:wesal/src/domain/repository/user_info_repository.dart';

class GetCurrentUserDetailsUseCase {
  final UserInfoRepository _userInfoRepository;

  GetCurrentUserDetailsUseCase({required UserInfoRepository userInfoRepository})
    : _userInfoRepository = userInfoRepository;

  TaskEither<Exception, Stream<UserDetailsInfoModel>> call() {
    return _userInfoRepository.getMyDetailsFromFirestore();
  }
}
