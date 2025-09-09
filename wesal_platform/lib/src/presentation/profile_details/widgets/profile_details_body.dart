import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wesal/src/presentation/profile_details/bloc/profile_details_bloc.dart';
import 'package:wesal/src/presentation/profile_details/widgets/profile_about_me_section.dart';
import 'package:wesal/src/presentation/profile_details/widgets/profile_card.dart';
import 'package:wesal/src/presentation/profile_details/widgets/profile_hobbies_section.dart';
import 'package:wesal/src/presentation/profile_details/widgets/profile_images.dart';
import 'package:wesal_ui_system/theme/wesal_theme.dart';
import 'package:wesal_ui_system/theme/wesal_theme_data.dart';
import 'package:wesal_ui_system/typography/text_style.dart';
import 'package:wesal_ui_system/typography/wesal_text.dart';

class ProfileDetailsBody extends StatelessWidget {
  const ProfileDetailsBody({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context) {
    final theme = WesalTheme.of(context);

    return BlocBuilder<ProfileDetailsBloc, ProfileDetailsState>(
      builder: (context, state) {
        return state.processState.map(
          loading: (_) => const Center(child: CircularProgressIndicator()),
          success: (s) => _buildSuccessContent(context, state, theme),
          error: (e) => _buildErrorContent(e, theme),
        );
      },
    );
  }

  Widget _buildSuccessContent(
    BuildContext context,
    ProfileDetailsState state,
    WesalThemeData theme,
  ) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 24.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ProfileCard(
                  user: state.user!,
                  isLiked: state.isUserLiked!,
                  id: id,
                ),
                const SizedBox(height: 50),
                ProfileHobbiesSection(user: state.user),
                const SizedBox(height: 20),
                ProfileAboutMeSection(user: state.user),
              ],
            ),
          ),
          ProfileImages(images: state.user?.images ?? []),
        ],
      ),
    );
  }

  Widget _buildErrorContent(dynamic error, WesalThemeData theme) {
    return Center(
      child: WesalText(
        error.message,
        style: WesalTextStyles.bold16,
        textColor: theme.colors.blackColor,
      ),
    );
  }
}
