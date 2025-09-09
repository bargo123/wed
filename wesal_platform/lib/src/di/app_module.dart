import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:preferences/preferences.dart';
import 'package:wesal/auth_handler.dart';
import 'package:wesal/src/domain/repository/auth_repository.dart';
import 'package:wesal/src/domain/repository/images_repository.dart';
import 'package:wesal/src/domain/repository/like_repository.dart';
import 'package:wesal/src/domain/repository/user_info_repository.dart';
import 'package:wesal/src/domain/usecase/check_user_existance_use_case.dart';
import 'package:wesal/src/domain/usecase/deleted_images_use_case.dart';
import 'package:wesal/src/domain/usecase/get_current_user_details_use_case.dart';
import 'package:wesal/src/domain/usecase/get_current_user_info_use_case.dart';
import 'package:wesal/src/domain/usecase/get_user_details_by_id_use_case.dart';
import 'package:wesal/src/domain/usecase/get_users_from_firestore_use_case.dart';
import 'package:wesal/src/domain/usecase/google_signin_use_case.dart';
import 'package:wesal/src/domain/usecase/is_user_liked_use_case.dart';
import 'package:wesal/src/domain/usecase/like_user_use_case.dart';
import 'package:wesal/src/domain/usecase/save_user_info_to_firestore_use_case.dart';
import 'package:wesal/src/domain/usecase/signout_use_case.dart';
import 'package:wesal/src/domain/usecase/update_user_value_by_key_use_case.dart';
import 'package:wesal/src/domain/usecase/upload_images_use_case.dart';
import 'package:wesal/src/presentation/home/bloc/home_bloc.dart';
import 'package:wesal/src/presentation/login/bloc/login_bloc.dart';
import 'package:wesal/src/presentation/likes/bloc/likes_bloc.dart';
import 'package:wesal/src/domain/usecase/get_incoming_likes_use_case.dart';
import 'package:wesal/src/presentation/profile/bloc/profile_bloc.dart';
import 'package:wesal/src/presentation/profile_details/bloc/profile_details_bloc.dart';
import 'package:wesal/src/presentation/settings/bloc/settings_bloc.dart';
import 'package:wesal/src/presentation/singup/bloc/register_bloc.dart';

@module
abstract class AppModule {
  @lazySingleton
  FirebaseAuth firebaseAuth() => FirebaseAuth.instance;

  @lazySingleton
  GoogleSignIn googleSignIn() => GoogleSignIn.instance;

  @lazySingleton
  FirebaseFirestore firebaseFirestore() => FirebaseFirestore.instance;

  @lazySingleton
  FirebaseStorage firebaseStorage() => FirebaseStorage.instance;

  @lazySingleton
  @preResolve
  Future<WesalPreferences> preferences() => Preferences.create();

  @injectable
  AuthRepository authRepository(
    FirebaseAuth firebaseAuth,
    GoogleSignIn googleSignIn,
    WesalPreferences preferences,
  ) => AuthRepository(
    firebaseAuth: firebaseAuth,
    googleSignIn: googleSignIn,
    preferences: preferences,
  );

  @injectable
  GoogleSigninUseCase googleSigninUseCase(AuthRepository authRepository) =>
      GoogleSigninUseCase(authRepository: authRepository);

  @injectable
  LoginBloc loginBloc(
    GoogleSigninUseCase googleSigninUsecase,
    CheckUserExistanceUseCase checkUserExistanceUseCase,
  ) => LoginBloc(
    googleSigninUseCase: googleSigninUsecase,
    checkUserExistanceUseCase: checkUserExistanceUseCase,
  );

  @injectable
  RegisterBloc registerBloc(
    SaveUserInfoToFirestoreUseCase saveUserInfoUseCase,
    UploadImagesUseCase uploadImagesUseCase,
  ) => RegisterBloc(
    saveUserInfoToFirestoreUseCase: saveUserInfoUseCase,
    uploadImagesUseCase: uploadImagesUseCase,
  );

  @injectable
  ImagesRepository imagesRepository(
    FirebaseStorage firebaseStorage,
    WesalPreferences preferences,
  ) => ImagesRepository(storage: firebaseStorage, preferences: preferences);

  @injectable
  UploadImagesUseCase uploadImagesUseCase(ImagesRepository repository) =>
      UploadImagesUseCase(imagesRepository: repository);

  @injectable
  UserInfoRepository userInfoRepository(
    FirebaseFirestore firebaseFirestore,
    WesalPreferences preferences,
  ) => UserInfoRepository(
    firestore: firebaseFirestore,
    preferences: preferences,
  );

  @injectable
  SaveUserInfoToFirestoreUseCase saveUserInfoToFirestoreUseCase(
    UserInfoRepository repository,
  ) => SaveUserInfoToFirestoreUseCase(userInfoRepository: repository);

  @injectable
  AuthHandler authHandler(
    FirebaseFirestore firebaseFirestore,
    WesalPreferences preferences,
  ) => AuthHandler(firestore: firebaseFirestore, preferences: preferences);

  @injectable
  HomeBloc homeBloc(
    GetUsersFromFirestoreUseCase getUsersFromFirestoreUseCase,
    SignoutUseCase signoutUseCase,
  ) => HomeBloc(
    getUsersFromFirestoreUseCase: getUsersFromFirestoreUseCase,
    signoutUseCase: signoutUseCase,
  );

  @injectable
  GetUsersFromFirestoreUseCase getUsersFromFirestoreUseCase(
    UserInfoRepository repository,
  ) => GetUsersFromFirestoreUseCase(userInfoRepository: repository);

  @injectable
  SignoutUseCase signoutUseCase(AuthRepository authRepository) =>
      SignoutUseCase(authRepository: authRepository);

  @injectable
  CheckUserExistanceUseCase checkUserExistanceUseCase(
    UserInfoRepository userInfoRepository,
  ) => CheckUserExistanceUseCase(userInfoRepository: userInfoRepository);

  @injectable
  GetCurrentUserDetailsUseCase getCurrentUserDetailsUseCase(
    UserInfoRepository userInfoRepository,
  ) => GetCurrentUserDetailsUseCase(userInfoRepository: userInfoRepository);

  @injectable
  SettingsBloc settingsBloc(
    GetCurrentUserInfoUseCase getCurrentUserInfoUseCase,
    SignoutUseCase signoutUseCase,
  ) => SettingsBloc(
    getCurrentUserInfoUseCase: getCurrentUserInfoUseCase,
    signoutUseCase: signoutUseCase,
  );
  @injectable
  DeleteImagesUseCase deletedImagesUseCase(ImagesRepository imagesRepository) =>
      DeleteImagesUseCase(imagesRepository: imagesRepository);

  @injectable
  UpdateUserValueByKeyUseCase updateUserValueByKeyUseCase(
    UserInfoRepository userInfoRepository,
  ) => UpdateUserValueByKeyUseCase(userRepository: userInfoRepository);

  @injectable
  ProfileBloc profileBloc(
    UploadImagesUseCase uploadImagesUseCase,
    UpdateUserValueByKeyUseCase updateUserValueByKeyUseCase,
    DeleteImagesUseCase deletedImagesUseCase,
    GetCurrentUserDetailsUseCase getCurrentUserDetailsUseCase,
  ) => ProfileBloc(
    uploadImagesUseCase: uploadImagesUseCase,
    updateUserValueByKeyUseCase: updateUserValueByKeyUseCase,
    deleteImagesUseCase: deletedImagesUseCase,
    getCurrentUserDetailsUseCase: getCurrentUserDetailsUseCase,
  );

  @injectable
  GetCurrentUserInfoUseCase getCurrentUserInfoUseCase(
    UserInfoRepository userInfoRepository,
  ) => GetCurrentUserInfoUseCase(userInfoRepository: userInfoRepository);

  @injectable
  GetUserDetailsByIdUseCase getUserDetailsById(UserInfoRepository repository) =>
      GetUserDetailsByIdUseCase(repository: repository);

  @injectable
  ProfileDetailsBloc profileDetailsBloc(
    GetUserDetailsByIdUseCase getUserDetailsByIdUseCase,
    IsUserLikedUseCase isUserLikedUseCase,
    LikeUserUseCase likeUserUseCase,
  ) => ProfileDetailsBloc(
    getUserDetailsByIdUseCase: getUserDetailsByIdUseCase,
    isUserLikedUseCase: isUserLikedUseCase,
    likeUserUseCase: likeUserUseCase,
  );

  @injectable
  LikeRepository likeRepository(
    FirebaseFirestore firestore,
    WesalPreferences preferences,
  ) => LikeRepository(firestore: firestore, preferences: preferences);

  @injectable
  LikeUserUseCase likeUserUseCase(LikeRepository likeRepository) =>
      LikeUserUseCase(likeRepository: likeRepository);

  @injectable
  IsUserLikedUseCase isUserLikedUseCase(LikeRepository likeRepository) =>
      IsUserLikedUseCase(likeRepository: likeRepository);

  @injectable
  GetIncomingLikesUseCase getIncomingLikesUseCase(
    LikeRepository likeRepository,
  ) => GetIncomingLikesUseCase(likeRepository: likeRepository);

  @injectable
  LikesBloc likesBloc(
    GetIncomingLikesUseCase getIncomingLikesUseCase,
    LikeUserUseCase likeUserUseCase,
  ) => LikesBloc(
    getIncomingLikesUseCase: getIncomingLikesUseCase,
    likeUserUseCase: likeUserUseCase,
  );
}
