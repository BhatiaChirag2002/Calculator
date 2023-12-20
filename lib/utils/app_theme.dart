import 'package:calculator/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppLightModeColors.backgroundColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppLightModeColors.backgroundColor,
        iconTheme: IconThemeData(color: AppLightModeColors.buttonInsideColor)),
  );
  final darkTheme = ThemeData.dark().copyWith(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppDarkModeColors.backgroundColor,
      appBarTheme: AppBarTheme(
        backgroundColor: AppDarkModeColors.backgroundColor,
          iconTheme:
              IconThemeData(color: AppDarkModeColors.buttonInsideColor)));
}

class ThemeService {
  final _getStorage = GetStorage();
  final storageKey = 'isDarkMode';

  ThemeMode getThemeMode() {
    return isSavedDarkMode() ? ThemeMode.dark : ThemeMode.light;
  }

  bool isSavedDarkMode() {
    return _getStorage.read(storageKey) ?? false;
  }

  void savedThemeMode(bool isDarkMode) {
    _getStorage.write(storageKey, isDarkMode);
  }

  void changedThemeMode() {
    Get.changeThemeMode(isSavedDarkMode() ? ThemeMode.light : ThemeMode.dark);
    savedThemeMode(!isSavedDarkMode());
  }
}
