import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
// import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:ping_wave/screens/auth_screen/auth_screen.dart';

import 'package:ping_wave/themes/app_theme.dart';
import 'package:ping_wave/themes/theme_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final ThemeService themeService = ThemeService();
  final initialTheme = await themeService.getThemeMode();

  FlutterError.onError = (details) {
    FlutterError.presentError(details);
    log(details.toString());
  };
  runApp(MyApp(initialTheme: initialTheme));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.initialTheme});
  final ThemeMode initialTheme;

  @override
  Widget build(BuildContext context) {
    // final initTheme = initialTheme == ThemeMode.dark
    //     ? AppTheme.darkTheme
    //     : AppTheme.lightTheme;

    return GetMaterialApp(
      transitionDuration: const Duration(seconds: 1),
      defaultTransition: Transition.native,
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      theme: AppTheme.darkTheme,
      home: const AuthScreen(),
    );

    // return ThemeProvider(
    //   duration: const Duration(milliseconds: 500),
    //   initTheme: AppTheme.lightTheme,
    //   builder: (p0, theme) {
    //     return GetMaterialApp(
    //       transitionDuration: const Duration(seconds: 1),
    //       defaultTransition: Transition.native,
    //       debugShowCheckedModeBanner: false,
    //       debugShowMaterialGrid: false,
    //       theme: AppTheme.lightTheme,
    //       home: const LoginScreen(),
    //     );
    //   },
    // );
  }
}
