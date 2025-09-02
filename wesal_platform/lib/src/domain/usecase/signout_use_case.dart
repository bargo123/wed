import 'package:fpdart/fpdart.dart';
import 'package:wesal/src/domain/exceptions/auth_exception.dart';
import 'package:wesal/src/domain/repository/auth_repository.dart';

class SignoutUseCase {
  final AuthRepository _authRepository;

  SignoutUseCase({required AuthRepository authRepository})
    : _authRepository = authRepository;

  TaskEither<AuthFailure, Unit> call() {
    return _authRepository.signOut();
  }
}
