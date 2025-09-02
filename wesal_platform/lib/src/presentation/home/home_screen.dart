import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wesal/core/utils/avatar_selector.dart';
import 'package:wesal/gen/assets.gen.dart';
import 'package:wesal/l10n/gen/wesal_localization.gen.dart';
import 'package:wesal/src/di/di_init.dart';
import 'package:wesal/src/presentation/home/bloc/home_bloc.dart';
import 'package:wesal/src/presentation/navigation/routes_constants.dart';
import 'package:wesal_ui_system/wesal_ui_system.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = WesalLocalization.of(context);
    final theme = WesalTheme.of(context);
    return BlocProvider(
      create: (context) =>
          diContainer<HomeBloc>()..add(const HomeEvent.getUsers()),
      child: Scaffold(
        backgroundColor: theme.colors.whiteColor,
        appBar: AppBar(
          title: WesalText(
            l10n.home,
            textColor: theme.colors.datingModePrimary,
            style: WesalTextStyles.header20Bold,
          ),
          centerTitle: false,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 14.0),
              child: Assets.images.filterIc.svg(),
            ),
          ],
          backgroundColor: theme.colors.whiteColor,
        ),
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return state.processState.map(
              loading: (_) {
                return const Center(child: CircularProgressIndicator());
              },
              success: (_) {
                return GridView.builder(
                  padding: EdgeInsets.only(bottom: 100),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 0,
                    childAspectRatio: 0.75,
                  ),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          RoutesConstants.profileDetails,
                          arguments: state.users[0].id,
                        );
                      },
                      child: UsersContainer(
                        isPremium: false,
                        userAge: "23",
                        userName: state.users[0].name,
                        userImage: state.users[0].mainImage,
                        userAvatar: AvatarSelector.getAvatarByName(
                          state.users[0].avatar,
                        ),
                      ),
                    );
                  },
                );
              },
              empty: (_) {
                return Center(
                  child: WesalText(
                    'No users found',
                    style: WesalTextStyles.bold14,
                  ),
                );
              },
              error: (error) {
                return Center(child: Text(error.message));
              },
            );
          },
        ),
      ),
    );
  }
}
