import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fpdart/fpdart.dart';
import 'package:preferences/preferences.dart';
import 'package:wesal/core/constants/app_constants.dart';
import 'package:wesal/src/data/user_info_model.dart';

class LikeRepository {
  final FirebaseFirestore _firestore;
  final WesalPreferences _preferences;

  LikeRepository({
    required FirebaseFirestore firestore,
    required WesalPreferences preferences,
  }) : _firestore = firestore,
       _preferences = preferences;

  TaskEither<Exception, void> submitLike(String likedUserId) {
    return TaskEither.tryCatch(() async {
      print("Liked user ID: $likedUserId");
      final userId = _preferences.getValue(AppConstants.uid, "");

      final ref = _firestore
          .collection(AppConstants.users)
          .doc(likedUserId)
          .collection(AppConstants.likes)
          .doc(userId);
      final doc = await ref.get();

      if (doc.exists) {
        await ref.delete();
      } else {
        await ref.set({'likedAt': FieldValue.serverTimestamp()});
      }

      return;
    }, (error, stackTrace) => Exception(error.toString()));
  }

  TaskEither<Exception, Stream<bool>> isLiked(String targetUserId) {
    return TaskEither.tryCatch(() async {
      final userId = _preferences.getValue(AppConstants.uid, "");

      final docStream = _firestore
          .collection('users')
          .doc(targetUserId)
          .collection('likes')
          .doc(userId)
          .snapshots()
          .map((doc) => doc.exists);

      return docStream;
    }, (error, stackTrace) => Exception(error.toString()));
  }

  TaskEither<Exception, Stream<Map<bool, UserInfoModel>>> getIncomingLikes() {
    return TaskEither.tryCatch(() async {
      final myUserId = _preferences.getValue(AppConstants.uid, "");
      final likesStream = _firestore
          .collection(AppConstants.users)
          .doc(myUserId)
          .collection(AppConstants.likes)
          .snapshots()
          .asyncMap((query) async {
            final likerIds = query.docs.map((d) => d.id).toList();
            if (likerIds.isEmpty) return <bool, UserInfoModel>{};

            final futures = likerIds.map((id) async {
              // Get the user info
              final userDoc = await _firestore
                  .collection(AppConstants.users)
                  .doc(id)
                  .get();
              final userInfo = UserInfoModel.fromJson(userDoc.data() ?? {});

              // Check if I like this user back
              final likeDoc = await _firestore
                  .collection(AppConstants.users)
                  .doc(id)
                  .collection(AppConstants.likes)
                  .doc(myUserId)
                  .get();
              final iLikeThisUser = likeDoc.exists;

              return MapEntry(iLikeThisUser, userInfo);
            });

            final results = await Future.wait(futures);
            return Map<bool, UserInfoModel>.fromEntries(results);
          });
      return likesStream;
    }, (error, stackTrace) => Exception(error.toString()));
  }
}
