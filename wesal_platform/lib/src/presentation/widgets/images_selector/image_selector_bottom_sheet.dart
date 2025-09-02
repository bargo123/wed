import 'package:flutter/material.dart';
import 'package:wesal/gen/assets.gen.dart';

import 'package:wesal_ui_system/wesal_ui_system.dart';

Future addImageBottomSheet(
  BuildContext context,
  bool? image, {
  required VoidCallback galleryCallBack,
  required VoidCallback cameraCallBack,
  required VoidCallback deleteCallBack,
  required VoidCallback onSelectMainImage,
}) {
  final theme = WesalTheme.of(context);
  return showModalBottomSheet(
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
    ),
    context: context,
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(18.0),
        child: image!
            ? Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton(
                    onPressed: () {
                      deleteCallBack();
                    },
                    child: Row(
                      children: [
                        Icon(Icons.hide_image, color: theme.colors.redColor),
                        SizedBox(width: 10),
                        WesalText(
                          "Remove",

                          textColor: theme.colors.redColor,
                          style: WesalTextStyles.secondary14,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 22),
                  TextButton(
                    onPressed: () {
                      onSelectMainImage();
                    },
                    child: Row(
                      children: [
                        Assets.images.camera.svg(
                          colorFilter: ColorFilter.mode(
                            theme.colors.appPrimaryColor,
                            BlendMode.srcIn,
                          ),
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(width: 10),
                        WesalText(
                          "Choose as main image",
                          textColor: theme.colors.blackColor,

                          style: WesalTextStyles.secondary14,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            : Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton(
                    onPressed: () {
                      galleryCallBack();
                    },
                    child: Row(
                      children: [
                        Assets.images.gallery.svg(
                          colorFilter: ColorFilter.mode(
                            theme.colors.appPrimaryColor,
                            BlendMode.srcIn,
                          ),
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(width: 10),
                        WesalText(
                          "Choose from Library",
                          textColor: theme.colors.blackColor,
                          style: WesalTextStyles.secondary14,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 22),
                  TextButton(
                    onPressed: () {
                      cameraCallBack();
                    },
                    child: Row(
                      children: [
                        Assets.images.camera.svg(
                          colorFilter: ColorFilter.mode(
                            theme.colors.appPrimaryColor,
                            BlendMode.srcIn,
                          ),
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(width: 10),
                        WesalText(
                          "Take a Photo",
                          textColor: theme.colors.blackColor,
                          style: WesalTextStyles.secondary14,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
      );
    },
  );
}
