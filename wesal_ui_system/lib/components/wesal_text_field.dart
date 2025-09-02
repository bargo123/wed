import 'dart:async';
import 'package:flutter/material.dart';
import 'package:wesal_ui_system/theme/wesal_theme.dart';

class WesalTextField extends StatefulWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? hintText;
  final String? errorMessage;
  final bool? readOnly;
  final bool? enabled;
  final bool? isFieldNotEmpty;
  final bool? obscureText;
  final bool? enableSuggestions;
  final bool? autocorrect;
  final Color? backgroundColor;

  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Function()? onTap;

  final Function(String text)? onChange;

  const WesalTextField({
    this.controller,
    this.focusNode,
    required this.hintText,
    this.errorMessage = '',
    this.readOnly = false,
    this.enabled = true,
    this.isFieldNotEmpty = false,
    this.obscureText = false,
    this.enableSuggestions = true,
    this.autocorrect = true,
    this.keyboardType,
    this.suffixIcon,
    this.prefixIcon,
    this.onChange,
    this.backgroundColor,
    this.onTap,
  });

  @override
  State<WesalTextField> createState() => _WesalTextFieldState();
}

class _WesalTextFieldState extends State<WesalTextField> {
  StreamController<bool> textKeyboadVisibilityStream =
      StreamController<bool>.broadcast();
  @override
  void initState() {
    if (widget.focusNode != null) {
      widget.focusNode!.addListener(fieldListen);
      widget.controller?.addListener(fieldListen);
    }

    super.initState();
  }

  void fieldListen() {
    textKeyboadVisibilityStream.sink.add(widget.focusNode!.hasFocus);
  }

  @override
  Widget build(BuildContext context) {
    final theme = WesalTheme.of(context);
    return StreamBuilder<bool>(
      initialData: false,
      stream: textKeyboadVisibilityStream.stream,
      builder: (context, snapshot) {
        return SizedBox(
          // height: 50,
          child: TextField(
            obscureText: widget.obscureText!,
            readOnly: widget.readOnly!,
            enabled: widget.enabled,
            focusNode: widget.focusNode,
            enableSuggestions: widget.enableSuggestions!,
            autocorrect: widget.autocorrect!,
            style: TextStyle(color: theme.colors.gray1),
            controller: widget.controller,
            keyboardType: widget.keyboardType,
            cursorColor: theme.colors.blackColor,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 10,
              ),
              errorText:
                  widget.errorMessage!.isNotEmpty && widget.isFieldNotEmpty!
                  ? widget.errorMessage
                  : null,
              hintText: widget.hintText,

              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.0),
                borderSide: BorderSide(color: theme.colors.gray3),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.0),
                borderSide: BorderSide(color: theme.colors.appPrimaryColor),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.0),
                borderSide: BorderSide(color: theme.colors.redColor),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.0),
                borderSide: BorderSide(color: theme.colors.gray3),
              ),
              suffixIcon: widget.suffixIcon,
              prefixIcon: widget.prefixIcon,
              filled: false,
            ),
            onTap: () {
              if (widget.onTap != null) {
                widget.onTap!();
              }
            },
            onChanged: (text) {
              if (widget.onChange != null) {
                widget.onChange!(text);
              }
            },
          ),
        );
      },
    );
  }
}
