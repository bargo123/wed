part of 'login_bloc.dart';

@freezed
sealed class LoginState with _$LoginState {
  const factory LoginState({
    @Default(LoginProccessState.idle()) LoginProccessState proccessState,
  }) = _LoginState;
}

@freezed
class LoginProccessState with _$LoginProccessState {
  const factory LoginProccessState.idle() = _Idle;
  const factory LoginProccessState.loading() = _Loading;
  const factory LoginProccessState.success(bool hasAccount) = _Success;
  const factory LoginProccessState.error(String message) = _Error;
}
