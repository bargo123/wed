import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:wesal/src/domain/repository/images_repository.dart';

class UploadImagesUseCase {
  final ImagesRepository _imagesRepository;

  UploadImagesUseCase({required ImagesRepository imagesRepository})
    : _imagesRepository = imagesRepository;

  TaskEither<Exception, String> call(File image) {
    return _imagesRepository.uploadImage(image);
  }
}
