import 'package:calculator/utils/app_colors.dart';
import 'package:calculator/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 35.h,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  ThemeService().changedThemeMode();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Theme.of(context).brightness == Brightness.light
                          ? AppLightModeColors.buttonColor
                          : AppDarkModeColors.buttonColor,
                  shape: const CircleBorder(),
                  padding: EdgeInsets.all(6.sp),
                ),
                child: Get.isDarkMode
                    ? Icon(
                        Icons.light_mode,
                        color: AppLightModeColors.buttonInsideColor,
                        size: 22.sp,
                      )
                    : Icon(
                        Icons.dark_mode,
                        color: AppDarkModeColors.buttonInsideColor,
                        size: 22.sp,
                      ),
              )
            ],
          )),
    );
  }
}
