import 'package:flutter/material.dart';
import 'package:wesal/l10n/gen/wesal_localization.gen.dart';
import 'package:wesal/src/data/user_details_info_model.dart';
import 'package:wesal/src/presentation/widgets/about_me_capsules.dart';
import 'package:wesal_ui_system/theme/wesal_theme.dart';
import 'package:wesal_ui_system/typography/text_style.dart';
import 'package:wesal_ui_system/typography/wesal_text.dart';

class ProfileAboutMeSection extends StatelessWidget {
  const ProfileAboutMeSection({super.key, required this.user});
  final UserDetailsInfoModel? user; // Replace with your User model type

  @override
  Widget build(BuildContext context) {
    final l10n = WesalLocalization.of(context);
    final theme = WesalTheme.of(context);

    final hasAboutMe = _hasAboutMeInfo();

    if (!hasAboutMe) {
      return const SizedBox.shrink();
    }

    return Column(
      children: [
        WesalText(
          l10n.about_me,
          style: WesalTextStyles.bold16,
          textColor: theme.colors.blackColor,
          textAlign: TextAlign.start,
        ),
        Wrap(
          spacing: 6,
          children: [
            if (user?.height != null) _buildHeightInfo(),
            if (user?.weight != null) _buildWeightInfo(),
            if (user?.smoker != null) _buildSmokerInfo(l10n),
          ],
        ),
      ],
    );
  }

  bool _hasAboutMeInfo() {
    return (user?.height != null) ||
        (user?.weight != null) ||
        (user?.smoker != null);
  }

  Widget _buildHeightInfo() {
    return Column(
      children: [
        const SizedBox(height: 10),
        AboutMeCapsules(text: "📏 ${user?.height} cm"),
      ],
    );
  }

  Widget _buildWeightInfo() {
    return Column(
      children: [
        const SizedBox(height: 10),
        AboutMeCapsules(text: "⚖️ ${user?.weight} kg"),
      ],
    );
  }

  Widget _buildSmokerInfo(WesalLocalization l10n) {
    return Column(
      children: [
        const SizedBox(height: 10),
        AboutMeCapsules(
          text: user?.smoker == "yes"
              ? "🚬 ${l10n.smoker}"
              : "🚭 ${l10n.non_smoker}",
        ),
      ],
    );
  }
}
