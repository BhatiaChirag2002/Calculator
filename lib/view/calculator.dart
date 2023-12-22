import 'package:calculator/controller/calculator_controller.dart';
import 'package:calculator/utils/my_flutter_app_icons.dart';
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
    CalculatorController calculatorController = Get.put(CalculatorController());
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
                        )),
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
                        )),
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
        Spacer(),
        SizedBox(
          width: 350.w,
          child: Obx(() => Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    calculatorController.input.value,
                    style: Theme.of(context).textTheme.headlineLarge,
                    textAlign: TextAlign.end,
                  ),
                  Text(
                    calculatorController.output.value,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.end,
                  ),
                ],
              )),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 10.h,
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
              child: Row(
                children: [
                  const Column(
                    children: [
                      ButtonOperator(text: 'AC'),
                      ButtonNumber(text: '7'),
                      ButtonNumber(text: '4'),
                      ButtonNumber(text: '1'),
                      ButtonNumber(text: '00'),
                    ],
                  ),
                  const Column(
                    children: [
                      ButtonOperator(text: '/'),
                      ButtonNumber(text: '8'),
                      ButtonNumber(text: '5'),
                      ButtonNumber(text: '2'),
                      ButtonNumber(text: '0'),
                    ],
                  ),
                  const Column(
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
                      const ButtonBackspace(),
                      const ButtonOperator(text: '+'),
                      const ButtonNumber(text: '-'),
                      LongButton(
                        height: 115,
                        child: Text(
                          '=',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        onTap: () {
                          calculatorController.onButtonPress('=');
                        },
                      )
                    ],
                  )
                ],
              )),
        ),
      ]),
    );
  }
}
