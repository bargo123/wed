import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wesal/l10n/gen/wesal_localization.gen.dart';
import 'package:wesal/src/presentation/singup/bloc/register_bloc.dart';
import 'package:wesal_ui_system/wesal_ui_system.dart';

class RegisterAppBar extends StatelessWidget implements PreferredSizeWidget {
  final int currentStep;
  final int totalSteps;
  final bool showBackButton;

  const RegisterAppBar({
    super.key,
    this.currentStep = 0,
    this.totalSteps = 6,
    this.showBackButton = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = WesalTheme.of(context);

    return AppBar(
      toolbarHeight: 75,
      automaticallyImplyLeading: false,

      title: Column(
        children: [
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(3),
          //   child: LinearProgressIndicator(
          //     backgroundColor: theme.colors.gray5,
          //     color: theme.colors.appPrimaryColor,
          //     value: (currentStep + 1) / totalSteps,
          //     minHeight: 10,
          //   ),
          // ),
          // const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BlocBuilder<RegisterBloc, RegisterState>(
                buildWhen: (previous, current) =>
                    previous.stepIndex != current.stepIndex,

                builder: (context, state) {
                  return GestureDetector(
                    onTap: () {
                      if (state.stepIndex > 0) {
                        context.read<RegisterBloc>().add(
                          RegisterEvent.previousStep(),
                        );
                      }
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: theme.colors.blackColor,
                      size: 22,
                    ),
                  );
                },
              ),
              const Spacer(),
              WesalText(
                WesalLocalization.of(context).registration,
                style: WesalTextStyles.bold16,
                textColor: theme.colors.blackColor,
              ),
              const Spacer(),
              BlocBuilder<RegisterBloc, RegisterState>(
                buildWhen: (previous, current) =>
                    previous.stepIndex != current.stepIndex,
                builder: (context, state) {
                  return WesalText(
                    "${state.stepIndex + 1}/$totalSteps",
                    textColor: theme.colors.appPrimaryColor,
                    style: WesalTextStyles.smallText12,
                  );
                },
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(75);
}
