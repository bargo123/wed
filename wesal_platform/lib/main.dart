import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:wesal/auth_handler.dart';
import 'package:wesal/firebase_options.dart';
import 'package:wesal/l10n/gen/wesal_localization.gen.dart';
import 'package:wesal/src/di/di_init.dart';
import 'package:wesal/src/presentation/navigation/app_routes.dart';
import 'package:wesal/src/presentation/navigation/routes_constants.dart';

import 'package:wesal_ui_system/wesal_ui_system.dart';

final GlobalKey<NavigatorState> globalNavigatorKey =
    GlobalKey<NavigatorState>();

FToast fToast = FToast();

void main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  configureDependencies();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isLoading = true;
  bool _isAuthenticated = false;

  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    try {
      // Small delay to ensure smooth transition
      await Future.delayed(const Duration(milliseconds: 100));

      final canSignIn = await diContainer<AuthHandler>().canUserSignin();

      if (mounted) {
        setState(() {
          _isAuthenticated = canSignIn;
          _isLoading = false;
        });
        print("Authentication check complete. Authenticated: $canSignIn");
      }
    } catch (e) {
      print("Error during initialization: $e");
      if (mounted) {
        setState(() {
          _isAuthenticated = false;
          _isLoading = false;
        });
      }
    } finally {
      FlutterNativeSplash.remove();
    }
  }

  Widget _buildLoadingScreen() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: globalNavigatorKey,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 20),
              Text('Loading...', style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
      supportedLocales: WesalLocalization.supportedLocales,
      localizationsDelegates: WesalLocalization.localizationsDelegates,
      locale: const Locale('en', ''),
      builder: (context, child) => WesalTheme(data: appTheme, child: child!),
    );
  }

  Widget _buildMainApp() {
    final initialRoute = _isAuthenticated
        ? RoutesConstants.navBar
        : RoutesConstants.signinScreen;

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      key: ValueKey(_isAuthenticated), // Force rebuild when auth state changes
      initialRoute: initialRoute,
      routes: routes,
      supportedLocales: WesalLocalization.supportedLocales,
      localizationsDelegates: WesalLocalization.localizationsDelegates,
      locale: const Locale('en', ''),
      builder: (context, child) {
        return WesalTheme(data: appTheme, child: child!);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: _isLoading ? _buildLoadingScreen() : _buildMainApp(),
    );
  }
}
