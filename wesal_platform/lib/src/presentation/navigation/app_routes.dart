import 'package:flutter/material.dart';
import 'package:wesal/src/presentation/bottom_nav_bar/bottom_nav_bar_screen.dart';
import 'package:wesal/src/presentation/home/home_screen.dart';
import 'package:wesal/src/presentation/login/login_screen.dart';
import 'package:wesal/src/presentation/navigation/routes_constants.dart';
import 'package:wesal/src/presentation/profile/profile_screen.dart';
import 'package:wesal/src/presentation/profile_details/profile_details_screen.dart';
import 'package:wesal/src/presentation/singup/signup_screen.dart';

Map<String, WidgetBuilder> routes = {
  RoutesConstants.signinScreen: (context) => const SigninScreen(),
  RoutesConstants.regester: (context) => const RegisterScreen(),
  RoutesConstants.homeScreen: (context) => const HomeScreen(),
  RoutesConstants.navBar: (context) => const BottomNavBarScreen(),
  RoutesConstants.profile: (context) => ProfileScreen(),
  RoutesConstants.profileDetails: (context) {
    final args = ModalRoute.of(context)?.settings.arguments as String?;
    return ProfileDetailsScreen(id: args ?? "");
  },
};
