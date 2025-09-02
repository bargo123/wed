import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wesal/l10n/gen/wesal_localization.gen.dart';
import 'package:wesal/resources/gender_translations.dart';
import 'package:wesal/src/presentation/singup/bloc/register_bloc.dart';
import 'package:wesal_ui_system/components/wesal_button.dart';
import 'package:wesal_ui_system/components/wesal_radio_button.dart';
import 'package:wesal_ui_system/theme/wesal_theme.dart';
import 'package:wesal_ui_system/typography/text_style.dart';
import 'package:wesal_ui_system/typography/wesal_text.dart';

class GenderPage extends StatelessWidget {
  const GenderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = WesalTheme.of(context);
    final selectedLanguage = Localizations.localeOf(context);
    final l10n = WesalLocalization.of(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WesalText(
            l10n.what_is_your_gender_identity,
            textColor: theme.colors.gray1,
            style: WesalTextStyles.header20Bold,
          ),

          SizedBox(height: 10),
          BlocBuilder<RegisterBloc, RegisterState>(
            buildWhen: (previous, current) => previous.gender != current.gender,
            builder: (context, state) {
              return Column(
                children: [
                  WesalRadioButton(
                    text: GenderTranslations.getTranslation(
                      selectedLanguage.languageCode,
                      "male",
                    ),
                    groupValue: state.gender,
                    value: "male",
                    onChange: (gender) {
                      context.read<RegisterBloc>().add(
                        RegisterEvent.genderChanged(gender),
                      );
                    },
                  ),
                  SizedBox(height: 15),
                  WesalRadioButton(
                    text: GenderTranslations.getTranslation(
                      selectedLanguage.languageCode,
                      "female",
                    ),
                    groupValue: state.gender,
                    value: "female",
                    onChange: (gender) {
                      context.read<RegisterBloc>().add(
                        RegisterEvent.genderChanged(gender),
                      );
                    },
                  ),
                ],
              );
            },
          ),
          Spacer(),
          BlocBuilder<RegisterBloc, RegisterState>(
            buildWhen: (previous, current) =>
                previous.isGenderButtonEnabled != current.isGenderButtonEnabled,
            builder: (context, state) {
              return WesalButton(
                buttonLabel: l10n.continue_text,
                labelColor: theme.colors.whiteColor,
                buttonCallBack: () {
                  if (state.isGenderButtonEnabled) {
                    context.read<RegisterBloc>().add(
                      const RegisterEvent.nextStep(),
                    );
                  }
                },
                buttonColor: state.isGenderButtonEnabled
                    ? theme.colors.appPrimaryColor
                    : theme.colors.gray3,
              );
            },
          ),
        ],
      ),
    );
  }
}
