import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wesal/src/data/user_info_model.dart';
import 'package:wesal/src/domain/usecase/get_incoming_likes_use_case.dart';
import 'package:wesal/src/domain/usecase/like_user_use_case.dart';

part 'likes_event.dart';
part 'likes_state.dart';
part 'likes_bloc.freezed.dart';

class LikesBloc extends Bloc<LikesEvent, LikesState> {
  final GetIncomingLikesUseCase _getIncomingLikesUseCase;
  final LikeUserUseCase _likeUserUseCase;

  StreamSubscription<Map<bool, UserInfoModel>>? _subscription;

  LikesBloc({
    required GetIncomingLikesUseCase getIncomingLikesUseCase,
    required LikeUserUseCase likeUserUseCase,
  }) : _getIncomingLikesUseCase = getIncomingLikesUseCase,
       _likeUserUseCase = likeUserUseCase,

       super(const LikesState()) {
    on<_Subscribe>(_onSubscribe);
    on<_LikeBack>(_onLikeBack);
    on<_Remove>(_onRemove);
    on<_EmitUsers>(_onEmitUsers);
  }

  FutureOr<void> _onSubscribe(
    _Subscribe event,
    Emitter<LikesState> emit,
  ) async {
    emit(state.copyWith(processState: LikesProcessState.loading()));
    final result = await _getIncomingLikesUseCase().run();
    result.fold(
      (l) => emit(
        state.copyWith(processState: LikesProcessState.error(l.toString())),
      ),
      (stream) {
        _subscription?.cancel();
        _subscription = stream.listen((value) {
          add(LikesEvent.emitUsers(value));
        });
      },
    );
  }

  FutureOr<void> _onLikeBack(_LikeBack event, Emitter<LikesState> emit) async {
    final result = await _likeUserUseCase(event.userId).run();
    result.fold(
      (l) => emit(
        state.copyWith(processState: LikesProcessState.error(l.toString())),
      ),
      (r) {
        // Optionally handle success, e.g., show a confirmation message
      },
    );
  }

  FutureOr<void> _onRemove(_Remove event, Emitter<LikesState> emit) async {
    final result = await _likeUserUseCase(event.userId).run();
    result.fold(
      (l) => emit(
        state.copyWith(processState: LikesProcessState.error(l.toString())),
      ),
      (r) {},
    );
  }

  FutureOr<void> _onEmitUsers(_EmitUsers event, Emitter<LikesState> emit) {
    if (event.users.isEmpty) {
      emit(state.copyWith(users: {}, processState: LikesProcessState.empty()));
    } else {
      emit(
        state.copyWith(
          users: event.users,
          processState: LikesProcessState.success(),
        ),
      );
    }
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
