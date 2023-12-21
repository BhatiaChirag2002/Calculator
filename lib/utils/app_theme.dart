import 'package:calculator/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(
    brightness: Brightness.light,
    textTheme: TextTheme(
        headlineLarge: TextStyle(
          fontSize: 40.sp,
          color: AppLightModeColors.textColor,
          fontFamily: 'one',
        ),
        headlineMedium: TextStyle(
          fontSize: 35.sp,
          color: AppLightModeColors.textColor,
          fontFamily: 'one',
        ),
        headlineSmall: TextStyle(
          fontSize: 22.sp,
          color: AppLightModeColors.textColor,
          fontFamily: 'one',
        ),
        bodyLarge: TextStyle(
            fontSize: 30.sp,
            color: AppLightModeColors.buttonColor,
            fontWeight: FontWeight.w600),
        bodyMedium: TextStyle(
            fontSize: 30.sp,
            color: AppLightModeColors.textColor,
            fontWeight: FontWeight.w600),
        bodySmall: TextStyle(
            fontSize: 30.sp,
            color: AppLightModeColors.buttonInsideColor,
            fontWeight: FontWeight.w600),
        displaySmall: TextStyle(
            fontSize: 15.sp,
            color: AppLightModeColors.buttonInsideColor,
            fontWeight: FontWeight.w600),
        displayMedium: TextStyle(
            fontSize: 20.sp,
            color: AppLightModeColors.textColor,
            fontWeight: FontWeight.w600),
        labelSmall:
        TextStyle(fontSize: 20.sp, color: AppLightModeColors.textColor)),
    scaffoldBackgroundColor: AppLightModeColors.backgroundColor,
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: AppLightModeColors.buttonInsideColor)),
  );
  final darkTheme = ThemeData.dark().copyWith(
      brightness: Brightness.dark,
      textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontSize: 40.sp,
            color: AppDarkModeColors.textColor,
            fontFamily: 'one',
          ),
          headlineMedium: TextStyle(
            fontSize: 35.sp,
            color: AppDarkModeColors.textColor,
            fontFamily: 'one',
          ),
          headlineSmall: TextStyle(
            fontSize: 22.sp,
            color: AppDarkModeColors.textColor,
            fontFamily: 'one',
          ),
          bodyLarge: TextStyle(
              fontSize: 30.sp,
              color: AppDarkModeColors.buttonColor,
              fontWeight: FontWeight.w600),
          bodyMedium: TextStyle(
              fontSize: 30.sp,
              color: AppDarkModeColors.textColor,
              fontWeight: FontWeight.w600),
          bodySmall: TextStyle(
              fontSize: 30.sp,
              color: AppDarkModeColors.buttonInsideColor,
              fontWeight: FontWeight.w600),
          displaySmall: TextStyle(
              fontSize: 15.sp,
              color: AppDarkModeColors.buttonInsideColor,
              fontWeight: FontWeight.w600),
          displayMedium: TextStyle(
              fontSize: 20.sp,
              color: AppDarkModeColors.textColor,
              fontWeight: FontWeight.w600),
          labelSmall:
          TextStyle(fontSize: 20.sp, color: AppDarkModeColors.textColor)),
      scaffoldBackgroundColor: AppDarkModeColors.backgroundColor,
      appBarTheme: AppBarTheme(
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
