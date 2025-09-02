import 'package:flutter/material.dart';
import 'package:wesal/l10n/gen/wesal_localization.gen.dart';
import 'package:wesal/src/presentation/model/about_me_item_model.dart';
import 'package:wesal_ui_system/wesal_ui_system.dart';

class AboutMeItemWidget extends StatelessWidget {
  final AboutMeItem item;
  final TextStyle? itemTextStyle;
  final TextStyle? addTextStyle;
  final Color? iconColor;

  const AboutMeItemWidget({
    super.key,
    required this.item,
    this.itemTextStyle,
    this.addTextStyle,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = WesalLocalization.of(context);
    final theme = WesalTheme.of(context);
    return GestureDetector(
      onTap: item.onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            Expanded(
              child: WesalText(
                item.title,
                style: WesalTextStyles.secondary14,
                textColor: theme.colors.blackColor,
              ),
            ),
            if (item.value != null)
              Text(
                item.value!,
                style:
                    addTextStyle ??
                    TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w400,
                    ),
              )
            else
              WesalText(
                l10n.add,
                style: WesalTextStyles.smallText12,
                textColor: theme.colors.gray3,
              ),
            const SizedBox(width: 8),
            Icon(Icons.chevron_right, color: Colors.grey[500], size: 20),
          ],
        ),
      ),
    );
  }
}
