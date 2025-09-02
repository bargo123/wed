import 'package:flutter/material.dart';

class AboutMeItem {
  final String title;
  final IconData icon;
  final String? value;
  final VoidCallback? onTap;

  AboutMeItem({
    required this.title,
    required this.icon,
    this.value,
    this.onTap,
  });
}
