import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wesal/core/utils/age_calculater.dart';
import 'package:wesal/src/data/user_info_model.dart';
import 'package:wesal/src/di/di_init.dart';
import 'package:wesal/src/presentation/likes/bloc/likes_bloc.dart';
import 'package:wesal/src/presentation/navigation/routes_constants.dart';
import 'package:wesal_ui_system/components/user_container.dart';
import 'package:wesal_ui_system/theme/wesal_theme.dart';
import 'package:wesal_ui_system/typography/text_style.dart';
import 'package:wesal_ui_system/typography/wesal_text.dart';

class LikesScreen extends StatelessWidget {
  const LikesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) =>
            diContainer<LikesBloc>()..add(LikesEvent.subscribe()),
        child: BlocBuilder<LikesBloc, LikesState>(
          builder: (context, state) {
            return state.processState.map(
              loading: (_) {
                return const Center(child: CircularProgressIndicator());
              },
              success: (_) {
                // Convert map to list of entries for easier handling
                final userEntries = state.users.entries.toList();

                return GridView.builder(
                  padding: const EdgeInsets.all(16),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.6,
                  ),
                  itemCount: userEntries.length,
                  itemBuilder: (context, index) {
                    final userEntry = userEntries[index];
                    final iLikedBack = userEntry.key;
                    final user = userEntry.value;

                    return _ProfileCard(
                      user: user,
                      iLikedBack: iLikedBack,
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          RoutesConstants.profileDetails,
                          arguments: user.id,
                        );
                      },
                      onLikeBack: () {
                        context.read<LikesBloc>().add(
                          LikesEvent.likeBack(user.id),
                        );
                      },
                      onRemove: () {
                        context.read<LikesBloc>().add(
                          LikesEvent.remove(user.id),
                        );
                      },
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

class _ProfileCard extends StatelessWidget {
  final UserInfoModel user;
  final bool iLikedBack;
  final VoidCallback onTap;
  final VoidCallback onLikeBack;
  final VoidCallback onRemove;

  const _ProfileCard({
    required this.user,
    required this.iLikedBack,
    required this.onTap,
    required this.onLikeBack,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    final theme = WesalTheme.of(context);
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
          // Optional: Add border or background color for mutual likes
          border: iLikedBack
              ? Border.all(color: theme.colors.appPrimaryColor, width: 2)
              : null,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image at the top with mutual like indicator
            Stack(
              children: [
                SizedBox(
                  height: 230,
                  child: UsersContainer(
                    needPadding: false,
                    userAge: AgeCalculater.calculateAge(user.age),
                    userAvatar: user.avatar,
                    userImage: user.mainImage,
                    userName: user.name,
                  ),
                ),
                // Show mutual like indicator
                if (iLikedBack)
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                  ),
              ],
            ),
            Spacer(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _ActionButton(
                  icon: Icons.close,
                  color: theme.colors.blackColor,
                  onTap: onRemove,
                ),
                _ActionButton(
                  icon: iLikedBack ? Icons.abc_sharp : Icons.favorite_border,
                  color: iLikedBack ? Colors.red : Colors.black,
                  onTap: onLikeBack,
                ),
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const _ActionButton({
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = WesalTheme.of(context);
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(25),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: theme.colors.appSecondaryColor,
          shape: BoxShape.circle,
          border: Border.all(color: theme.colors.appPrimaryColor, width: 3),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Icon(icon, color: color, size: 24),
      ),
    );
  }
}
