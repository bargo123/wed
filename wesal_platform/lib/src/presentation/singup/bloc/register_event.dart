part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.nextStep() = _NextStep;
  const factory RegisterEvent.previousStep() = _PreviousStep;
  const factory RegisterEvent.nameChanged(String name) = _NameChanged;
  const factory RegisterEvent.dateOfBirthChanged(String dateOfBirth) =
      _DateOfBirthChanged;
  const factory RegisterEvent.genderChanged(String gender) = _GenderChanged;
  const factory RegisterEvent.addImage(File image) = _AddImage;
  const factory RegisterEvent.removeImage(File image) = _RemoveImage;
  const factory RegisterEvent.setMainImage(File image) = _SetMainImage;

  const factory RegisterEvent.shouldSkipAddingImage(bool shouldSkip) =
      _ShouldSkipAddingImage;
  const factory RegisterEvent.addAvatar(String avatar) = _AddAvatar;
  const factory RegisterEvent.addHobby(String hobby) = _AddHobby;
  const factory RegisterEvent.removeHobby(String hobby) = _RemoveHobby;
  const factory RegisterEvent.enterEducation(String education) =
      _EnterEducation;
  const factory RegisterEvent.enterAccubation(String accubation) =
      _EnterAccubation;

  const factory RegisterEvent.subimtUserInfo({
    required void Function() onSuccess,
  }) = _SubmitUserInfo;
}
