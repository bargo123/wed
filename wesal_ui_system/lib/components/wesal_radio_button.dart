import 'package:flutter/material.dart';
import 'package:wesal_ui_system/wesal_ui_system.dart';

class WesalRadioButton<T> extends StatelessWidget {
  const WesalRadioButton({
    super.key,
    required this.text,
    required this.groupValue,
    required this.value,
    required this.onChange,
  });
  final String text;
  final String value;
  final String? groupValue;
  final Function(dynamic) onChange;
  @override
  Widget build(BuildContext context) {
    final theme = WesalTheme.of(context);
    return RadioListTile(
      title: WesalText(
        text,
        textAlign: TextAlign.start,
        textColor: theme.colors.blackColor,

        style: WesalTextStyles.bold16,
      ),
      tileColor: value != groupValue
          ? theme.colors.gray5
          : theme.colors.appSecondaryColor,
      value: value,
      dense: true,
      visualDensity: VisualDensity(vertical: -1),
      activeColor: theme.colors.appPrimaryColor,
      controlAffinity: ListTileControlAffinity.trailing,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: value != groupValue
              ? theme.colors.gray5
              : theme.colors.appPrimaryColor,
        ),
      ),
      groupValue: groupValue ?? '',
      onChanged: (value) {
        onChange(value);
      },
    );
  }
}
