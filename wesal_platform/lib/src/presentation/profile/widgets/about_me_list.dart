import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wesal/l10n/gen/wesal_localization.gen.dart';
import 'package:wesal/resources/smoker_translation.dart';
import 'package:wesal/src/presentation/model/about_me_item_model.dart';
import 'package:wesal/src/presentation/profile/bloc/profile_bloc.dart';
import 'package:wesal/src/presentation/profile/widgets/smoker_bottom_sheet.dart';
import 'package:wesal/src/presentation/profile/widgets/text_field_bottom_sheet.dart';
import 'package:wesal_ui_system/theme/wesal_theme.dart';
import 'package:wesal_ui_system/wesal_ui_system.dart';

class AboutMeList {
  final BuildContext context;
  final ProfileState state;

  AboutMeList({required this.context, required this.state});

  List<AboutMeItem> get items => [
    AboutMeItem(
      title: WesalLocalization.of(context).height,
      value: state.currentUser?.height,
      icon: Icons.straighten,
      onTap: () {
        final theme = WesalTheme.of(context);
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          backgroundColor: theme.colors.whiteColor,
          builder: (innerContext) => BlocProvider.value(
            value: BlocProvider.of<ProfileBloc>(context),
            child: TextFieldBottomSheet(
              firebaseKey: "height",
              hintText: WesalLocalization.of(context).height_cm,
              suffix: WesalText(
                WesalLocalization.of(context).cm,
                style: WesalTextStyles.secondary14,
              ),
              intitalValue: state.currentUser?.height ?? "",
              title: WesalLocalization.of(context).height,
              keyboardType: TextInputType.number,
            ),
          ),
        );
      },
    ),
    AboutMeItem(
      title: WesalLocalization.of(context).weight,
      icon: Icons.monitor_weight_outlined,
      value: state.currentUser?.weight,
      onTap: () {
        final theme = WesalTheme.of(context);
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          backgroundColor: theme.colors.whiteColor,
          builder: (innerContext) => BlocProvider.value(
            value: BlocProvider.of<ProfileBloc>(context),
            child: TextFieldBottomSheet(
              firebaseKey: "weight",
              hintText: WesalLocalization.of(context).weight_kg,
              suffix: WesalText(
                WesalLocalization.of(context).kg,
                style: WesalTextStyles.secondary14,
              ),
              intitalValue: state.currentUser?.weight ?? "",
              title: WesalLocalization.of(context).weight,
              keyboardType: TextInputType.number,
            ),
          ),
        );
      },
    ),
    AboutMeItem(
      title: WesalLocalization.of(context).smoking,
      icon: Icons.smoking_rooms,
      value: state.currentUser?.smoker != null
          ? SmokerTranslation.getTranslation(
              WesalLocalization.of(context).localeName,
              state.currentUser!.smoker!,
            )
          : null,
      onTap: () {
        final theme = WesalTheme.of(context);
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          backgroundColor: theme.colors.whiteColor,
          builder: (innerContext) => BlocProvider.value(
            value: BlocProvider.of<ProfileBloc>(context),
            child: SmokerBottomSheet(intitalValue: state.currentUser?.smoker),
          ),
        );
      },
    ),
    // AboutMeItem(
    //   title: 'Socializing method',
    //   icon: Icons.groups,
    //   onTap: () => print('Socializing tapped'),
    // ),
    // // Additional items that will be hidden initially
    // AboutMeItem(
    //   title: 'Exercise',
    //   icon: Icons.fitness_center,
    //   value: '5 times a week',
    //   onTap: () => print('Exercise tapped'),
    // ),
    // AboutMeItem(
    //   title: 'Diet',
    //   icon: Icons.restaurant,
    //   onTap: () => print('Diet tapped'),
    // ),
    // AboutMeItem(
    //   title: 'Pets',
    //   icon: Icons.pets,
    //   value: 'Dog lover',
    //   onTap: () => print('Pets tapped'),
    // ),
  ];
}
