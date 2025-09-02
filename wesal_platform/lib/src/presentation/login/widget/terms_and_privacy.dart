import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:wesal/l10n/gen/wesal_localization.gen.dart';
import 'package:wesal_ui_system/wesal_ui_system.dart';

class TermsAndPrivacy extends StatelessWidget {
  const TermsAndPrivacy({super.key});

  void _handleTermsTap() {
    // Handle Terms of Service tap
    // Navigate to terms page or show dialog
  }

  void _handlePrivacyTap() {
    // Handle Privacy Policy tap
    // Navigate to privacy page or show dialog
  }

  @override
  Widget build(BuildContext context) {
    final theme = WesalTheme.of(context);
    final localization = WesalLocalization.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        WesalText(
          localization.signup_agreement,
          textColor: theme.colors.gray2,
          style: WesalTextStyles.smallText12,
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: localization.terms_of_service,
                style: TextStyle(
                  color: theme.colors.blackColor,
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()..onTap = _handleTermsTap,
              ),
              TextSpan(
                text: ' ${localization.and_word} ',
                style: TextStyle(color: theme.colors.gray2),
              ),
              TextSpan(
                text: localization.privacy_policy,
                style: TextStyle(
                  color: theme.colors.blackColor,
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()..onTap = _handlePrivacyTap,
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
