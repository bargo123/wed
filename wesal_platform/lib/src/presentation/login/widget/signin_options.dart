import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wesal/gen/assets.gen.dart';
import 'package:wesal/l10n/gen/wesal_localization.gen.dart';
import 'package:wesal/src/presentation/login/bloc/login_bloc.dart';
import 'package:wesal/src/presentation/login/widget/terms_and_privacy.dart';
import 'package:wesal_ui_system/components/wesal_button.dart';

import 'package:wesal_ui_system/theme/wesal_theme.dart';
import 'package:wesal_ui_system/typography/text_style.dart';
import 'package:wesal_ui_system/typography/wesal_text.dart';

class SigninOptions extends StatelessWidget {
  const SigninOptions({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = WesalTheme.of(context);
    final localization = WesalLocalization.of(context);

    return Padding(
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Safety note
          WesalText(
            localization.social_safety_note,
            textAlign: TextAlign.center,
            textColor: theme.colors.gray1,
            style: WesalTextStyles.smallText12,
          ),

          // Social signin buttons
          BlocBuilder<LoginBloc, LoginState>(
            buildWhen: (previous, current) => false,
            builder: (builderContext, state) {
              return WesalButton(
                buttonCallBack: () async {
                  builderContext.read<LoginBloc>().add(
                    const LoginEvent.googleSignin(),
                  );
                },
                icon: Assets.images.googleIc.svg(height: 20),
                buttonLabel: localization.continue_google,
                buttonColor: theme.colors.whiteColor,
                labelColor: theme.colors.gray2,
                borderColor: theme.colors.gray5,
              );
            },
          ),
          const SizedBox(height: 10),
          WesalButton(
            icon: Assets.images.appleLogoWhite.svg(height: 20),
            buttonLabel: localization.continue_apple,
            buttonCallBack: () {
              // Handle Apple signin
            },
            buttonColor: theme.colors.blackColor,
            labelColor: theme.colors.whiteColor,
          ),

          const SizedBox(height: 50),

          // Terms and privacy
          const TermsAndPrivacy(),
        ],
      ),
    );
  }
}
