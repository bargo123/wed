import 'package:fpdart/fpdart.dart';
import 'package:wesal/src/data/user_model.dart';
import 'package:wesal/src/domain/exceptions/auth_exception.dart';
import 'package:wesal/src/domain/repository/auth_repository.dart';

class GoogleSigninUseCase {
  final AuthRepository _authRepository;
  GoogleSigninUseCase({required AuthRepository authRepository})
    : _authRepository = authRepository;

  TaskEither<AuthFailure, UserModel> call() {
    return _authRepository.googleSignIn();
  }
}
