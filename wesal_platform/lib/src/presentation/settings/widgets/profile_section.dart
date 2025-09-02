import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wesal/l10n/gen/wesal_localization.gen.dart';
import 'package:wesal/src/presentation/navigation/routes_constants.dart';
import 'package:wesal/src/presentation/settings/bloc/settings_bloc.dart';
import 'package:wesal/src/presentation/settings/widgets/profile_photo.dart';
import 'package:wesal_ui_system/wesal_ui_system.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = WesalLocalization.of(context);
    final theme = WesalTheme.of(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WesalText(
            l10n.profile,
            style: WesalTextStyles.header20Bold,
            textColor: theme.colors.blackColor,
          ),
          const SizedBox(height: 20),
          BlocBuilder<SettingsBloc, SettingsState>(
            builder: (context, state) {
              return BlocBuilder<SettingsBloc, SettingsState>(
                buildWhen: (previous, current) =>
                    previous.currentUserInfo != current.currentUserInfo,
                builder: (context, state) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(RoutesConstants.profile);
                    },
                    child: Row(
                      children: [
                        ProfilePhoto(
                          avatar: state.currentUserInfo!.avatar,
                          imageUrl: state.currentUserInfo!.mainImage,
                        ),
                        const SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            WesalText(
                              state.currentUserInfo?.name ?? "No Name",
                              style: WesalTextStyles.semiBold14,
                              textColor: theme.colors.blackColor,
                            ),
                            WesalText(
                              l10n.show_profile,
                              style: WesalTextStyles.smallText12,
                              textColor: theme.colors.gray2,
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: theme.colors.gray2,
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
          Divider(),
        ],
      ),
    );
  }
}
