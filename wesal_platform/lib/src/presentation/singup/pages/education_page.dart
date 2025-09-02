import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wesal/l10n/gen/wesal_localization.gen.dart';
import 'package:wesal/src/presentation/navigation/routes_constants.dart';
import 'package:wesal/src/presentation/singup/bloc/register_bloc.dart';
import 'package:wesal_ui_system/wesal_ui_system.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});
  @override
  Widget build(BuildContext context) {
    final WesalLocalization l10n = WesalLocalization.of(context);
    final theme = WesalTheme.of(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WesalText(
            l10n.university_college,
            textColor: theme.colors.gray1,
            style: WesalTextStyles.header20Bold,
          ),
          const SizedBox(height: 10),
          WesalTextField(
            hintText: l10n.college_name,
            onChange: (college) {
              context.read<RegisterBloc>().add(
                RegisterEvent.enterEducation(college),
              );
            },
          ),
          const SizedBox(height: 30),
          WesalText(
            l10n.job_title,
            textColor: theme.colors.gray1,
            style: WesalTextStyles.header20Bold,
          ),
          const SizedBox(height: 10),

          WesalTextField(
            hintText: l10n.enter_your_job_title,
            onChange: (job) {
              context.read<RegisterBloc>().add(
                RegisterEvent.enterAccubation(job),
              );
            },
          ),
          Spacer(),
          BlocBuilder<RegisterBloc, RegisterState>(
            buildWhen: (previous, current) =>
                previous.isEducationButtonEnabled !=
                current.isEducationButtonEnabled,
            builder: (context, state) {
              return WesalButton(
                buttonLabel: l10n.continue_text,
                labelColor: theme.colors.whiteColor,
                buttonCallBack: () {
                  if (state.isEducationButtonEnabled) {
                    context.read<RegisterBloc>().add(
                      RegisterEvent.subimtUserInfo(
                        onSuccess: () {
                          Navigator.pushNamed(context, RoutesConstants.navBar);
                        },
                      ),
                    );
                  }
                },
                buttonColor: state.isEducationButtonEnabled
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
