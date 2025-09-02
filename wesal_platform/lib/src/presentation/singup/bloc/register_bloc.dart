import 'dart:async';
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wesal/src/data/user_details_info_model.dart';
import 'package:wesal/src/domain/usecase/save_user_info_to_firestore_use_case.dart';
import 'package:wesal/src/domain/usecase/upload_images_use_case.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final SaveUserInfoToFirestoreUseCase _saveUserInfoToFirestoreUseCase;
  final UploadImagesUseCase _uploadImagesUseCase;

  RegisterBloc({
    required SaveUserInfoToFirestoreUseCase saveUserInfoToFirestoreUseCase,
    required UploadImagesUseCase uploadImagesUseCase,
  }) : _saveUserInfoToFirestoreUseCase = saveUserInfoToFirestoreUseCase,
       _uploadImagesUseCase = uploadImagesUseCase,
       super(const RegisterState()) {
    on<_NextStep>(_nextStep);
    on<_PreviousStep>(_previousStep);
    on<_NameChanged>(_onNameChanged);
    on<_DateOfBirthChanged>(_onDateOfBirthChanged);
    on<_GenderChanged>(_onGenderChanged);
    on<_AddImage>(_onAddImage);
    on<_RemoveImage>(_onRemoveImage);
    on<_SetMainImage>(_onSetMainImage);
    on<_ShouldSkipAddingImage>(_onSkipAddingImage);
    on<_AddHobby>(_onAddHobby);
    on<_RemoveHobby>(_onRemoveHobby);
    on<_EnterEducation>(_onEnterEducation);
    on<_EnterAccubation>(_onEnterAccubation);
    on<_SubmitUserInfo>(_onSubmitUserInfo);
    on<_AddAvatar>(_onAddAvatar);
  }
  FutureOr<void> _nextStep(_NextStep event, Emitter<RegisterState> emit) {
    emit(state.copyWith(stepIndex: state.stepIndex + 1));
  }

  FutureOr<void> _previousStep(
    _PreviousStep event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.copyWith(stepIndex: state.stepIndex - 1));
  }

  FutureOr<void> _onNameChanged(
    _NameChanged event,
    Emitter<RegisterState> emit,
  ) {
    emit(
      state.copyWith(
        isNamePageButtonEnabled: _checkIfNameAndDateOfBirthAreValid(
          event.name,
          state.dateOfBirth ?? "",
        ),
        name: event.name,
      ),
    );
  }

  FutureOr<void> _onDateOfBirthChanged(
    _DateOfBirthChanged event,
    Emitter<RegisterState> emit,
  ) {
    emit(
      state.copyWith(
        isNamePageButtonEnabled: _checkIfNameAndDateOfBirthAreValid(
          state.name ?? "",
          event.dateOfBirth,
        ),
        dateOfBirth: event.dateOfBirth,
      ),
    );
  }

  FutureOr<void> _onGenderChanged(
    _GenderChanged event,
    Emitter<RegisterState> emit,
  ) {
    emit(
      state.copyWith(
        isGenderButtonEnabled: _checkIfGenderIsSelected(event.gender),
        gender: event.gender,
      ),
    );
  }

  FutureOr<void> _onAddImage(_AddImage event, Emitter<RegisterState> emit) {
    final updatedImages = [...state.images, event.image];

    emit(
      state.copyWith(
        images: updatedImages,
        mainImage: state.mainImage ?? event.image,
        isImagesButtonEnabled: _checkIfImagesAreSelected(updatedImages),
      ),
    );
  }

  FutureOr<void> _onRemoveImage(
    _RemoveImage event,
    Emitter<RegisterState> emit,
  ) {
    final updatedImages = state.images
        .where((element) => element.path != event.image.path)
        .toList();

    emit(
      state.copyWith(
        images: updatedImages,
        isImagesButtonEnabled: _checkIfImagesAreSelected(updatedImages),
        mainImage: updatedImages.isEmpty ? null : state.mainImage,
      ),
    );
  }

  FutureOr<void> _onSkipAddingImage(
    _ShouldSkipAddingImage event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.copyWith(didUserSkipAddingImages: event.shouldSkip));
  }

  FutureOr<void> _onSetMainImage(
    _SetMainImage event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.copyWith(mainImage: event.image));
  }

  FutureOr<void> _onAddHobby(_AddHobby event, Emitter<RegisterState> emit) {
    final updatedHobbies = [...state.hobbies, event.hobby];
    emit(
      state.copyWith(
        hobbies: updatedHobbies,
        isHobbiesButtonEnabled: _checkIfHobbiesAreSelected(updatedHobbies),
      ),
    );
  }

  FutureOr<void> _onRemoveHobby(
    _RemoveHobby event,
    Emitter<RegisterState> emit,
  ) {
    final updatedHobbies = state.hobbies
        .where((element) => element != event.hobby)
        .toList();
    emit(
      state.copyWith(
        hobbies: updatedHobbies,
        isHobbiesButtonEnabled: _checkIfHobbiesAreSelected(updatedHobbies),
      ),
    );
  }

  FutureOr<void> _onEnterEducation(
    _EnterEducation event,
    Emitter<RegisterState> emit,
  ) {
    emit(
      state.copyWith(
        education: event.education,
        isEducationButtonEnabled: _checkIfEducationAndAccubationAreSelected(
          event.education,
          state.accubation ?? "",
        ),
      ),
    );
  }

  FutureOr<void> _onEnterAccubation(
    _EnterAccubation event,
    Emitter<RegisterState> emit,
  ) {
    emit(
      state.copyWith(
        accubation: event.accubation,
        isEducationButtonEnabled: _checkIfEducationAndAccubationAreSelected(
          state.education ?? "",
          event.accubation,
        ),
      ),
    );
  }

  FutureOr<void> _onSubmitUserInfo(
    _SubmitUserInfo event,
    Emitter<RegisterState> emit,
  ) async {
    final List<String> imagesUrl = [];
    String mainImageUrl = '';
    if (!state.didUserSkipAddingImages) {
      for (var image in state.images) {
        final uploadImageRequest = await _uploadImagesUseCase(image).run();
        uploadImageRequest.fold(
          (l) {
            final updatedImages = state.images
                .where((element) => element.path != image.path)
                .toList();
            emit(
              state.copyWith(
                images: updatedImages,
                mainImage: updatedImages.isEmpty ? null : state.mainImage,
              ),
            );
          },
          (r) {
            if (image.path == state.mainImage?.path) {
              mainImageUrl = r;
            }
            imagesUrl.add(r);
          },
        );
      }
    }
    final uploadUserInfoRequest = await _saveUserInfoToFirestoreUseCase(
      UserDetailsInfoModel(
        name: state.name,
        dateOfBirth: state.dateOfBirth,
        gender: state.gender,
        images: imagesUrl,
        hobbies: state.hobbies,
        education: state.education,
        accubation: state.accubation,
        mainImage: mainImageUrl,
        avatar: state.selectedAvatar,
      ),
    ).run();

    uploadUserInfoRequest.fold(
      (l) {
        print(l);
      },
      (r) {
        event.onSuccess();
      },
    );
  }

  _checkIfGenderIsSelected(String gender) {
    if (gender.isEmpty) {
      return false;
    }

    return true;
  }

  bool _checkIfImagesAreSelected(List<File> images) {
    if (images.isEmpty) {
      return false;
    }
    return true;
  }

  bool _checkIfNameAndDateOfBirthAreValid(String name, String dateOfBirth) {
    if (name.isEmpty || dateOfBirth.isEmpty) {
      return false;
    }
    return true;
  }

  _checkIfHobbiesAreSelected(List<String> hobbies) {
    if (hobbies.isEmpty || hobbies.length < 2) {
      return false;
    }
    return true;
  }

  _checkIfEducationAndAccubationAreSelected(
    String education,
    String accubation,
  ) {
    if (education.isEmpty || accubation.isEmpty) {
      return false;
    }
    return true;
  }

  FutureOr<void> _onAddAvatar(_AddAvatar event, Emitter<RegisterState> emit) {
    emit(state.copyWith(selectedAvatar: event.avatar));
  }
}
