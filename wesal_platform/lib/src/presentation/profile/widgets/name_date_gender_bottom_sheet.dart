import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/date_picker_theme.dart';
import 'package:flutter_holo_date_picker/widget/date_picker_widget.dart';
import 'package:wesal/l10n/gen/wesal_localization.gen.dart';
import 'package:wesal/resources/gender_translations.dart';
import 'package:wesal_ui_system/components/wesal_button.dart';
import 'package:wesal_ui_system/components/wesal_text_field.dart';
import 'package:wesal_ui_system/theme/wesal_theme.dart';
import 'package:wesal_ui_system/typography/text_style.dart';
import 'package:wesal_ui_system/typography/wesal_text.dart';

class NameDateGenderBottomSheet extends StatefulWidget {
  const NameDateGenderBottomSheet({
    super.key,
    required this.name,
    required this.dateOfBirth,
    required this.gender,
    required this.onSubmit,
  });
  final String name;
  final String dateOfBirth;
  final String gender;
  final void Function(String newdateOfBirth, String newName, String newGender)
  onSubmit;
  @override
  State<NameDateGenderBottomSheet> createState() =>
      _NameDateGenderBottomSheetState();
}

class _NameDateGenderBottomSheetState extends State<NameDateGenderBottomSheet> {
  late TextEditingController nameController;
  late String newdateOfBirth;
  late String newGender;

  @override
  void initState() {
    nameController = TextEditingController(text: widget.name);
    newdateOfBirth = widget.dateOfBirth;
    newGender = widget.gender;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = WesalLocalization.of(context);
    print("Gender: ${GenderTranslations.getTranslation("en", widget.gender)} ");
    final List<String> genderOptions = GenderTranslations.getGenders();
    final theme = WesalTheme.of(context);
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          WesalText(l10n.name, style: WesalTextStyles.header20Bold),
          SizedBox(height: 10),
          WesalTextField(hintText: "", controller: nameController),
          SizedBox(height: 20),
          WesalText(l10n.date_of_birth, style: WesalTextStyles.header20Bold),
          SizedBox(height: 10),
          DatePickerWidget(
            looping: true,
            lastDate: DateTime(DateTime.now().year, 12, 31),
            initialDate: DateTime.parse(widget.dateOfBirth),
            dateFormat: "dd-MMM-yyyy",

            locale: DatePicker.localeFromString('en'),
            onChange: (DateTime newDate, _) {
              newdateOfBirth = newDate.toIso8601String();
            },
            pickerTheme: DateTimePickerTheme(
              itemTextStyle: WesalTextStyles.secondary14.copyWith(
                color: theme.colors.blackColor,
              ),
              dividerColor: theme.colors.appPrimaryColor,
            ),
          ),
          SizedBox(height: 20),
          WesalText(l10n.gender, style: WesalTextStyles.header20Bold),

          SizedBox(height: 10),

          DropdownButtonFormField<String>(
            value: widget.gender,
            dropdownColor: theme.colors.whiteColor,
            focusColor: theme.colors.whiteColor,
            decoration: InputDecoration(
              filled: true,
              fillColor: theme.colors.whiteColor,
              border: OutlineInputBorder(
                borderSide: BorderSide(color: theme.colors.gray2),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: theme.colors.gray2),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: theme.colors.appPrimaryColor),
              ),

              contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            ),
            items: genderOptions.map((String gender) {
              return DropdownMenuItem<String>(
                value: gender,
                child: Text(GenderTranslations.getTranslation("en", gender)),
              );
            }).toList(),
            onChanged: (String? newValue) {
              newGender = newValue!;
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return l10n.please_select_gender;
              }
              return null;
            },
          ),
          SizedBox(height: 40),
          SizedBox(
            width: 5000,
            child: WesalButton(
              buttonLabel: l10n.submit,
              buttonCallBack: () {
                if (newGender != widget.gender ||
                    newdateOfBirth != widget.dateOfBirth ||
                    nameController.text != widget.name) {
                  if (nameController.text.isNotEmpty) {
                    widget.onSubmit(
                      newdateOfBirth,
                      nameController.text,
                      newGender,
                    );
                    Navigator.pop(context);
                  } else {
                    //TODO:Show Error Toast
                  }
                } else {
                  Navigator.pop(context);
                }
              },
              buttonColor: theme.colors.appPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
