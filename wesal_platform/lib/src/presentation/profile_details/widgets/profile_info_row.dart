import 'package:flutter/material.dart';
import 'package:wesal/gen/assets.gen.dart';
import 'package:wesal_ui_system/theme/wesal_theme.dart';
import 'package:wesal_ui_system/typography/text_style.dart';
import 'package:wesal_ui_system/typography/wesal_text.dart';

class ProfileInfoRow extends StatelessWidget {
  const ProfileInfoRow({
    super.key,
    required this.occupation,
    required this.education,
  });

  final String occupation;
  final String education;

  @override
  Widget build(BuildContext context) {
    final theme = WesalTheme.of(context);

    return Expanded(
      child: Row(
        children: [
          Column(
            children: [
              Assets.images.workIc.svg(),
              const SizedBox(height: 8),
              Assets.images.school.svg(),
            ],
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WesalText(
                  occupation,
                  style: WesalTextStyles.secondary14,
                  textColor: theme.colors.blackColor,
                ),
                const SizedBox(height: 8),
                WesalText(
                  education,
                  style: WesalTextStyles.secondary14,
                  textColor: theme.colors.blackColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
