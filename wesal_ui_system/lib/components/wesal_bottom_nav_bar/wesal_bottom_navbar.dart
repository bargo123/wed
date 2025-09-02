import 'package:flutter/material.dart';
import 'package:wesal_ui_system/components/wesal_bottom_nav_bar/bottom_navbar.dart';
import 'package:wesal_ui_system/components/wesal_bottom_nav_bar/bottom_navbar_items.dart';
import 'package:wesal_ui_system/components/wesal_bottom_nav_bar/wesal_bottom_navbar_items.dart';
import 'package:wesal_ui_system/wesal_ui_system.dart';

class WesalBottomNavbar extends StatelessWidget {
  const WesalBottomNavbar({
    super.key,
    required this.navItems,
    this.selectedIndex = 0,
    this.onNavBarCallBack,
  });
  final List<WesalBottomNavBarItems> navItems;
  final int selectedIndex;
  final void Function(int)? onNavBarCallBack;

  @override
  Widget build(BuildContext context) {
    final theme = WesalTheme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: theme.colors.gray6,
        borderRadius: BorderRadius.circular(20),
      ),
      child: BottomNavbar(
        onNavBarCallBack: onNavBarCallBack,
        initialIndex: selectedIndex,
        navItems: navItems
            .map(
              (e) => BottomNavbarItems(
                label: e.title,
                selectedIcon: e.selectedIcon,
                unselectedIcon: e.unselectedIcon,
                isSelected: false,
              ),
            )
            .toList(),
      ),
    );
  }
}
