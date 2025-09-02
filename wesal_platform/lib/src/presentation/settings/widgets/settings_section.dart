import 'package:flutter/material.dart';
import 'package:wesal/l10n/gen/wesal_localization.gen.dart';
import 'package:wesal/src/presentation/settings/widgets/settings_section_title.dart';
import 'package:wesal/src/presentation/settings/widgets/settings_tile.dart';

class SettingsSection extends StatelessWidget {
  const SettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = WesalLocalization.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SettingsSectionTitle(l10n.app_settings),
        SettingsTile(
          title: l10n.change_language,
          trailing: Text("English", style: TextStyle(color: Colors.grey)),
        ),
        SettingsTile(
          title: l10n.notifications,
          trailing: Icon(Icons.chevron_right),
        ),

        SettingsSectionTitle(l10n.about),
        SettingsTile(
          title: l10n.terms_and_conditions,
          trailing: Icon(Icons.chevron_right),
        ),
        SettingsTile(
          title: l10n.privacy_policy,
          trailing: Icon(Icons.chevron_right),
        ),
      ],
    );
  }
}
