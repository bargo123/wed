import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wesal/src/di/di_init.dart';
import 'package:wesal/src/presentation/login/bloc/login_bloc.dart';

import 'package:wesal/src/presentation/login/widget/app_logo.dart';
import 'package:wesal/src/presentation/login/widget/app_title.dart';
import 'package:wesal/src/presentation/login/widget/signin_options.dart';
import 'package:wesal/src/presentation/navigation/routes_constants.dart';
import 'package:wesal_ui_system/wesal_ui_system.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = WesalTheme.of(context);
    return BlocProvider(
      create: (context) => diContainer<LoginBloc>(),
      child: BlocListener<LoginBloc, LoginState>(
        listenWhen: (previous, current) =>
            previous.proccessState != current.proccessState,
        listener: (context, state) {
          state.proccessState.mapOrNull(
            success: (success) {
              if (success.hasAccount) {
                print("hihiuhhiuiuhih");
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  RoutesConstants.navBar,
                  (route) => false,
                );
              } else {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  RoutesConstants.regester,
                  (route) => false,
                );
              }
            },
          );
        },
        child: Scaffold(
          backgroundColor: theme.colors.whiteColor,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 20),
                AppLogo(),
                AppTitle(),
                SigninOptions(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
