import 'package:flutter/material.dart';
import 'package:wesal/resources/hobbies_translations.dart';
import 'package:wesal/src/presentation/widgets/wesal_hobbies_builder/wesal_hobbies_builder.dart';
import 'package:wesal_ui_system/theme/wesal_theme.dart';
import 'package:wesal_ui_system/theme/wesal_theme_data.dart';
import 'package:wesal_ui_system/typography/text_style.dart';
import 'package:wesal_ui_system/typography/wesal_text.dart';

class HobbiesSelectionWidget extends StatelessWidget {
  const HobbiesSelectionWidget({
    super.key,
    required this.onHobbyAdded,
    required this.onHobbyRemoved,
    this.title = "Hobbies and Interests",
    this.subtitle = "Select two at least",
    this.showHeader = true,
    this.headerBackgroundColor,
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0),
    this.selectedHobbies,
    this.hasBackButton = false,
  });

  // Required callbacks
  final Function(String hobby) onHobbyAdded;
  final Function(String hobby) onHobbyRemoved;

  // Header configuration
  final String title;
  final String subtitle;
  final bool showHeader;
  final Color? headerBackgroundColor;

  // Layout configuration
  final EdgeInsetsGeometry padding;

  final List<String>? selectedHobbies;
  final bool hasBackButton;

  // Fixed configurations
  static const List<String> _categories = [
    'arts',
    'lifestyle',
    'sports',
    'food',
  ];
  static const Map<String, String> _categoryTitles = {
    'arts': 'Arts',
    'lifestyle': 'Lifestyle',
    'sports': 'Sports',
    'food': 'Food',
  };

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context);
    final theme = WesalTheme.of(context);

    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (showHeader) SizedBox(height: 30),
              if (showHeader) _buildHeader(theme),
              if (showHeader) const SizedBox(height: 20),
              Padding(
                padding: padding,
                child: Column(
                  children: _categories
                      .map(
                        (category) => Column(
                          children: [
                            _buildCategorySection(
                              category: category,
                              locale: locale,
                              theme: theme,
                            ),
                            const SizedBox(height: 40),
                          ],
                        ),
                      )
                      .toList(),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        hasBackButton
            ? Container(
                width: double.infinity,
                height: 30,
                color: theme.colors.whiteColor,
                child: Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: InkWell(
                      onTap: () => Navigator.of(context).pop(),
                      child: Icon(
                        Icons.arrow_back,
                        color: theme.colors.gray1,
                        size: 24,
                      ),
                    ),
                  ),
                ),
              )
            : SizedBox.shrink(),
      ],
    );
  }

  Widget _buildHeader(WesalThemeData theme) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              WesalText(
                title,
                textColor: theme.colors.gray1,
                style: WesalTextStyles.header20Bold,
              ),
              WesalText(
                subtitle,
                textColor: theme.colors.gray2,
                style: WesalTextStyles.smallText12,
              ),
              SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCategorySection({
    required String category,
    required Locale locale,
    required WesalThemeData theme,
  }) {
    return Column(
      children: [
        WesalText(
          _categoryTitles[category] ?? category,
          textColor: theme.colors.gray1,
          style: WesalTextStyles.header20Bold,
        ),
        HobbiesInterestsBuilder(
          selectedHobbies: selectedHobbies ?? [],
          language: locale.languageCode,
          hobbiesList: HobbiesTranslations.getHobbies(category),
          onHobbiesAdded: onHobbyAdded,
          onHobbiesRemoved: onHobbyRemoved,
          isExpandable: true,
          alignment: CrossAxisAlignment.center,
        ),
      ],
    );
  }
}
