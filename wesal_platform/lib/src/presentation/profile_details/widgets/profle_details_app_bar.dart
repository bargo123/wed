import 'package:flutter/material.dart';
import 'package:wesal/l10n/gen/wesal_localization.gen.dart';
import 'package:wesal_ui_system/theme/wesal_theme.dart';
import 'package:wesal_ui_system/typography/text_style.dart';
import 'package:wesal_ui_system/typography/wesal_text.dart';

class ProfileDetailsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const ProfileDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = WesalLocalization.of(context);
    final theme = WesalTheme.of(context);

    return AppBar(
      title: WesalText(
        l10n.profile,
        style: WesalTextStyles.header20Bold,
        textColor: theme.colors.blackColor,
      ),
      backgroundColor: theme.colors.whiteColor,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_vert, color: theme.colors.gray1),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
