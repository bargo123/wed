import 'package:flutter/material.dart';
import 'package:wesal_ui_system/theme/wesal_theme_data.dart';

class WesalTheme extends InheritedWidget {
  final WesalThemeData data;

  const WesalTheme({super.key, required this.data, required super.child});

  static WesalThemeData of(BuildContext context) {
    final WesalTheme? inheritedTheme = context
        .dependOnInheritedWidgetOfExactType<WesalTheme>();
    assert(inheritedTheme != null, 'No thme found in context');
    return inheritedTheme!.data;
  }

  @override
  bool updateShouldNotify(covariant WesalTheme oldWidget) {
    return data != oldWidget.data;
  }
}
