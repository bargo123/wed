import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:fpdart/fpdart.dart';
import 'package:preferences/preferences.dart';
import 'package:uuid/uuid.dart';
import 'package:wesal/core/constants/app_constants.dart';

class ImagesRepository {
  final FirebaseStorage _storage;
  final WesalPreferences _preferences;

  ImagesRepository({
    required FirebaseStorage storage,
    required WesalPreferences preferences,
  }) : _storage = storage,
       _preferences = preferences;

  TaskEither<Exception, String> uploadImage(File image) {
    return TaskEither.tryCatch(() async {
      final uuid = Uuid();
      final userid = _preferences.getValue(AppConstants.uid, "");
      String userRef = userid + uuid.v1();
      await _storage.ref(userRef).putFile(image);
      var imageUrl = await _storage.ref(userRef).getDownloadURL();
      return imageUrl;
    }, (error, stackTrace) => Exception(error.toString()));
  }

  TaskEither<Exception, void> deleteImage(String image) {
    return TaskEither.tryCatch(() async {
      await _storage.refFromURL(image).delete();
    }, (error, stackTrace) => Exception(error.toString()));
  }
}
