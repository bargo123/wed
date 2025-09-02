import 'package:flutter/material.dart';
import 'package:wesal_ui_system/components/wesal_bottom_nav_bar/bottom_navbar_items.dart';
import 'package:wesal_ui_system/wesal_ui_system.dart';

class BottomNavbar extends StatefulWidget {
  BottomNavbar({
    Key? key,
    required this.navItems,
    this.onNavBarCallBack,
    this.selectedColor = Colors.blue,
    this.unselectedColor = Colors.grey,
    this.initialIndex = 0,
  }) : super(key: key);

  final List<BottomNavbarItems> navItems;
  final void Function(int index)? onNavBarCallBack;
  final Color selectedColor;
  final Color unselectedColor;
  final int initialIndex;

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  late int pageIndex;
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = widget.initialIndex;
    pageIndex = currentIndex;
  }

  @override
  void didUpdateWidget(covariant BottomNavbar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialIndex != widget.initialIndex) {
      setState(() {
        currentIndex = widget.initialIndex;
        pageIndex = currentIndex;
      });
    }
  }

  void _onItemTap(int index) {
    if (pageIndex == index) return;

    setState(() {
      pageIndex = index;
      currentIndex = index;
    });

    widget.onNavBarCallBack?.call(index);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(widget.navItems.length, (index) {
        final isSelected = pageIndex == index;

        return InkWell(
          borderRadius: BorderRadius.circular(6),
          onTap: () => _onItemTap(index),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),

            child: widget.navItems[index].copyWith(
              isSelected: isSelected,
              selectedColor: widget.selectedColor,
              unselectedColor: widget.unselectedColor,
            ),
          ),
        );
      }),
    );
  }
}
