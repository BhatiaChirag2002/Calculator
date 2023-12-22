import 'package:calculator/controller/calculator_controller.dart';
import 'package:calculator/controller/gst_controller.dart';
import 'package:calculator/controller/percentage_controller.dart';
import 'package:calculator/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

//*******************Calculator Buttons****************************
class ButtonNumber extends StatelessWidget {
  final String text;
  const ButtonNumber({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    CalculatorController calculatorController = Get.put(CalculatorController());
    return Padding(
      padding: EdgeInsets.only(left: 13.w, top: 15.h, right: 13.w),
      child: Container(
        height: 50.h,
        width: 50.h,
        decoration: BoxDecoration(
            color: Theme.of(context).brightness == Brightness.light
                ? AppLightModeColors.buttonNumColor
                : AppDarkModeColors.buttonNumColor,
            borderRadius: BorderRadius.circular(100.r),
            boxShadow: [
              BoxShadow(
                  spreadRadius: 2,
                  blurRadius: 4,
                  color: Theme.of(context).brightness == Brightness.light
                      ? Colors.black.withOpacity(0.3)
                      : Colors.white.withOpacity(0.3),
                  offset: const Offset(4.0, 5.0))
            ]),
        child: ElevatedButton(
            onPressed: () {
              calculatorController.onButtonPress(text);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).brightness == Brightness.light
                  ? AppLightModeColors.buttonNumColor
                  : AppDarkModeColors.buttonNumColor,
              shape: const CircleBorder(),
              padding: EdgeInsets.all(8.sp),
            ),
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium,
            )),
      ),
    );
  }
}

class ButtonOperator extends StatelessWidget {
  final String text;
  const ButtonOperator({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    CalculatorController calculatorController = Get.put(CalculatorController());
    return Padding(
      padding: EdgeInsets.only(left: 13.w, top: 15.h, right: 13.w),
      child: Container(
        height: 50.h,
        width: 50.h,
        decoration: BoxDecoration(
            color: Theme.of(context).brightness == Brightness.light
                ? AppLightModeColors.buttonNumColor
                : AppDarkModeColors.buttonNumColor,
            borderRadius: BorderRadius.circular(100.r),
            boxShadow: [
              BoxShadow(
                  spreadRadius: 2,
                  blurRadius: 4,
                  color: Theme.of(context).brightness == Brightness.light
                      ? Colors.black.withOpacity(0.3)
                      : Colors.white.withOpacity(0.3),
                  offset: const Offset(4.0, 5.0))
            ]),
        child: ElevatedButton(
            onPressed: () {
              calculatorController.onButtonPress(text);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).brightness == Brightness.light
                  ? AppLightModeColors.buttonNumColor
                  : AppDarkModeColors.buttonNumColor,
              shape: const CircleBorder(),
              padding: EdgeInsets.all(8.sp),
            ),
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyLarge,
            )),
      ),
    );
  }
}

class ButtonBackspace extends StatelessWidget {
  const ButtonBackspace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    CalculatorController calculatorController = Get.put(CalculatorController());
    return Padding(
      padding: EdgeInsets.only(left: 13.w, top: 15.h, right: 13.w),
      child: Container(
        height: 50.h,
        width: 50.h,
        decoration: BoxDecoration(
            color: Theme.of(context).brightness == Brightness.light
                ? AppLightModeColors.buttonNumColor
                : AppDarkModeColors.buttonNumColor,
            borderRadius: BorderRadius.circular(100.r),
            boxShadow: [
              BoxShadow(
                  spreadRadius: 2,
                  blurRadius: 4,
                  color: Theme.of(context).brightness == Brightness.light
                      ? Colors.black.withOpacity(0.3)
                      : Colors.white.withOpacity(0.3),
                  offset: const Offset(4.0, 5.0))
            ]),
        child: ElevatedButton(
            onPressed: () {
              calculatorController.onButtonPress('<');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).brightness == Brightness.light
                  ? AppLightModeColors.buttonNumColor
                  : AppDarkModeColors.buttonNumColor,
              shape: const CircleBorder(),
              padding: EdgeInsets.all(8.sp),
            ),
            child: Icon(
              Icons.backspace_outlined,
              size: 25.sp,
              color: Theme.of(context).brightness == Brightness.light
                  ? AppLightModeColors.buttonColor
                  : AppDarkModeColors.buttonColor,
            )),
      ),
    );
  }
}

//*******************Gst Calculator Buttons************************
class ButtonGSTPercentage extends StatelessWidget {
  final int percentage;
  const ButtonGSTPercentage({
    super.key,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    GstController gstController = Get.put(GstController());
    return Padding(
      padding: EdgeInsets.only(left: 9.w, top: 15.h, right: 9.w, bottom: 15.h),
      child: Container(
        height: 40.h,
        width: 40.h,
        decoration: BoxDecoration(
            color: Theme.of(context).brightness == Brightness.light
                ? AppLightModeColors.buttonColor
                : AppDarkModeColors.buttonColor,
            borderRadius: BorderRadius.circular(100.r),
            boxShadow: [
              BoxShadow(
                  spreadRadius: 2,
                  blurRadius: 4,
                  color: Theme.of(context).brightness == Brightness.light
                      ? Colors.black.withOpacity(0.3)
                      : Colors.white.withOpacity(0.3),
                  offset: const Offset(4.0, 5.0))
            ]),
        child: ElevatedButton(
          onPressed: () {
            gstController.percentageButtonPress(percentage);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).brightness == Brightness.light
                ? AppLightModeColors.buttonColor
                : AppDarkModeColors.buttonColor,
            shape: const CircleBorder(),
            padding: EdgeInsets.all(4.sp),
          ),
          child: Center(
              child: Text(
            '$percentage%',
            style: Theme.of(context).textTheme.displaySmall,
          )),
        ),
      ),
    );
  }
}

class GstButtonNumber extends StatelessWidget {
  final String text;
  const GstButtonNumber({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    GstController gstController = Get.put(GstController());
    return Padding(
      padding: EdgeInsets.only(left: 13.w, top: 15.h, right: 13.w),
      child: Container(
        height: 50.h,
        width: 50.h,
        decoration: BoxDecoration(
            color: Theme.of(context).brightness == Brightness.light
                ? AppLightModeColors.buttonNumColor
                : AppDarkModeColors.buttonNumColor,
            borderRadius: BorderRadius.circular(100.r),
            boxShadow: [
              BoxShadow(
                  spreadRadius: 2,
                  blurRadius: 4,
                  color: Theme.of(context).brightness == Brightness.light
                      ? Colors.black.withOpacity(0.3)
                      : Colors.white.withOpacity(0.3),
                  offset: const Offset(4.0, 5.0))
            ]),
        child: ElevatedButton(
            onPressed: () {
              gstController.numbersButtonPress(text);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).brightness == Brightness.light
                  ? AppLightModeColors.buttonNumColor
                  : AppDarkModeColors.buttonNumColor,
              shape: const CircleBorder(),
              padding: EdgeInsets.all(8.sp),
            ),
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium,
            )),
      ),
    );
  }
}

//*******************Percentage Calculator Buttons*****************
class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    PercentageController percentageController = Get.put(PercentageController());
    return Padding(
      padding: EdgeInsets.only(left: 40.w, right: 40.w, top: 10.h),
      child: Container(
        height: 40.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: Theme.of(context).brightness == Brightness.light
              ? AppLightModeColors.buttonColor
              : AppDarkModeColors.buttonColor,
        ),
        child: ElevatedButton(
          onPressed: () {
            percentageController.calculateButton();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).brightness == Brightness.light
                ? AppLightModeColors.buttonColor
                : AppDarkModeColors.buttonColor,
            padding: EdgeInsets.all(8.sp),
          ),
          child: Center(
            child: Text(
              'Calculate',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        ),
      ),
    );
  }
}

//*******************Common Buttons********************************
class LongButton extends StatelessWidget {
  final double height;
  final Function() onTap;
  final Widget child;
  const LongButton({
    super.key,
    required this.height,
    required this.onTap,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 13.w, top: 15.h, right: 13.w),
      child: Container(
        height: height.h,
        width: 50.h,
        decoration: BoxDecoration(
            color: Theme.of(context).brightness == Brightness.light
                ? AppLightModeColors.buttonColor
                : AppDarkModeColors.buttonColor,
            borderRadius: BorderRadius.circular(100.r),
            boxShadow: [
              BoxShadow(
                  spreadRadius: 2,
                  blurRadius: 4,
                  color: Theme.of(context).brightness == Brightness.light
                      ? Colors.black.withOpacity(0.3)
                      : Colors.white.withOpacity(0.3),
                  offset: const Offset(4.0, 5.0))
            ]),
        child: ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).brightness == Brightness.light
                  ? AppLightModeColors.buttonColor
                  : AppDarkModeColors.buttonColor,
              padding: EdgeInsets.all(8.sp),
            ),
            child: child),
      ),
    );
  }
}
