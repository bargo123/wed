import 'package:flutter/material.dart';
import 'package:wesal_ui_system/wesal_ui_system.dart';

class SettingsSectionTitle extends StatelessWidget {
  final String title;

  const SettingsSectionTitle(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 18),
      child: WesalText(
        title,
        style: WesalTextStyles.bold16,
        textColor: WesalTheme.of(context).colors.blackColor,
      ),
    );
  }
}
