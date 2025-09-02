import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wesal/l10n/gen/wesal_localization.gen.dart';
import 'package:wesal/src/presentation/model/about_me_item_model.dart';
import 'package:wesal/src/presentation/profile/widgets/about_me_item.dart';
import 'package:wesal_ui_system/typography/wesal_text.dart';
import 'package:wesal_ui_system/wesal_ui_system.dart';

class AboutMeSection extends StatefulWidget {
  final List<AboutMeItem> items;
  final int initialVisibleItems;
  final TextStyle? titleStyle;
  final TextStyle? itemTextStyle;
  final TextStyle? addTextStyle;
  final Color? iconColor;
  final EdgeInsetsGeometry? padding;

  const AboutMeSection({
    Key? key,
    required this.items,
    this.initialVisibleItems = 5,

    this.titleStyle,
    this.itemTextStyle,
    this.addTextStyle,
    this.iconColor,
    this.padding,
  }) : super(key: key);

  @override
  State<AboutMeSection> createState() => _AboutMeSectionState();
}

class _AboutMeSectionState extends State<AboutMeSection> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final l10n = WesalLocalization.of(context);
    final visibleItems = _isExpanded
        ? widget.items
        : widget.items.take(widget.initialVisibleItems).toList();

    return Container(
      padding: widget.padding ?? const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WesalText(l10n.about_me, style: WesalTextStyles.header20Bold),
          const SizedBox(height: 20),
          ...visibleItems.map(
            (item) => AboutMeItemWidget(
              item: item,
              itemTextStyle: widget.itemTextStyle,
              addTextStyle: widget.addTextStyle,
              iconColor: widget.iconColor,
            ),
          ),
          if (widget.items.length > widget.initialVisibleItems)
            GestureDetector(
              onTap: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              child: Container(
                padding: const EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      _isExpanded ? l10n.show_less : l10n.show_more,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Icon(
                      _isExpanded
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                      color: Colors.grey[600],
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
