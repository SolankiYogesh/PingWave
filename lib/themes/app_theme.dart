import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ping_wave/helpers/app_colors.dart';

class AppTheme {
  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      primary: AppColors.secondary, // Adjust if needed
      background: AppColors.dark,
      surface: AppColors.dark,
      error: Colors.redAccent, // You can customize error color
    ),
    scaffoldBackgroundColor: AppColors.dark,
    textTheme: TextTheme(
      titleSmall: TextStyle(color: AppColors.white), // For small titles
      titleMedium: TextStyle(color: AppColors.grey), // For medium titles
      titleLarge: TextStyle(color: AppColors.black), // For large titles
    ),
    dividerTheme: DividerThemeData(color: AppColors.grey),
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: AppColors.dark),
      backgroundColor: AppColors.dark, // Set the app bar background color
      titleTextStyle: TextStyle(color: AppColors.white, fontSize: 20),
    ),
  );

  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      primary: AppColors.secondary, // Adjust if needed
      background: AppColors.white,
      surface: AppColors.white,
      error: Colors.redAccent, // You can customize error color
    ),
    scaffoldBackgroundColor: AppColors.white,
    textTheme: TextTheme(
      titleSmall: TextStyle(color: AppColors.black), // For small titles
      titleMedium: TextStyle(color: AppColors.grey), // For medium titles
      titleLarge: TextStyle(color: AppColors.grey), // For large titles
    ),
    dividerTheme: DividerThemeData(color: AppColors.grey),
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: AppColors.white),
      backgroundColor: AppColors.white, // Set the app bar background color
      titleTextStyle: TextStyle(color: AppColors.black, fontSize: 20),
    ),
  );
}
