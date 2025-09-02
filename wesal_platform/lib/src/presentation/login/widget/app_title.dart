import 'package:flutter/material.dart';
import 'package:wesal/l10n/gen/wesal_localization.gen.dart';

import 'package:wesal_ui_system/theme/wesal_theme.dart';
import 'package:wesal_ui_system/typography/text_style.dart';
import 'package:wesal_ui_system/typography/wesal_text.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = WesalTheme.of(context);
    final localization = WesalLocalization.of(context);

    return WesalText(
      localization.wesal_title,
      textAlign: TextAlign.center,
      textColor: theme.colors.datingModePrimary,
      style: WesalTextStyles.header30Bold,
    );
  }
}
