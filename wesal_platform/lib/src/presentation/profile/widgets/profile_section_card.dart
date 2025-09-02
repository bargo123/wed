import 'package:flutter/material.dart';
import 'package:wesal_ui_system/wesal_ui_system.dart';

class ProfileSectionCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final double? borderRadius;

  const ProfileSectionCard({
    super.key,
    required this.title,
    required this.subtitle,
    this.onTap,
    this.margin,
    this.padding,
    this.backgroundColor,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    final theme = WesalTheme.of(context);
    return Container(
      margin: margin ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Material(
        color: backgroundColor ?? theme.colors.gray5,
        borderRadius: BorderRadius.circular(borderRadius ?? 12),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(borderRadius ?? 12),
          child: Padding(
            padding: padding ?? const EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      WesalText(
                        title,
                        style: WesalTextStyles.bold16,
                        textColor: theme.colors.blackColor,
                      ),
                      const SizedBox(height: 4),
                      WesalText(
                        subtitle,
                        style: WesalTextStyles.secondary14,
                        textColor: theme.colors.gray2,
                      ),
                    ],
                  ),
                ),
                Icon(Icons.chevron_right, color: theme.colors.gray3, size: 28),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
