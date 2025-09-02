// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:firebase_storage/firebase_storage.dart' as _i457;
import 'package:get_it/get_it.dart' as _i174;
import 'package:google_sign_in/google_sign_in.dart' as _i116;
import 'package:injectable/injectable.dart' as _i526;
import 'package:preferences/preferences.dart' as _i695;
import 'package:wesal/auth_handler.dart' as _i675;
import 'package:wesal/src/di/app_module.dart' as _i280;
import 'package:wesal/src/domain/repository/auth_repository.dart' as _i788;
import 'package:wesal/src/domain/repository/images_repository.dart' as _i365;
import 'package:wesal/src/domain/repository/like_repository.dart' as _i540;
import 'package:wesal/src/domain/repository/user_info_repository.dart' as _i708;
import 'package:wesal/src/domain/usecase/check_user_existance_use_case.dart'
    as _i500;
import 'package:wesal/src/domain/usecase/deleted_images_use_case.dart' as _i967;
import 'package:wesal/src/domain/usecase/get_current_user_details_use_case.dart'
    as _i312;
import 'package:wesal/src/domain/usecase/get_current_user_info_use_case.dart'
    as _i276;
import 'package:wesal/src/domain/usecase/get_user_details_by_id_use_case.dart'
    as _i636;
import 'package:wesal/src/domain/usecase/get_users_from_firestore_use_case.dart'
    as _i576;
import 'package:wesal/src/domain/usecase/google_signin_use_case.dart' as _i1061;
import 'package:wesal/src/domain/usecase/is_user_liked_use_case.dart' as _i334;
import 'package:wesal/src/domain/usecase/like_user_use_case.dart' as _i711;
import 'package:wesal/src/domain/usecase/save_user_info_to_firestore_use_case.dart'
    as _i38;
import 'package:wesal/src/domain/usecase/signout_use_case.dart' as _i249;
import 'package:wesal/src/domain/usecase/update_user_value_by_key_use_case.dart'
    as _i577;
import 'package:wesal/src/domain/usecase/upload_images_use_case.dart' as _i616;
import 'package:wesal/src/presentation/home/bloc/home_bloc.dart' as _i465;
import 'package:wesal/src/presentation/login/bloc/login_bloc.dart' as _i335;
import 'package:wesal/src/presentation/profile/bloc/profile_bloc.dart' as _i433;
import 'package:wesal/src/presentation/profile_details/bloc/profile_details_bloc.dart'
    as _i309;
import 'package:wesal/src/presentation/settings/bloc/settings_bloc.dart'
    as _i304;
import 'package:wesal/src/presentation/singup/bloc/register_bloc.dart' as _i518;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final appModule = _$AppModule();
    gh.lazySingleton<_i59.FirebaseAuth>(() => appModule.firebaseAuth());
    gh.lazySingleton<_i116.GoogleSignIn>(() => appModule.googleSignIn());
    gh.lazySingleton<_i974.FirebaseFirestore>(
      () => appModule.firebaseFirestore(),
    );
    gh.lazySingleton<_i457.FirebaseStorage>(() => appModule.firebaseStorage());
    await gh.lazySingletonAsync<_i695.WesalPreferences>(
      () => appModule.preferences(),
      preResolve: true,
    );
    gh.factory<_i540.LikeRepository>(
      () => appModule.likeRepository(
        gh<_i974.FirebaseFirestore>(),
        gh<_i695.WesalPreferences>(),
      ),
    );
    gh.factory<_i365.ImagesRepository>(
      () => appModule.imagesRepository(
        gh<_i457.FirebaseStorage>(),
        gh<_i695.WesalPreferences>(),
      ),
    );
    gh.factory<_i708.UserInfoRepository>(
      () => appModule.userInfoRepository(
        gh<_i974.FirebaseFirestore>(),
        gh<_i695.WesalPreferences>(),
      ),
    );
    gh.factory<_i675.AuthHandler>(
      () => appModule.authHandler(
        gh<_i974.FirebaseFirestore>(),
        gh<_i695.WesalPreferences>(),
      ),
    );
    gh.factory<_i967.DeleteImagesUseCase>(
      () => appModule.deletedImagesUseCase(gh<_i365.ImagesRepository>()),
    );
    gh.factory<_i788.AuthRepository>(
      () => appModule.authRepository(
        gh<_i59.FirebaseAuth>(),
        gh<_i116.GoogleSignIn>(),
        gh<_i695.WesalPreferences>(),
      ),
    );
    gh.factory<_i38.SaveUserInfoToFirestoreUseCase>(
      () => appModule.saveUserInfoToFirestoreUseCase(
        gh<_i708.UserInfoRepository>(),
      ),
    );
    gh.factory<_i576.GetUsersFromFirestoreUseCase>(
      () => appModule.getUsersFromFirestoreUseCase(
        gh<_i708.UserInfoRepository>(),
      ),
    );
    gh.factory<_i636.GetUserDetailsByIdUseCase>(
      () => appModule.getUserDetailsById(gh<_i708.UserInfoRepository>()),
    );
    gh.factory<_i1061.GoogleSigninUseCase>(
      () => appModule.googleSigninUseCase(gh<_i788.AuthRepository>()),
    );
    gh.factory<_i249.SignoutUseCase>(
      () => appModule.signoutUseCase(gh<_i788.AuthRepository>()),
    );
    gh.factory<_i711.LikeUserUseCase>(
      () => appModule.likeUserUseCase(gh<_i540.LikeRepository>()),
    );
    gh.factory<_i334.IsUserLikedUseCase>(
      () => appModule.isUserLikedUseCase(gh<_i540.LikeRepository>()),
    );
    gh.factory<_i500.CheckUserExistanceUseCase>(
      () => appModule.checkUserExistanceUseCase(gh<_i708.UserInfoRepository>()),
    );
    gh.factory<_i312.GetCurrentUserDetailsUseCase>(
      () => appModule.getCurrentUserDetailsUseCase(
        gh<_i708.UserInfoRepository>(),
      ),
    );
    gh.factory<_i577.UpdateUserValueByKeyUseCase>(
      () =>
          appModule.updateUserValueByKeyUseCase(gh<_i708.UserInfoRepository>()),
    );
    gh.factory<_i276.GetCurrentUserInfoUseCase>(
      () => appModule.getCurrentUserInfoUseCase(gh<_i708.UserInfoRepository>()),
    );
    gh.factory<_i335.LoginBloc>(
      () => appModule.loginBloc(
        gh<_i1061.GoogleSigninUseCase>(),
        gh<_i500.CheckUserExistanceUseCase>(),
      ),
    );
    gh.factory<_i465.HomeBloc>(
      () => appModule.homeBloc(
        gh<_i576.GetUsersFromFirestoreUseCase>(),
        gh<_i249.SignoutUseCase>(),
      ),
    );
    gh.factory<_i616.UploadImagesUseCase>(
      () => appModule.uploadImagesUseCase(gh<_i365.ImagesRepository>()),
    );
    gh.factory<_i304.SettingsBloc>(
      () => appModule.settingsBloc(
        gh<_i276.GetCurrentUserInfoUseCase>(),
        gh<_i249.SignoutUseCase>(),
      ),
    );
    gh.factory<_i309.ProfileDetailsBloc>(
      () => appModule.profileDetailsBloc(
        gh<_i636.GetUserDetailsByIdUseCase>(),
        gh<_i334.IsUserLikedUseCase>(),
        gh<_i711.LikeUserUseCase>(),
      ),
    );
    gh.factory<_i433.ProfileBloc>(
      () => appModule.profileBloc(
        gh<_i616.UploadImagesUseCase>(),
        gh<_i577.UpdateUserValueByKeyUseCase>(),
        gh<_i967.DeleteImagesUseCase>(),
        gh<_i312.GetCurrentUserDetailsUseCase>(),
      ),
    );
    gh.factory<_i518.RegisterBloc>(
      () => appModule.registerBloc(
        gh<_i38.SaveUserInfoToFirestoreUseCase>(),
        gh<_i616.UploadImagesUseCase>(),
      ),
    );
    return this;
  }
}

class _$AppModule extends _i280.AppModule {}
