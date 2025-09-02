import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wesal/l10n/gen/wesal_localization.gen.dart';
import 'package:wesal/resources/smoker_translation.dart';
import 'package:wesal/src/presentation/profile/bloc/profile_bloc.dart';
import 'package:wesal_ui_system/components/wesal_button.dart';
import 'package:wesal_ui_system/components/wesal_radio_button.dart';
import 'package:wesal_ui_system/theme/wesal_theme.dart';

class SmokerBottomSheet extends StatefulWidget {
  const SmokerBottomSheet({super.key, required this.intitalValue});
  final String? intitalValue;

  @override
  State<SmokerBottomSheet> createState() => _SmokerBottomSheetState();
}

class _SmokerBottomSheetState extends State<SmokerBottomSheet> {
  late String smoker;

  @override
  void initState() {
    super.initState();
    smoker = widget.intitalValue ?? "yes"; // Default to "yes" if null
  }

  @override
  Widget build(BuildContext context) {
    final l10n = WesalLocalization.of(context);
    final localizataion = WesalLocalization.of(context);
    final theme = WesalTheme.of(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          WesalRadioButton(
            text: SmokerTranslation.getTranslation(
              localizataion.localeName,
              "yes",
            ),
            groupValue: smoker,
            value: "yes",
            onChange: (smoker) {
              setState(() {
                this.smoker = smoker;
              });
            },
          ),
          SizedBox(height: 15),
          WesalRadioButton(
            text: SmokerTranslation.getTranslation(
              localizataion.localeName,
              "no",
            ),
            groupValue: smoker,
            value: "no",
            onChange: (smoker) {
              setState(() {
                this.smoker = smoker;
              });
            },
          ),
          SizedBox(height: 20),

          BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              return Row(
                children: [
                  Expanded(
                    child: WesalButton(
                      buttonLabel: l10n.submit,
                      buttonCallBack: () {
                        if (widget.intitalValue != smoker) {
                          context.read<ProfileBloc>().add(
                            ProfileEvent.updateUserValueByKey(
                              key: "smoker",
                              value: smoker,
                            ),
                          );
                        }
                        Navigator.of(context).pop();
                      },
                      buttonColor: theme.colors.appPrimaryColor,
                    ),
                  ),
                  SizedBox(width: 20),

                  Expanded(
                    child: WesalButton(
                      buttonLabel: l10n.remove,
                      labelColor: theme.colors.whiteColor,
                      buttonCallBack: () {
                        context.read<ProfileBloc>().add(
                          ProfileEvent.updateUserValueByKey(
                            key: "smoker",
                            value: null,
                          ),
                        );
                        Navigator.of(context).pop();
                      },
                      buttonColor: theme.colors.redColor,
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
