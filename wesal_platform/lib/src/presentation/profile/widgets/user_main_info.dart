import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wesal/core/utils/age_calculater.dart';
import 'package:wesal/l10n/gen/wesal_localization.gen.dart';
import 'package:wesal/resources/gender_translations.dart';
import 'package:wesal/src/presentation/profile/bloc/profile_bloc.dart';
import 'package:wesal/src/presentation/profile/widgets/name_date_gender_bottom_sheet.dart';
import 'package:wesal/src/presentation/profile/widgets/profile_section_card.dart';
import 'package:wesal/src/presentation/profile/widgets/text_field_bottom_sheet.dart';
import 'package:wesal_ui_system/theme/wesal_theme.dart';

class UserMainInfo extends StatelessWidget {
  const UserMainInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = WesalLocalization.of(context);
    final theme = WesalTheme.of(context);
    return Column(
      children: [
        BlocBuilder<ProfileBloc, ProfileState>(
          buildWhen: (previous, current) =>
              previous.currentUser != current.currentUser,

          builder: (builderContext, state) {
            return ProfileSectionCard(
              title:
                  "${state.currentUser!.name ?? "No Name"},${AgeCalculater.calculateAge(state.currentUser!.dateOfBirth!)}",
              subtitle: GenderTranslations.getTranslation(
                "en",
                state.currentUser!.gender!,
              ),
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,

                  context: builderContext,
                  backgroundColor: theme.colors.whiteColor,
                  builder: (innerContext) => BlocProvider.value(
                    value: BlocProvider.of<ProfileBloc>(context),
                    child: NameDateGenderBottomSheet(
                      name: state.currentUser!.name!,
                      dateOfBirth: state.currentUser!.dateOfBirth!,
                      gender: state.currentUser!.gender!,
                      onSubmit:
                          (
                            String newdateOfBirth,
                            String newName,
                            String newGender,
                          ) {
                            builderContext.read<ProfileBloc>()
                              ..add(
                                ProfileEvent.updateUserValueByKey(
                                  key: "name",
                                  value: newName,
                                ),
                              )
                              ..add(
                                ProfileEvent.updateUserValueByKey(
                                  key: "dateOfBirth",
                                  value: newdateOfBirth,
                                ),
                              )
                              ..add(
                                ProfileEvent.updateUserValueByKey(
                                  key: "gender",
                                  value: newGender,
                                ),
                              );
                          },
                    ),
                  ),
                );
              },
            );
          },
        ),
        BlocBuilder<ProfileBloc, ProfileState>(
          buildWhen: (previous, current) =>
              previous.currentUser?.accubation !=
              current.currentUser?.accubation,
          builder: (builderContext, state) {
            return ProfileSectionCard(
              title: l10n.job,

              subtitle: state.currentUser?.accubation ?? "Not specified",
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,

                  context: builderContext,
                  backgroundColor: theme.colors.whiteColor,
                  builder: (innerContext) => BlocProvider.value(
                    value: BlocProvider.of<ProfileBloc>(context),
                    child: TextFieldBottomSheet(
                      hasRemoveButton: false,
                      firebaseKey: "accubation",
                      hintText: l10n.job,
                      intitalValue: state.currentUser?.accubation ?? "",
                      title: l10n.job,
                    ),
                  ),
                );
              },
            );
          },
        ),
        BlocBuilder<ProfileBloc, ProfileState>(
          buildWhen: (previous, current) =>
              previous.currentUser?.education != current.currentUser?.education,
          builder: (builderContext, state) {
            return ProfileSectionCard(
              title: l10n.education,
              subtitle: state.currentUser?.education ?? "Not specified",
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,

                  context: builderContext,
                  backgroundColor: theme.colors.whiteColor,
                  builder: (innerContext) => BlocProvider.value(
                    value: BlocProvider.of<ProfileBloc>(context),
                    child: TextFieldBottomSheet(
                      firebaseKey: "education",
                      hasRemoveButton: false,

                      hintText: l10n.education,
                      intitalValue: state.currentUser?.education ?? "",
                      title: l10n.education,
                    ),
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }
}
