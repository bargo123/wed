import 'package:fpdart/fpdart.dart';
import 'package:wesal/src/data/user_details_info_model.dart';
import 'package:wesal/src/domain/repository/user_info_repository.dart';

class GetUserDetailsByIdUseCase {
  final UserInfoRepository _repository;

  GetUserDetailsByIdUseCase({required UserInfoRepository repository})
    : _repository = repository;

  TaskEither<Exception, UserDetailsInfoModel> call(String userId) {
    return _repository.getMyDetailsById(userId);
  }
}
