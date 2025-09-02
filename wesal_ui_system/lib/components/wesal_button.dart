import 'package:flutter/material.dart';
import 'package:wesal_ui_system/wesal_ui_system.dart';

class WesalButton extends StatelessWidget {
  const WesalButton({
    super.key,
    required this.buttonLabel,
    required this.buttonCallBack,
    this.buttonColor = Colors.white,
    this.labelColor = Colors.white,
    this.icon,
    this.isTextCenterd = false,
    this.borderColor,
  });
  final String buttonLabel;
  final Widget? icon;
  final Color? labelColor;
  final VoidCallback buttonCallBack;
  final Color? buttonColor;
  final bool isTextCenterd;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,

      child: ElevatedButton(
        onPressed: () {
          buttonCallBack();
        },
        style: ButtonStyle(
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              side: borderColor != null
                  ? BorderSide(color: borderColor!)
                  : BorderSide.none,
              borderRadius: BorderRadiusGeometry.circular(8),
            ),
          ),
          backgroundColor: WidgetStateProperty.all(buttonColor),
        ),
        child: icon != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  icon!,
                  WesalText(
                    buttonLabel,
                    style: WesalTextStyles.base16,
                    textColor: labelColor,
                    textAlign: isTextCenterd ? TextAlign.center : null,
                    textHeightBehavior: TextHeightBehavior(
                      applyHeightToFirstAscent: true,
                    ),
                  ),
                  Container(),
                ],
              )
            : Center(
                child: WesalText(
                  buttonLabel,
                  textColor: labelColor,
                  style: WesalTextStyles.semiBold14,
                ),
              ),
      ),
    );
  }
}
