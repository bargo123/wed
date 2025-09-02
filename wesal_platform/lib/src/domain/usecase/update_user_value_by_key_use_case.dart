import 'package:fpdart/fpdart.dart';
import 'package:wesal/src/domain/repository/user_info_repository.dart';

class UpdateUserValueByKeyUseCase {
  final UserInfoRepository _userRepository;

  UpdateUserValueByKeyUseCase({required UserInfoRepository userRepository})
    : _userRepository = userRepository;

  TaskEither<Exception, void> call<T>({required String key, required T value}) {
    return _userRepository.updateUserInfoByKey(key, value);
  }
}
