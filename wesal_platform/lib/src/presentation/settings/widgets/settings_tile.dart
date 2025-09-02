import 'package:flutter/material.dart';
import 'package:wesal_ui_system/wesal_ui_system.dart';

class SettingsTile extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final Widget? trailing;

  const SettingsTile({
    super.key,
    required this.title,
    this.onTap,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    final theme = WesalTheme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        color: theme.colors.whiteColor,
        child: InkWell(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                WesalText(
                  title,
                  style: WesalTextStyles.secondary14,
                  textColor: theme.colors.blackColor,
                ),
                if (trailing != null) trailing!,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
