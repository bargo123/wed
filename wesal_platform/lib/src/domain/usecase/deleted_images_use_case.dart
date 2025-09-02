import 'package:fpdart/fpdart.dart';
import 'package:wesal/src/domain/repository/images_repository.dart';

class DeleteImagesUseCase {
  final ImagesRepository _imagesRepository;
  DeleteImagesUseCase({required ImagesRepository imagesRepository})
    : _imagesRepository = imagesRepository;

  TaskEither<Exception, void> call(String image) {
    return _imagesRepository.deleteImage(image);
  }
}
