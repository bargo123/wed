import 'package:flutter/material.dart';
import 'package:lazy_load_indexed_stack/lazy_load_indexed_stack.dart';
import 'package:wesal/gen/assets.gen.dart';
import 'package:wesal/src/presentation/home/home_screen.dart';
import 'package:wesal/src/presentation/likes/likes_screen.dart';
import 'package:wesal/src/presentation/settings/settings_screen.dart';
import 'package:wesal_ui_system/components/wesal_bottom_nav_bar/wesal_bottom_navbar.dart';
import 'package:wesal_ui_system/wesal_ui_system.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int _tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          _TabContentWidget(tabIndex: _tabIndex),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: WesalBottomNavbar(
              onNavBarCallBack: (index) {
                setState(() {
                  _tabIndex = index;
                });
              },
              navItems: [
                WesalBottomNavBarItems(
                  selectedIcon: Assets.images.chatIcSelected.svg(),
                  unselectedIcon: Assets.images.chatIc.svg(),
                  title: "",
                ),

                WesalBottomNavBarItems(
                  selectedIcon: Assets.images.homeIcSelected.svg(),
                  unselectedIcon: Assets.images.homeIc.svg(),
                  title: "",
                ),
                WesalBottomNavBarItems(
                  selectedIcon: Assets.images.profileIcSelected.svg(),
                  unselectedIcon: Assets.images.profileIc.svg(),
                  title: "",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TabContentWidget extends StatelessWidget {
  const _TabContentWidget({required this.tabIndex});

  final int tabIndex;

  @override
  Widget build(BuildContext context) {
    return LazyLoadIndexedStack(
      index: tabIndex,
      children: [LikesScreen(), HomeScreen(), SettingsScreen()],
    );
  }
}
