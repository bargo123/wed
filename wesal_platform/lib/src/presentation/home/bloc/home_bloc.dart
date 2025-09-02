import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wesal/src/data/user_info_model.dart';
import 'package:wesal/src/domain/usecase/get_users_from_firestore_use_case.dart';
import 'package:wesal/src/domain/usecase/signout_use_case.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetUsersFromFirestoreUseCase _getUsersFromFirestoreUseCase;
  final SignoutUseCase _signoutUseCase;
  HomeBloc({
    required GetUsersFromFirestoreUseCase getUsersFromFirestoreUseCase,
    required SignoutUseCase signoutUseCase,
  }) : _getUsersFromFirestoreUseCase = getUsersFromFirestoreUseCase,
       _signoutUseCase = signoutUseCase,
       super(const HomeState()) {
    on<_GetUsers>(_onGetUsers);
    on<_SignOut>(_onSignOut);
    on<_EmitUsers>(_onEmitUsers);
  }

  FutureOr<void> _onGetUsers(_GetUsers event, Emitter<HomeState> emit) async {
    final result = await _getUsersFromFirestoreUseCase().run();
    result.fold(
      (l) {
        emit(
          state.copyWith(processState: HomeProcessState.error(l.toString())),
        );
      },

      (r) {
        print("Im here");
        r.listen((data) {
          add(HomeEvent.emitUsers(data));
        });
      },
    );
  }

  FutureOr<void> _onSignOut(_SignOut event, Emitter<HomeState> emit) async {
    final result = await _signoutUseCase().run();
    result.fold(
      (l) {
        print("Something went wrong");
      },
      (r) {
        event.onSignoutSuccess();
      },
    );
  }

  FutureOr<void> _onEmitUsers(_EmitUsers event, Emitter<HomeState> emit) {
    print("Emitting users: ${event._userInfoModel.length}");
    if (event._userInfoModel.isEmpty) {
      emit(state.copyWith(processState: HomeProcessState.empty()));
    } else {
      emit(
        state.copyWith(
          processState: HomeProcessState.success(),
          users: event._userInfoModel,
        ),
      );
    }
  }
}
