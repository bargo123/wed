import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/date_picker_theme.dart';
import 'package:flutter_holo_date_picker/widget/date_picker_widget.dart';
import 'package:wesal/l10n/gen/wesal_localization.gen.dart';
import 'package:wesal/src/presentation/singup/bloc/register_bloc.dart';
import 'package:wesal_ui_system/wesal_ui_system.dart';

class NameDatePage extends StatelessWidget {
  const NameDatePage({super.key});
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
            l10n.please_tell_us_your_name,
            textColor: theme.colors.gray1,
            style: WesalTextStyles.header20Bold,
          ),
          const SizedBox(height: 10),
          WesalTextField(
            hintText: l10n.enter_your_name,
            onChange: (name) {
              context.read<RegisterBloc>().add(RegisterEvent.nameChanged(name));
            },
          ),
          const SizedBox(height: 30),
          WesalText(
            l10n.what_is_your_date_of_birth,
            textColor: theme.colors.gray1,
            style: WesalTextStyles.header20Bold,
          ),
          DatePickerWidget(
            looping: true,
            lastDate: DateTime(DateTime.now().year, 12, 31),
            initialDate: DateTime(1933, 1, 1),
            dateFormat: "dd-MMM-yyyy",

            locale: DatePicker.localeFromString('en'),
            onChange: (DateTime newDate, _) {
              context.read<RegisterBloc>().add(
                RegisterEvent.dateOfBirthChanged(newDate.toIso8601String()),
              );
            },
            pickerTheme: DateTimePickerTheme(
              itemTextStyle: WesalTextStyles.secondary14.copyWith(
                color: theme.colors.blackColor,
              ),
              dividerColor: theme.colors.appPrimaryColor,
            ),
          ),
          Spacer(),
          BlocBuilder<RegisterBloc, RegisterState>(
            buildWhen: (previous, current) =>
                previous.isNamePageButtonEnabled !=
                current.isNamePageButtonEnabled,
            builder: (context, state) {
              return WesalButton(
                buttonLabel: l10n.continue_text,
                labelColor: theme.colors.whiteColor,
                buttonCallBack: () {
                  if (state.isNamePageButtonEnabled) {
                    context.read<RegisterBloc>().add(
                      const RegisterEvent.nextStep(),
                    );
                  }
                },
                buttonColor: state.isNamePageButtonEnabled
                    ? theme.colors.appPrimaryColor
                    : theme.colors.gray3,
              );
            },
          ),
        ],
      ),
    );
  }
}
