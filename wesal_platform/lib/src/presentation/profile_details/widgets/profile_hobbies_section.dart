import 'package:flutter/material.dart';
import 'package:wesal/l10n/gen/wesal_localization.gen.dart';
import 'package:wesal/src/data/user_details_info_model.dart';
import 'package:wesal/src/presentation/widgets/wesal_hobbies_builder/wesal_hobbies_builder.dart';
import 'package:wesal_ui_system/theme/wesal_theme.dart';
import 'package:wesal_ui_system/typography/text_style.dart';
import 'package:wesal_ui_system/typography/wesal_text.dart';

class ProfileHobbiesSection extends StatelessWidget {
  const ProfileHobbiesSection({super.key, required this.user});
  final UserDetailsInfoModel? user; // Replace with your User model type

  @override
  Widget build(BuildContext context) {
    final l10n = WesalLocalization.of(context);
    final theme = WesalTheme.of(context);

    if (!(user?.hobbies.isNotEmpty ?? false)) {
      return const SizedBox.shrink();
    }

    return Column(
      children: [
        WesalText(
          l10n.hobbies_and_interests,
          style: WesalTextStyles.bold16,
          textColor: theme.colors.blackColor,
          textAlign: TextAlign.start,
        ),
        HobbiesInterestsBuilder(
          isExpandable: false,
          alignment: CrossAxisAlignment.center,
          borderColor: theme.colors.styleRed,
          selectedColor: theme.colors.styleRed,
          hobbiesList: user?.hobbies ?? [],
          selectedHobbies: user?.hobbies ?? [],
          language: "en",
        ),
      ],
    );
  }
}
