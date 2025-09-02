import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wesal/l10n/gen/wesal_localization.gen.dart';
import 'package:wesal/src/presentation/profile/bloc/profile_bloc.dart';
import 'package:wesal/src/presentation/widgets/wesal_hobbies_builder/hobbies_selection_widget.dart';
import 'package:wesal/src/presentation/widgets/wesal_hobbies_builder/wesal_hobbies_builder.dart';
import 'package:wesal_ui_system/wesal_ui_system.dart';

class HobbiesSection extends StatelessWidget {
  const HobbiesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = WesalLocalization.of(context);
    final theme = WesalTheme.of(context);
    final locale = Localizations.localeOf(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              WesalText(
                l10n.hobbies_and_interests,
                style: WesalTextStyles.header20Bold,
                textColor: WesalTheme.of(context).colors.blackColor,
              ),
              BlocBuilder<ProfileBloc, ProfileState>(
                buildWhen: (previous, current) =>
                    previous.currentUser?.hobbies.length !=
                    current.currentUser?.hobbies.length,
                builder: (context, state) {
                  return InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        useSafeArea: true,
                        isScrollControlled: true,
                        backgroundColor: theme.colors.whiteColor,
                        builder: (innerContext) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 14.0),
                            child: BlocProvider.value(
                              value: BlocProvider.of<ProfileBloc>(context),
                              child: HobbiesSelectionWidget(
                                hasBackButton: true,
                                selectedHobbies: state.currentUser?.hobbies,
                                onHobbyAdded: (hobby) {
                                  context.read<ProfileBloc>().add(
                                    ProfileEvent.addHobby(hobby),
                                  );
                                },
                                onHobbyRemoved: (hobby) {
                                  context.read<ProfileBloc>().add(
                                    ProfileEvent.removeHobby(hobby),
                                  );
                                },
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: WesalText(
                      state.currentUser?.hobbies.isNotEmpty ?? false
                          ? l10n.edit
                          : l10n.add,
                      style: WesalTextStyles.semiBold14.copyWith(
                        color: theme.colors.appPrimaryColor,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
          SizedBox(height: 10),
          BlocBuilder<ProfileBloc, ProfileState>(
            buildWhen: (previous, current) =>
                previous.currentUser?.hobbies.length !=
                current.currentUser?.hobbies.length,
            builder: (context, state) {
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(color: theme.colors.appPrimaryColor),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Center(
                    child: state.currentUser?.hobbies.isNotEmpty ?? false
                        ? HobbiesInterestsBuilder(
                            key: UniqueKey(),
                            alignment: CrossAxisAlignment.center,
                            language: locale.languageCode,
                            isTileSelectable: false,
                            isExpandable: false,
                            selectedHobbies: state.currentUser?.hobbies ?? [],
                            hobbiesList: state.currentUser?.hobbies ?? [],
                          )
                        : WesalText(
                            l10n.no_added_hobbies,
                            style: WesalTextStyles.secondary14,
                            textColor: theme.colors.gray3,
                          ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
