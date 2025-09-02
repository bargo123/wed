import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wesal/src/data/user_info_model.dart';
import 'package:wesal/src/domain/usecase/get_current_user_info_use_case.dart';
import 'package:wesal/src/domain/usecase/signout_use_case.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final GetCurrentUserInfoUseCase _getCurrentUserInfoUseCase;
  final SignoutUseCase _signoutUseCase;

  SettingsBloc({
    required GetCurrentUserInfoUseCase getCurrentUserInfoUseCase,
    required SignoutUseCase signoutUseCase,
  }) : _getCurrentUserInfoUseCase = getCurrentUserInfoUseCase,
       _signoutUseCase = signoutUseCase,
       super(const _SettingsState()) {
    on<_GetCurrentUserInfo>(_onGetCurrentUserInfo);
    on<_SignOut>(_onSignOut);
    on<_EmitUserInfo>(_onEmitUserInfo);
  }

  StreamSubscription<UserInfoModel>? _userInfoSubscription;

  FutureOr<void> _onGetCurrentUserInfo(
    _GetCurrentUserInfo event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(processState: SettingsProcessState.loading()));
    final result = await _getCurrentUserInfoUseCase().run();
    result.fold(
      (l) {
        emit(
          state.copyWith(
            processState: SettingsProcessState.error(l.toString()),
          ),
        );
      },
      (r) async {
        _userInfoSubscription = r.listen((userInfo) {
          add(SettingsEvent.emitUserInfo(userInfo));
        });
      },
    );
  }

  FutureOr<void> _onEmitUserInfo(
    _EmitUserInfo event,
    Emitter<SettingsState> emit,
  ) {
    emit(
      state.copyWith(
        currentUserInfo: event.user,
        processState: SettingsProcessState.success(),
      ),
    );
  }

  FutureOr<void> _onSignOut(_SignOut event, Emitter<SettingsState> emit) async {
    final result = await _signoutUseCase().run();
    result.fold(
      (l) {
        print("Something went wrong $l");
      },
      (r) {
        event.onSignoutSuccess();
      },
    );
  }

  @override
  Future<void> close() {
    _userInfoSubscription?.cancel();
    return super.close();
  }
}
