import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:wesal/core/utils/age_calculater.dart';
import 'package:wesal/src/data/user_details_info_model.dart';
import 'package:wesal/src/presentation/profile_details/widgets/profile_avatar.dart';
import 'package:wesal/src/presentation/profile_details/widgets/profile_info_row.dart';
import 'package:wesal_ui_system/theme/wesal_theme.dart';
import 'package:wesal_ui_system/theme/wesal_theme_data.dart';
import 'package:wesal_ui_system/typography/text_style.dart';
import 'package:wesal_ui_system/typography/wesal_text.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key, required this.user, required this.isLiked});
  final UserDetailsInfoModel? user; // Replace with your User model type
  final bool isLiked;

  @override
  Widget build(BuildContext context) {
    final theme = WesalTheme.of(context);

    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: theme.colors.red3,
        boxShadow: [
          BoxShadow(
            color: theme.colors.gray3.withValues(alpha: 0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          ProfileAvatar(user: user),
          const SizedBox(height: 16),
          _buildNameAndAge(theme),
          const SizedBox(height: 8),
          _buildInfoRow(theme),
        ],
      ),
    );
  }

  Widget _buildNameAndAge(WesalThemeData theme) {
    return WesalText(
      '${user?.name ?? ''}, ${AgeCalculater.calculateAge(user?.dateOfBirth ?? "")}',
      style: WesalTextStyles.header20Bold,
      textColor: theme.colors.blackColor,
    );
  }

  Widget _buildInfoRow(WesalThemeData theme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ProfileInfoRow(
          occupation: user?.accubation ?? "",
          education: user?.education ?? "",
        ),
        _buildLikeButton(theme),
      ],
    );
  }

  Widget _buildLikeButton(WesalThemeData theme) {
    return LikeButton(
      size: 60,
      isLiked: isLiked,
      likeBuilder: (isLiked) => Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: theme.colors.styleRed,
        ),
        child: Icon(
          Icons.favorite,
          color: isLiked ? theme.colors.datingModePrimary : theme.colors.red3,
          size: 40,
        ),
      ),
    );
  }
}
