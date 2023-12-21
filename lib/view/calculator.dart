import 'package:calculator/my_flutter_app_icons.dart';
import 'package:calculator/utils/app_colors.dart';
import 'package:calculator/utils/app_theme.dart';
import 'package:calculator/view/gst.dart';
import 'package:calculator/view/percentage.dart';
import 'package:calculator/widget/buttons.dart';
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Get.to(const Gst());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Theme.of(context).brightness == Brightness.light
                                ? AppLightModeColors.buttonColor
                                : AppDarkModeColors.buttonColor,
                        shape: const CircleBorder(),
                        padding: EdgeInsets.all(6.sp),
                      ),
                      child: Icon(
                              MyFlutterApp.gst,
                              color: Get.isDarkMode
                                  ? AppLightModeColors.buttonInsideColor
                                  : AppDarkModeColors.buttonInsideColor,
                              size: 22.sp,
                            )
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.to(const Percentage());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Theme.of(context).brightness == Brightness.light
                                ? AppLightModeColors.buttonColor
                                : AppDarkModeColors.buttonColor,
                        shape: const CircleBorder(),
                        padding: EdgeInsets.all(6.sp),
                      ),
                      child: Icon(
                              MyFlutterApp.marks,
                              color: Get.isDarkMode
                                  ? AppLightModeColors.buttonInsideColor
                                  : AppDarkModeColors.buttonInsideColor,
                              size: 22.sp,
                            )
                    ),

                  ],
                ),
              ),
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
      body: Column(children: [
        Expanded(
          child: SizedBox(
            width: 350.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '100+200',
                  style: Theme.of(context).textTheme.headlineLarge,
                  textAlign: TextAlign.end,
                ),
                Text(
                  '300',
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.end,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 30.h,
            bottom: 5.h,
          ),
          child: Container(
              height: 340.h,
              width: 360.w,
              decoration: BoxDecoration(
                  color: Theme.of(context).brightness == Brightness.light
                      ? AppLightModeColors.buttonBackgroundColor
                      : AppDarkModeColors.buttonBackgroundColor,
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30))),
              child: const Row(
                children: [
                  Column(
                    children: [
                      ButtonOperator(text: 'AC'),
                      ButtonNumber(text: '7'),
                      ButtonNumber(text: '4'),
                      ButtonNumber(text: '1'),
                      ButtonNumber(text: '00'),
                    ],
                  ),
                  Column(
                    children: [
                      ButtonOperator(text: '/'),
                      ButtonNumber(text: '8'),
                      ButtonNumber(text: '5'),
                      ButtonNumber(text: '2'),
                      ButtonNumber(text: '0'),
                    ],
                  ),
                  Column(
                    children: [
                      ButtonOperator(text: '×'),
                      ButtonNumber(text: '9'),
                      ButtonNumber(text: '6'),
                      ButtonNumber(text: '3'),
                      ButtonNumber(text: '.'),
                    ],
                  ),
                  Column(
                    children: [
                      ButtonBackspace(),
                      ButtonOperator(text: '+'),
                      ButtonNumber(text: '-'),
                      LongButton(text: '=',height: 115,)
                    ],
                  )
                ],
              )),
        ),
      ]),
    );
  }
}


