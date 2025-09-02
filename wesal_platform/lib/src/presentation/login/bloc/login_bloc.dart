import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wesal/src/domain/usecase/check_user_existance_use_case.dart';
import 'package:wesal/src/domain/usecase/google_signin_use_case.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final GoogleSigninUseCase _googleSigninUseCase;
  final CheckUserExistanceUseCase _checkUserExistanceUseCase;
  LoginBloc({
    required GoogleSigninUseCase googleSigninUseCase,
    required CheckUserExistanceUseCase checkUserExistanceUseCase,
  }) : _googleSigninUseCase = googleSigninUseCase,
       _checkUserExistanceUseCase = checkUserExistanceUseCase,
       super(LoginState()) {
    on<_GoogleSignin>(_googleSignin);
    on<_CheckUserExistance>(_checkUserExistance);
  }

  FutureOr<void> _googleSignin(event, Emitter<LoginState> emit) async {
    emit(state.copyWith(proccessState: LoginProccessState.loading()));
    final result = await _googleSigninUseCase().run();
    result.fold(
      (error) {
        print('Google Signin Error: ${error.message}');
        emit(
          state.copyWith(
            proccessState: LoginProccessState.error(error.message),
          ),
        );
      },
      (data) {
        add(_CheckUserExistance());
      },
    );
  }

  FutureOr<void> _checkUserExistance(
    _CheckUserExistance event,
    Emitter<LoginState> emit,
  ) async {
    final result = await _checkUserExistanceUseCase().run();

    result.fold(
      (error) {
        emit(
          state.copyWith(
            proccessState: LoginProccessState.error(error.toString()),
          ),
        );
      },
      (data) {
        emit(state.copyWith(proccessState: LoginProccessState.success(data)));
      },
    );
  }
}
