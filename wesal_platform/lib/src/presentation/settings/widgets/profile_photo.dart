import 'package:flutter/material.dart';
import 'package:wesal/core/utils/avatar_selector.dart';
import 'package:wesal_ui_system/wesal_ui_system.dart';

class ProfilePhoto extends StatelessWidget {
  final String imageUrl;
  final String avatar;
  final double radius;

  const ProfilePhoto({
    super.key,
    required this.imageUrl,
    this.radius = 30,
    required this.avatar,
  });

  @override
  Widget build(BuildContext context) {
    print("ProfilePhoto imageUrl: $imageUrl, avatar: $avatar");
    return CircleAvatar(
      radius: radius,

      backgroundColor: Colors.grey[200],
      backgroundImage: WesalUserAvatarProvider(
        userAvatar: AvatarSelector.getAvatarByName(avatar),
        userImage: imageUrl,
      ).getImageProvider(),
    );
  }
}
