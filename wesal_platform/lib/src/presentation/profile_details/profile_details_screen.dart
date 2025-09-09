import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wesal/src/di/di_init.dart';
import 'package:wesal/src/presentation/profile_details/bloc/profile_details_bloc.dart';
import 'package:wesal/src/presentation/profile_details/widgets/profile_details_body.dart';
import 'package:wesal/src/presentation/profile_details/widgets/profle_details_app_bar.dart';
import 'package:wesal_ui_system/theme/wesal_theme.dart';

class ProfileDetailsScreen extends StatelessWidget {
  const ProfileDetailsScreen({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context) {
    final theme = WesalTheme.of(context);

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: theme.colors.styleRed, width: 3),
      ),
      child: BlocProvider(
        create: (context) =>
            diContainer<ProfileDetailsBloc>()
              ..add(ProfileDetailsEvent.fetchUser(id)),
        child: Scaffold(
          appBar: const ProfileDetailsAppBar(),
          backgroundColor: theme.colors.whiteColor,
          body: SingleChildScrollView(child: ProfileDetailsBody(id: id)),
        ),
      ),
    );
  }
}
