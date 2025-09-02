import 'package:flutter/material.dart';
import 'package:wesal/core/utils/avatar_selector.dart';
import 'package:wesal_ui_system/components/wesal_user_avatar.dart';
import 'package:wesal_ui_system/theme/wesal_theme.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key, required this.user});
  final dynamic user; // Replace with your User model type

  @override
  Widget build(BuildContext context) {
    final theme = WesalTheme.of(context);

    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: theme.colors.styleRed, width: 3.0),
      ),
      child: CircleAvatar(
        radius: 70,
        backgroundColor: Colors.grey[200],
        backgroundImage: WesalUserAvatarProvider(
          userAvatar: AvatarSelector.getAvatarByName(user?.avatar ?? 'avatar1'),
          userImage: user?.mainImage ?? '',
        ).getImageProvider(),
      ),
    );
  }
}
