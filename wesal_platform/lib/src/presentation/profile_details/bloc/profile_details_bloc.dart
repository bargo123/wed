import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wesal/src/data/user_details_info_model.dart';
import 'package:wesal/src/domain/usecase/get_user_details_by_id_use_case.dart';
import 'package:wesal/src/domain/usecase/is_user_liked_use_case.dart';
import 'package:wesal/src/domain/usecase/like_user_use_case.dart';

part 'profile_details_event.dart';
part 'profile_details_state.dart';
part 'profile_details_bloc.freezed.dart';

class ProfileDetailsBloc
    extends Bloc<ProfileDetailsEvent, ProfileDetailsState> {
  ProfileDetailsBloc({
    required GetUserDetailsByIdUseCase getUserDetailsByIdUseCase,
    required IsUserLikedUseCase isUserLikedUseCase,
    required LikeUserUseCase likeUserUseCase,
  }) : _getUserDetailsByIdUseCase = getUserDetailsByIdUseCase,
       _isUserLikedUseCase = isUserLikedUseCase,
       _likeUserUseCase = likeUserUseCase,
       super(const ProfileDetailsState()) {
    on<_FetchUser>(_onFetchUser);
    on<_EmitUserData>(_onEmitUserData);
    on<_LikeUser>(_onLikeUser);
    on<_FetchUserLikeStatus>(_onFetchUserLikeStatus);
  }
  final GetUserDetailsByIdUseCase _getUserDetailsByIdUseCase;
  final IsUserLikedUseCase _isUserLikedUseCase;
  final LikeUserUseCase _likeUserUseCase;

  FutureOr<void> _onFetchUser(
    _FetchUser event,
    Emitter<ProfileDetailsState> emit,
  ) async {
    final result = await _getUserDetailsByIdUseCase(event.id).run();
    result.fold(
      (failure) {
        emit(
          state.copyWith(
            processState: ProfileDetailsProcessState.error(failure.toString()),
          ),
        );
      },
      (userDetails) {
        add(ProfileDetailsEvent.fetchUserLikeStatus(event.id, userDetails));
      },
    );
  }

  FutureOr<void> _onFetchUserLikeStatus(
    _FetchUserLikeStatus event,
    Emitter<ProfileDetailsState> emit,
  ) async {
    final result = await _isUserLikedUseCase(event.id).run();
    result.fold(
      (failure) {
        emit(
          state.copyWith(
            processState: ProfileDetailsProcessState.error(failure.toString()),
          ),
        );
      },
      (isLikedStream) {
        isLikedStream.listen((value) {
          add(ProfileDetailsEvent.emitUserData(value, event.userData));
        });
      },
    );
  }

  FutureOr<void> _onEmitUserData(
    _EmitUserData event,
    Emitter<ProfileDetailsState> emit,
  ) {
    emit(
      state.copyWith(
        user: event.userData,
        isUserLiked: event.isLiked,
        processState: const ProfileDetailsProcessState.success(),
      ),
    );
  }

  FutureOr<void> _onLikeUser(
    _LikeUser event,
    Emitter<ProfileDetailsState> emit,
  ) async {
    final likeRequest = await _likeUserUseCase(event.id).run();

    likeRequest.fold(
      (failure) {
        print('failure: $failure');
      },
      (isLiked) {
        print('isLiked');
      },
    );
  }
}
