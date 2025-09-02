import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wesal/src/di/di_init.dart';
import 'package:wesal/src/presentation/settings/bloc/settings_bloc.dart';
import 'package:wesal/src/presentation/settings/widgets/account_logout_and_deletion.dart';
import 'package:wesal/src/presentation/settings/widgets/profile_section.dart';
import 'package:wesal/src/presentation/settings/widgets/settings_section.dart';
import 'package:wesal_ui_system/theme/wesal_theme.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = WesalTheme.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocProvider(
        create: (context) =>
            diContainer<SettingsBloc>()
              ..add(const SettingsEvent.getCurrentUserInfo()),
        child: BlocBuilder<SettingsBloc, SettingsState>(
          buildWhen: (previous, current) =>
              previous.processState != current.processState,
          builder: (context, state) {
            return state.processState.map(
              loading: (_) => const Center(child: CircularProgressIndicator()),
              success: (_) {
                return Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                    decoration: BoxDecoration(
                      color: theme.colors.gray5,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: SafeArea(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            ProfileSection(),
                            const SettingsSection(),
                            const SizedBox(height: 20),
                            AccountLogoutAndDeletion(),
                            SizedBox(height: 100),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              error: (error) {
                return Center(
                  child: Text(
                    error.message,
                    style: const TextStyle(color: Colors.red, fontSize: 16),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
