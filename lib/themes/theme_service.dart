import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

class ThemeService {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  final _key = 'isDarkMode';

  // Add a private variable to cache the current theme mode state
  bool? _isDarkModeCached;

  ThemeService() {
    // Load the initial theme mode on instantiation
    _loadInitialThemeMode();
  }

  Future<void> _loadInitialThemeMode() async {
    final prefs = await _prefs;
    _isDarkModeCached = prefs.getBool(_key);
  }

  Future<ThemeMode> getThemeMode() async {
    // Return cached value if available
    if (_isDarkModeCached != null) {
      return _isDarkModeCached! ? ThemeMode.dark : ThemeMode.light;
    }

    // Fallback to default if cached value is null
    return ThemeMode.dark;
  }

  Future<void> setThemeMode(ThemeMode themeMode) async {
    final prefs = await _prefs;
    await prefs.setBool(_key, themeMode == ThemeMode.dark);

    // Update the cached value
    _isDarkModeCached = themeMode == ThemeMode.dark;

    Get.changeThemeMode(themeMode);
  }

  void switchTheme() async {
    final currentThemeMode = await getThemeMode();
    final newThemeMode =
        currentThemeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    await setThemeMode(newThemeMode);
  }

  // Make isDarkMode synchronous
  bool isDarkMode() {
    // Return the cached value or default to dark mode if it's not initialized
    return _isDarkModeCached ?? true; // Assuming default is dark mode
  }
}
