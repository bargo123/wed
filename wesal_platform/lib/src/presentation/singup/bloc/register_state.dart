part of 'register_bloc.dart';

@freezed
sealed class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default(false) bool isNamePageButtonEnabled,
    @Default(false) bool isImagesButtonEnabled,
    @Default(false) bool isAvatarButtonEnabled,
    @Default(false) bool isGenderButtonEnabled,
    @Default(false) bool isHobbiesButtonEnabled,
    @Default(false) bool isEducationButtonEnabled,
    String? name,
    @Default('None') String selectedAvatar,
    String? dateOfBirth,
    String? gender,
    @Default([]) List<String> hobbies,
    String? education,
    String? accubation,
    @Default(0) int stepIndex,
    @Default([]) List<File> images,
    File? mainImage,
    @Default(false) didUserSkipAddingImages,
  }) = _RegisterState;
}
