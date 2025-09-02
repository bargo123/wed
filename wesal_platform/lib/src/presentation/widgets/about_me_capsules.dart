import 'package:flutter/material.dart';
import 'package:wesal_ui_system/theme/wesal_theme.dart';
import 'package:wesal_ui_system/typography/wesal_text.dart';

class AboutMeCapsules extends StatelessWidget {
  const AboutMeCapsules({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = WesalTheme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: theme.colors.styleRed,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.only(top: 6, bottom: 6, right: 10, left: 10),
      child: FittedBox(fit: BoxFit.scaleDown, child: WesalText(text)),
    );
  }
}
