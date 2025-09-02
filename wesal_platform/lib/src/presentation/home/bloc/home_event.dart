part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getUsers() = _GetUsers;
  const factory HomeEvent.signOut({required void Function() onSignoutSuccess}) =
      _SignOut;
  const factory HomeEvent.emitUsers(List<UserInfoModel> userInfoModel) =
      _EmitUsers;
}
