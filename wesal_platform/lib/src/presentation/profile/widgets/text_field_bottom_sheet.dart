import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wesal/l10n/gen/wesal_localization.gen.dart';
import 'package:wesal/src/presentation/profile/bloc/profile_bloc.dart';
import 'package:wesal_ui_system/components/wesal_button.dart';
import 'package:wesal_ui_system/components/wesal_text_field.dart';
import 'package:wesal_ui_system/theme/wesal_theme.dart';
import 'package:wesal_ui_system/typography/text_style.dart';
import 'package:wesal_ui_system/typography/wesal_text.dart';

class TextFieldBottomSheet extends StatefulWidget {
  const TextFieldBottomSheet({
    super.key,
    required this.intitalValue,
    required this.title,
    this.hintText,
    this.suffix,
    required this.firebaseKey,
    this.errorMessage = "This field is required",
    this.hasRemoveButton = true,
    this.keyboardType, // Default error message
  });

  final String? intitalValue;
  final bool hasRemoveButton;
  final String title;
  final String? hintText;
  final Widget? suffix;
  final String firebaseKey;
  final String errorMessage; // Error message constructor parameter
  final TextInputType? keyboardType;

  @override
  State<TextFieldBottomSheet> createState() => _TextFieldBottomSheetState();
}

class _TextFieldBottomSheetState extends State<TextFieldBottomSheet> {
  late TextEditingController _controller;
  bool _showError = false; // State to control error visibility

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(
      text: (widget.intitalValue?.isNotEmpty ?? false)
          ? widget.intitalValue
          : "",
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // Method to validate and show error if needed
  void _validateInput() {
    setState(() {
      _showError = _controller.text.isEmpty;
    });
  }

  // Method to clear error when user types
  void _clearError() {
    if (_showError) {
      setState(() {
        _showError = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = WesalLocalization.of(context);
    final theme = WesalTheme.of(context);
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          WesalText(widget.title, style: WesalTextStyles.header20Bold),
          SizedBox(height: 10),
          WesalTextField(
            isFieldNotEmpty:
                _showError, // Show error only when _showError is true
            errorMessage:
                widget.errorMessage, // Use the error message from constructor
            hintText: widget.hintText,
            controller: _controller,
            keyboardType: widget.keyboardType,
            onChange: (text) {
              // Clear error when user starts typing
              _clearError();
            },
            suffixIcon: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [widget.suffix ?? Container(width: 0)],
            ),
          ),
          SizedBox(height: 20),
          BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              return Row(
                children: [
                  Expanded(
                    child: WesalButton(
                      buttonLabel: l10n.submit,
                      buttonCallBack: () {
                        // Validate input first
                        _validateInput();

                        // If validation passes (no error), proceed with submission
                        if (!_showError) {
                          // Check if value has changed
                          if (_controller.text != widget.intitalValue) {
                            context.read<ProfileBloc>().add(
                              ProfileEvent.updateUserValueByKey(
                                key: widget.firebaseKey,
                                value: _controller.text,
                              ),
                            );
                          }
                          Navigator.of(context).pop();
                        }
                        // If there's an error, don't proceed (error is already shown)
                      },
                      buttonColor: theme.colors.appPrimaryColor,
                    ),
                  ),
                  SizedBox(width: widget.hasRemoveButton ? 20 : 0),

                  widget.hasRemoveButton
                      ? Expanded(
                          child: WesalButton(
                            buttonLabel: l10n.remove,
                            labelColor: theme.colors.whiteColor,
                            buttonCallBack: () {
                              context.read<ProfileBloc>().add(
                                ProfileEvent.updateUserValueByKey(
                                  key: widget.firebaseKey,
                                  value: null,
                                ),
                              );
                              Navigator.of(context).pop();
                            },
                            buttonColor: theme.colors.redColor,
                          ),
                        )
                      : Container(),
                ],
              );
            },
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
