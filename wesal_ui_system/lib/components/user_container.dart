import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wesal_ui_system/wesal_ui_system.dart';

class UsersContainer extends StatelessWidget {
  const UsersContainer({
    super.key,
    this.userImage,
    this.userAge,
    this.userName,
    this.isPremium,
    this.userAvatar,
  });
  final String? userImage;
  final String? userAge;
  final String? userName;
  final String? userAvatar;
  final bool? isPremium;

  @override
  Widget build(BuildContext context) {
    final theme = WesalTheme.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: WesalUserAvatar(
                userAvatar: userAvatar!,
                userImage: userImage ?? "",
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0, 0.6, 1],
                  colors: [
                    Color(0x00000000), // Transparent
                    Color(0x26000000), // Black with ~15% opacity
                    Color(0x66000000), // Black with ~40% opacity
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: WesalText(
                "${userName?.split(" ").first}, $userAge",
                textAlign: TextAlign.start,
                style: WesalTextStyles.bold16,
                textColor: theme.colors.whiteColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
