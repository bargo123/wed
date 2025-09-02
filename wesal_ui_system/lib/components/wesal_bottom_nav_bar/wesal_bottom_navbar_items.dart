import 'package:flutter/material.dart';

class WesalBottomNavBarItems {
  final String title;
  final Widget selectedIcon;
  final Widget unselectedIcon;

  const WesalBottomNavBarItems({
    required this.selectedIcon,
    required this.unselectedIcon,
    required this.title,
  });
}
