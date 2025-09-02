import 'package:flutter/material.dart';

class WesalText extends StatelessWidget {
  const WesalText(
    this.text, {
    super.key,
    this.style,
    this.textAlign,
    this.softWrap = true,
    this.textHeightBehavior,
    this.maxLines,
    this.textColor,
  });
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;
  final bool softWrap;
  final Color? textColor;
  final TextHeightBehavior? textHeightBehavior;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style?.copyWith(color: textColor) ?? TextStyle(color: textColor),
      softWrap: softWrap,
      textAlign: textAlign,
      maxLines: maxLines,
      textHeightBehavior: textHeightBehavior,
    );
  }
}
