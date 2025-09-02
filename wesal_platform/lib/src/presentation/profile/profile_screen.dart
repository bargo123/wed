import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wesal/l10n/gen/wesal_localization.gen.dart';
import 'package:wesal/src/di/di_init.dart';
import 'package:wesal/src/presentation/profile/bloc/profile_bloc.dart';
import 'package:wesal/src/presentation/profile/widgets/about_me_list.dart';
import 'package:wesal/src/presentation/profile/widgets/about_me_section.dart';
import 'package:wesal/src/presentation/profile/widgets/hobbies_section.dart';
import 'package:wesal/src/presentation/profile/widgets/photos_section.dart';
import 'package:wesal/src/presentation/profile/widgets/user_main_info.dart';
import 'package:wesal_ui_system/wesal_ui_system.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = WesalTheme.of(context);
    return BlocProvider(
      create: (context) =>
          diContainer<ProfileBloc>()..add(ProfileEvent.getCurrentUserInfo()),
      child: Scaffold(
        appBar: AppBar(
          title: WesalText(
            WesalLocalization.of(context).profile,
            textColor: theme.colors.blackColor,
            style: WesalTextStyles.header20Bold,
          ),
        ),
        body: BlocBuilder<ProfileBloc, ProfileState>(
          buildWhen: (previous, current) =>
              previous.processState != current.processState,
          builder: (context, state) {
            return state.processState.map(
              loading: (_) => const Center(child: CircularProgressIndicator()),
              success: (_) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      PhotosSection(),
                      SizedBox(height: 20),
                      UserMainInfo(),
                      SizedBox(height: 20),
                      BlocBuilder<ProfileBloc, ProfileState>(
                        builder: (context, state) {
                          return AboutMeSection(
                            items: AboutMeList(
                              context: context,
                              state: state,
                            ).items,
                          );
                        },
                      ),
                      SizedBox(height: 20),
                      HobbiesSection(),
                    ],
                  ),
                );
              },
              error: (error) {
                return Center(
                  child: Text(
                    error.message,
                    style: const TextStyle(color: Colors.red, fontSize: 16),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
