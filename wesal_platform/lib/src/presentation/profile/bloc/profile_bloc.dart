import 'dart:async';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wesal/src/data/user_details_info_model.dart';
import 'package:wesal/src/domain/usecase/deleted_images_use_case.dart';
import 'package:wesal/src/domain/usecase/get_current_user_details_use_case.dart';
import 'package:wesal/src/domain/usecase/update_user_value_by_key_use_case.dart';
import 'package:wesal/src/domain/usecase/upload_images_use_case.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final DeleteImagesUseCase _deletedImagesUseCase;
  final UpdateUserValueByKeyUseCase _updateUserValueByKeyUseCase;
  final UploadImagesUseCase _uploadImagesUseCase;
  final GetCurrentUserDetailsUseCase _getCurrentUserDetailsUseCase;

  ProfileBloc({
    required DeleteImagesUseCase deleteImagesUseCase,
    required UpdateUserValueByKeyUseCase updateUserValueByKeyUseCase,
    required UploadImagesUseCase uploadImagesUseCase,
    required GetCurrentUserDetailsUseCase getCurrentUserDetailsUseCase,
  }) : _deletedImagesUseCase = deleteImagesUseCase,
       _updateUserValueByKeyUseCase = updateUserValueByKeyUseCase,
       _uploadImagesUseCase = uploadImagesUseCase,
       _getCurrentUserDetailsUseCase = getCurrentUserDetailsUseCase,

       super(const ProfileState()) {
    on<_GetCurrentUserInfo>(_onGetCurrentUserInfo);
    on<_DeletePhoto>(_onDeletePhoto);
    on<_AddPhoto>(_onAddPhoto);
    on<_SetMainPhoto>(_onSetMainPhoto);

    on<_UpdateUserValueByKey>(_onUpdateUserValueByKey);
    on<_EmitUserDetails>(_onEmitUserDetails);
    on<_AddHobby>(_onAddHobby);
    on<_RemoveHobby>(_onRemoveHobby);
  }
  StreamSubscription<UserDetailsInfoModel>? _userDetailsSubscription;

  FutureOr<void> _onGetCurrentUserInfo(
    _GetCurrentUserInfo event,
    Emitter<ProfileState> emit,
  ) async {
    final result = await _getCurrentUserDetailsUseCase().run();
    result.fold(
      (l) {
        emit(
          state.copyWith(processState: ProfileProcessState.error(l.toString())),
        );
      },
      (r) {
        _userDetailsSubscription = r.listen((userDetails) {
          add(ProfileEvent.emitUserDetails(userDetails));
        });
      },
    );
  }

  FutureOr<void> _onDeletePhoto(
    _DeletePhoto event,
    Emitter<ProfileState> emit,
  ) async {
    final result = await _deletedImagesUseCase(event.image).run();
    result.fold(
      (l) {
        emit(
          state.copyWith(processState: ProfileProcessState.error(l.toString())),
        );
      },
      (r) async {
        await _updateUserValueByKeyUseCase(
          key: "images",
          value: FieldValue.arrayRemove([event.image]),
        ).run();

        if (event.image == state.currentUser?.mainImage) {
          final updateMainImagesResult = await _updateUserValueByKeyUseCase(
            key: "mainImage",
            value: "",
          ).run();
          updateMainImagesResult.fold((l) {}, (r) async {
            if (state.currentUser?.images.isNotEmpty ?? false) {
              await _updateUserValueByKeyUseCase(
                key: "mainImage",
                value: state.currentUser?.images.first,
              ).run();
            }
          });
        }
      },
    );
  }

  FutureOr<void> _onAddPhoto(
    _AddPhoto event,
    Emitter<ProfileState> emit,
  ) async {
    try {
      // Step 1: Upload image
      final uploadResult = await _uploadImagesUseCase(event.image).run();
      final imageUrl = await uploadResult.fold<Future<String>>((failure) async {
        emit(
          state.copyWith(
            processState: ProfileProcessState.error(
              'Failed to upload image: ${failure.toString()}',
            ),
          ),
        );
        return Future.error(failure);
      }, (imageUrl) async => imageUrl);

      if (state.currentUser?.images.isEmpty ?? true) {
        final mainImageResult = await _updateUserValueByKeyUseCase(
          key: "mainImage",
          value: imageUrl,
        ).run();

        mainImageResult.fold((failure) {
          _cleanupUploadedImage(imageUrl);
          return;
        }, (success) {});
      }

      final updateResult = await _updateUserValueByKeyUseCase(
        key: "images",
        value: FieldValue.arrayUnion([imageUrl]),
      ).run();
      updateResult.fold((failure) {
        _cleanupUploadedImage(imageUrl);
      }, (success) {});
    } catch (e) {
      emit(
        state.copyWith(
          processState: ProfileProcessState.error(
            'An unexpected error occurred: ${e.toString()}',
          ),
        ),
      );
    }
  }

  void _cleanupUploadedImage(String imageUrl) {
    _deletedImagesUseCase(imageUrl).run().then((result) {
      result.fold((failure) {}, (success) {});
    });
  }

  FutureOr<void> _onSetMainPhoto(
    _SetMainPhoto event,
    Emitter<ProfileState> emit,
  ) {
    _updateUserValueByKeyUseCase(
      key: 'mainImage',
      value: event.image,
    ).run().then((result) {
      result.fold(
        (l) {
          emit(
            state.copyWith(
              processState: ProfileProcessState.error(l.toString()),
            ),
          );
        },
        (r) {
          emit(
            state.copyWith(
              currentUser: state.currentUser?.copyWith(mainImage: event.image),
            ),
          );
        },
      );
    });
  }

  FutureOr<void> _onUpdateUserValueByKey(
    _UpdateUserValueByKey event,
    Emitter<ProfileState> emit,
  ) {
    emit(state.copyWith(processState: ProfileProcessState.loading()));
    final request = _updateUserValueByKeyUseCase(
      key: event.key,
      value: event.value,
    );
    request.run().then((result) {
      result.fold((l) {}, (r) {});
    });
  }

  @override
  Future<void> close() {
    _userDetailsSubscription?.cancel();
    return super.close();
  }

  FutureOr<void> _onEmitUserDetails(
    _EmitUserDetails event,
    Emitter<ProfileState> emit,
  ) {
    emit(
      state.copyWith(
        currentUser: event.user,
        processState: ProfileProcessState.success(),
      ),
    );
  }

  FutureOr<void> _onAddHobby(_AddHobby event, Emitter<ProfileState> emit) {
    final request = _updateUserValueByKeyUseCase(
      key: "hobbies",
      value: FieldValue.arrayUnion([event.hobby]),
    );
    request.run().then((result) {
      result.fold((l) {}, (r) {});
    });
  }

  FutureOr<void> _onRemoveHobby(
    _RemoveHobby event,
    Emitter<ProfileState> emit,
  ) {
    final request = _updateUserValueByKeyUseCase(
      key: "hobbies",
      value: FieldValue.arrayRemove([event.hobby]),
    );
    request.run().then((result) {
      result.fold((l) {}, (r) {});
    });
  }
}
