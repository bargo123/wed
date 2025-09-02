import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wesal/l10n/gen/wesal_localization.gen.dart';
import 'package:wesal/src/presentation/navigation/routes_constants.dart';
import 'package:wesal/src/presentation/settings/bloc/settings_bloc.dart';
import 'package:wesal_ui_system/wesal_ui_system.dart';

class AccountLogoutAndDeletion extends StatelessWidget {
  const AccountLogoutAndDeletion({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = WesalLocalization.of(context);
    final theme = WesalTheme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          BlocBuilder<SettingsBloc, SettingsState>(
            buildWhen: (previous, current) => false,
            builder: (builderContext, state) {
              return WesalButton(
                buttonLabel: l10n.logout,
                buttonCallBack: () {
                  builderContext.read<SettingsBloc>().add(
                    SettingsEvent.signOut(
                      onSignoutSuccess: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                          RoutesConstants.signinScreen,
                          (route) => false,
                        );
                      },
                    ),
                  );
                },
                buttonColor: theme.colors.whiteColor,

                labelColor: theme.colors.appPrimaryColor,
              );
            },
          ),
          const SizedBox(height: 10),
          WesalButton(
            buttonLabel: l10n.delete_account,
            buttonCallBack: () {},
            buttonColor: theme.colors.whiteColor,
            labelColor: theme.colors.gray3,
          ),
        ],
      ),
    );
  }
}
