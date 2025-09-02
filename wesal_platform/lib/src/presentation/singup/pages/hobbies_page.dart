import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wesal/l10n/gen/wesal_localization.gen.dart';
import 'package:wesal/src/presentation/singup/bloc/register_bloc.dart';
import 'package:wesal/src/presentation/widgets/wesal_hobbies_builder/hobbies_selection_widget.dart';
import 'package:wesal_ui_system/components/wesal_button.dart';
import 'package:wesal_ui_system/theme/wesal_theme.dart';

class HobbiesPage extends StatelessWidget {
  const HobbiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = WesalLocalization.of(context);
    final theme = WesalTheme.of(context);

    return Stack(
      children: [
        HobbiesSelectionWidget(
          onHobbyAdded: (hobby) {
            context.read<RegisterBloc>().add(RegisterEvent.addHobby(hobby));
          },
          onHobbyRemoved: (hobby) {
            context.read<RegisterBloc>().add(RegisterEvent.removeHobby(hobby));
          },
        ),
        // Continue button positioned separately
        Column(
          children: [
            Spacer(),
            BlocBuilder<RegisterBloc, RegisterState>(
              buildWhen: (previous, current) =>
                  previous.isHobbiesButtonEnabled !=
                  current.isHobbiesButtonEnabled,
              builder: (context, state) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: WesalButton(
                    buttonLabel: l10n.continue_text,
                    labelColor: theme.colors.whiteColor,
                    buttonCallBack: () {
                      if (state.isHobbiesButtonEnabled) {
                        context.read<RegisterBloc>().add(
                          const RegisterEvent.nextStep(),
                        );
                      }
                    },
                    buttonColor: state.isHobbiesButtonEnabled
                        ? theme.colors.appPrimaryColor
                        : theme.colors.gray3,
                  ),
                );
              },
            ),
            SizedBox(height: 15),
          ],
        ),
      ],
    );
  }
}
