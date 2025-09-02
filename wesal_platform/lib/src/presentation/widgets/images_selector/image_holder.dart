import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wesal/src/presentation/widgets/images_selector/image_selector_bottom_sheet.dart';

import 'package:wesal_ui_system/wesal_ui_system.dart';

class ImageHolder extends StatefulWidget {
  const ImageHolder({
    super.key,
    required this.addImageCallBack,
    required this.deleteImageCallBack,
    this.isDisabled = false,
    this.isFromNetwork = false,
    this.urlImage,
    required this.onMainImageSelected,
  });

  final Function(dynamic mainImage) onMainImageSelected;
  final Function(File image) addImageCallBack;
  final Function(dynamic image) deleteImageCallBack;
  final bool isDisabled;
  final bool isFromNetwork;
  final String? urlImage;

  @override
  State<ImageHolder> createState() => _ImageHolderState();
}

class _ImageHolderState extends State<ImageHolder> {
  File? image;

  Future<File> pickImage(ImageSource source) async {
    final pickedImage = await ImagePicker().pickImage(
      source: source,
      maxHeight: 500,
      maxWidth: 1000,
      imageQuality: 100,
    );

    CroppedFile? croppedFile = await ImageCropper().cropImage(
      aspectRatio: CropAspectRatio(ratioX: 3, ratioY: 2),
      sourcePath: pickedImage?.path ?? "",
    );

    return File(croppedFile?.path ?? "");
  }

  @override
  Widget build(BuildContext context) {
    final theme = WesalTheme.of(context);
    return InkWell(
      onTap: () {
        if (widget.isDisabled == false) {
          addImageBottomSheet(
            context,
            image?.path.isNotEmpty ?? false || widget.urlImage != null,
            deleteCallBack: () {
              widget.deleteImageCallBack(
                widget.isFromNetwork ? widget.urlImage : image!,
              );
              if (!widget.isFromNetwork) {
                setState(() {
                  image = null;
                });
              }
              Navigator.pop(context);
            },
            cameraCallBack: () async {
              final pickedImage = await pickImage(ImageSource.camera);
              if (pickedImage.path.isEmpty) {
                return;
              }
              if (!widget.isFromNetwork) {
                setState(() {
                  image = pickedImage;
                });
              }
              widget.addImageCallBack(pickedImage);
            },
            galleryCallBack: () async {
              final pickedImage = await pickImage(ImageSource.gallery);
              if (pickedImage.path.isEmpty) {
                return;
              }
              if (!widget.isFromNetwork) {
                setState(() {
                  image = pickedImage;
                });
              }
              widget.addImageCallBack(pickedImage);
            },
            onSelectMainImage: () {
              widget.onMainImageSelected(
                widget.isFromNetwork ? widget.urlImage : image!,
              );
            },
          );
        }
      },
      child: Container(
        width: 105,
        height: 105,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),

          boxShadow: [
            BoxShadow(
              color: theme.colors.gray3,
              blurRadius: 3,
              blurStyle: BlurStyle.outer,
            ),
          ],
        ),
        child: image != null || widget.urlImage != null
            ? widget.isFromNetwork
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        widget.urlImage!,
                        width: 105,
                        height: 105,
                        fit: BoxFit.cover,
                      ),
                    )
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.file(
                        image!,
                        width: 105,
                        height: 105,
                        fit: BoxFit.cover,
                      ),
                    )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.upload, size: 30, color: theme.colors.gray3),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: theme.colors.appPrimaryColor,
                      ),
                      width: double.infinity,
                      height: 30,
                      child: Center(
                        child: WesalText(
                          "Add image",
                          textColor: theme.colors.whiteColor,
                          style: WesalTextStyles.smallText12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
