import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fpdart/fpdart.dart';
import 'package:preferences/preferences.dart';
import 'package:wesal/core/constants/app_constants.dart';

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
      }
      {
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
}
