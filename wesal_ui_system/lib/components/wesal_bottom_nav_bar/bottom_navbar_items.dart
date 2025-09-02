import 'package:flutter/material.dart';
import 'package:wesal_ui_system/wesal_ui_system.dart';

class BottomNavbarItems extends StatelessWidget {
  const BottomNavbarItems({
    super.key,
    this.label,
    required this.selectedIcon,
    required this.unselectedIcon,
    this.isSelected = false,
    this.selectedColor = Colors.blue,
    this.unselectedColor = Colors.grey,
  });

  final String? label;
  final Widget selectedIcon;
  final Widget unselectedIcon;
  final bool isSelected;
  final Color selectedColor;
  final Color unselectedColor;

  @override
  Widget build(BuildContext context) {
    final theme = WesalTheme.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 15),
        isSelected ? selectedIcon : unselectedIcon,
        // SizedBox(height: 4),
        if (label != null)
          FittedBox(
            child: WesalText(
              label!,

              style: WesalTextStyles.smallText12,

              textColor: isSelected
                  ? theme.colors.whiteColor
                  : theme.colors.gray3,
            ),
          ),
      ],
    );
  }

  BottomNavbarItems copyWith({
    Key? key,
    String? label,
    Widget? selectedIcon,
    Widget? unselectedIcon,
    bool? isSelected,
    Color? selectedColor,
    Color? unselectedColor,
  }) {
    return BottomNavbarItems(
      key: key ?? this.key,
      label: label ?? this.label,
      selectedIcon: selectedIcon ?? this.selectedIcon,
      unselectedIcon: unselectedIcon ?? this.unselectedIcon,
      isSelected: isSelected ?? this.isSelected,
      selectedColor: selectedColor ?? this.selectedColor,
      unselectedColor: unselectedColor ?? this.unselectedColor,
    );
  }
}
