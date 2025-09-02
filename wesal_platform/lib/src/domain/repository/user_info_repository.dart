import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fpdart/fpdart.dart';
import 'package:preferences/preferences.dart';
import 'package:wesal/core/constants/app_constants.dart';
import 'package:wesal/src/data/user_details_info_model.dart';
import 'package:wesal/src/data/user_info_model.dart';

class UserInfoRepository {
  final FirebaseFirestore _firestore;
  final WesalPreferences _preferences;

  UserInfoRepository({
    required FirebaseFirestore firestore,
    required WesalPreferences preferences,
  }) : _firestore = firestore,
       _preferences = preferences;

  TaskEither<Exception, Unit> saveUserInfoToFirestore(
    UserDetailsInfoModel userInfo,
  ) {
    return TaskEither.tryCatch(() async {
      final userId = _preferences.getValue(AppConstants.uid, "");

      await _firestore
          .collection(AppConstants.users)
          .doc(userId)
          .set(
            UserInfoModel(
              age: userInfo.dateOfBirth ?? "",
              mainImage: userInfo.mainImage ?? "",
              name: userInfo.name ?? "",
              avatar: userInfo.avatar ?? "",
              id: userId,
            ).toJson(),
          );
      await _firestore
          .collection(AppConstants.userDetails)
          .doc(userId)
          .set(userInfo.toJson());
      return unit;
    }, (error, stackTrace) => Exception(error.toString()));
  }

  TaskEither<Exception, Stream<List<UserInfoModel>>>
  getUsersInfoFromFirestore() {
    return TaskEither.tryCatch(() async {
      final userId = _preferences.getValue(AppConstants.uid, "");
      final Stream<List<UserInfoModel>> stream = _firestore
          .collection(AppConstants.users)
          .snapshots()
          .map((snapshot) {
            return snapshot.docs
                .where((doc) => doc.id != userId)
                .map((doc) => UserInfoModel.fromJson(doc.data()))
                .toList();
          });
      return stream;
    }, (error, stackTrace) => Exception(error.toString()));
  }

  TaskEither<Exception, Stream<UserDetailsInfoModel>>
  getMyDetailsFromFirestore() {
    return TaskEither.tryCatch(() async {
      final userId = _preferences.getValue(AppConstants.uid, "");

      if (userId.isEmpty) {
        throw Exception("User ID not found");
      }

      final stream = _firestore
          .collection(AppConstants.userDetails)
          .doc(userId)
          .snapshots()
          .map((snapshot) {
            if (!snapshot.exists) {
              throw Exception("User document not found");
            }
            print("snpashot ${snapshot.data()}");
            return UserDetailsInfoModel.fromJson(snapshot.data() ?? {});
          });

      return stream;
    }, (error, stackTrace) => Exception(error.toString()));
  }

  TaskEither<Exception, bool> checkIfUserExists() {
    return TaskEither.tryCatch(() async {
      final userId = _preferences.getValue(AppConstants.uid, "");
      final userInfo = await _firestore
          .collection(AppConstants.users)
          .doc(userId)
          .get();
      return userInfo.exists;
    }, (error, stackTrace) => Exception(error.toString()));
  }

  TaskEither<Exception, void> updateUserInfoByKey<T>(String key, T? value) {
    return TaskEither.tryCatch(() async {
      final userId = _preferences.getValue(AppConstants.uid, "");
      if (key == "mainImage" || key == "name" || key == "dateOfBirth") {
        _firestore.collection(AppConstants.users).doc(userId).update({
          key: value,
        });
      }
      await _firestore.collection(AppConstants.userDetails).doc(userId).update({
        key: value,
      });
    }, (error, stackTrace) => Exception(error.toString()));
  }

  TaskEither<Exception, Stream<UserInfoModel>> getMyInfoFromFirestore() {
    return TaskEither.tryCatch(() async {
      final userId = _preferences.getValue(AppConstants.uid, "");

      if (userId.isEmpty) {
        throw Exception("User ID not found");
      }

      final stream = _firestore
          .collection(AppConstants.users)
          .doc(userId)
          .snapshots()
          .map((snapshot) {
            if (!snapshot.exists) {
              throw Exception("User document not found");
            }
            return UserInfoModel.fromJson(snapshot.data() ?? {});
          });

      return stream;
    }, (error, stackTrace) => Exception(error.toString()));
  }

  TaskEither<Exception, UserDetailsInfoModel> getMyDetailsById(String id) {
    return TaskEither.tryCatch(() async {
      if (id.isEmpty) {
        throw Exception("User ID not found");
      }

      final userData = await _firestore
          .collection(AppConstants.userDetails)
          .doc(id)
          .get();

      return UserDetailsInfoModel.fromJson(userData.data() ?? {});
    }, (error, stackTrace) => Exception(error.toString()));
  }
}
