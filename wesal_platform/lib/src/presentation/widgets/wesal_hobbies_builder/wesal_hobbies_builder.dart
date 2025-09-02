import 'dart:math';
import 'package:flutter/material.dart';
import 'package:wesal/l10n/gen/wesal_localization.gen.dart';
import 'package:wesal/resources/hobbies_translations.dart';
import 'wesal_hobbies_container.dart';
import 'package:wesal_ui_system/theme/wesal_theme.dart' show WesalTheme;
import 'package:wesal_ui_system/typography/text_style.dart';
import 'package:wesal_ui_system/typography/wesal_text.dart';

// Simple model class to replace HobbieModel
class SimpleHobbyModel {
  final String key;
  final String hobbie;
  bool isSelected;

  SimpleHobbyModel({
    required this.key,
    required this.hobbie,
    this.isSelected = false,
  });
}

class HobbiesInterestsBuilder extends StatefulWidget {
  const HobbiesInterestsBuilder({
    super.key,
    this.onHobbiesAdded,
    this.onHobbiesRemoved,
    required this.hobbiesList,
    this.isExpandable = true,
    this.isTileSelectable = true,
    this.stopSelection = false,
    this.alignment = CrossAxisAlignment.start,
    this.selectedHobbies = const [],
    required this.language,
    this.selectedColor,
    this.borderColor,
  });

  final List<String> hobbiesList;
  final bool? isTileSelectable;
  final Function(String selectedValue)? onHobbiesAdded;
  final Function(String selectedValue)? onHobbiesRemoved;
  final bool? isExpandable;
  final bool? stopSelection;
  final CrossAxisAlignment? alignment;
  final List<String> selectedHobbies;
  final String language;
  final Color? selectedColor;
  final Color? borderColor;

  @override
  State<HobbiesInterestsBuilder> createState() =>
      _HobbiesInterestsBuilderState();
}

class _HobbiesInterestsBuilderState extends State<HobbiesInterestsBuilder> {
  bool _isExpanded = false;
  List<SimpleHobbyModel> _hobbies = [];

  @override
  void initState() {
    super.initState();
    _initializeHobbies();
  }

  void _initializeHobbies() {
    _hobbies = widget.hobbiesList.map((hobby) {
      return SimpleHobbyModel(
        key: hobby,
        hobbie: HobbiesTranslations.getTranslationAuto(hobby, widget.language),
        isSelected: widget.selectedHobbies.contains(hobby),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final theme = WesalTheme.of(context);
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
      child: Column(
        crossAxisAlignment: widget.alignment!,
        mainAxisSize: MainAxisSize.max,
        children: [
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 3,
            runSpacing: 10,
            children: [
              for (
                int index = 0;
                index <
                    (_isExpanded || !widget.isExpandable!
                        ? _hobbies.length
                        : (_hobbies.length > 6 ? 6 : _hobbies.length));
                index++
              )
                HobbiesInterestsContainer<SimpleHobbyModel>(
                  selectedColor: widget.selectedColor,
                  borderColor: widget.borderColor,
                  hobbieModel: _hobbies[index],
                  onAdd: (value) {
                    setState(() {
                      _hobbies[index].isSelected = true;
                    });
                    widget.onHobbiesAdded?.call(value);
                  },
                  onRemove: (value) {
                    setState(() {
                      _hobbies[index].isSelected = false;
                    });
                    widget.onHobbiesRemoved?.call(value);
                  },
                  isSelectable: widget.isTileSelectable!,
                  stopSelection: widget.stopSelection,
                ),
            ],
          ),
          widget.isExpandable! ? const SizedBox(height: 15) : Container(),
          widget.isExpandable!
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      _isExpanded = !_isExpanded;
                    });
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      WesalText(
                        _isExpanded
                            ? WesalLocalization.of(context).show_less
                            : WesalLocalization.of(context).show_more,
                        style: WesalTextStyles.secondary14,
                        textColor: theme.colors.gray2,
                      ),
                      Transform.rotate(
                        angle: _isExpanded ? pi * 1 : pi * 0,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.keyboard_arrow_down,

                            color: Color(0xFF757575),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
