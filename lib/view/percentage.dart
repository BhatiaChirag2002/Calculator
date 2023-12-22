import 'package:calculator/controller/percentage_controller.dart';
import 'package:calculator/utils/app_colors.dart';
import 'package:calculator/widget/appbar.dart';
import 'package:calculator/widget/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Percentage extends StatefulWidget {
  const Percentage({super.key});

  @override
  State<Percentage> createState() => _PercentageState();
}

class _PercentageState extends State<Percentage> {
  @override
  Widget build(BuildContext context) {
    PercentageController percentageController = Get.put(PercentageController());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const AppBarRow(
          calculatorName: 'Percentage',
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.w, right: 6.w, top: 5.h),
            child: Container(
              height: 40.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                      color: Theme.of(context).brightness == Brightness.light
                          ? AppLightModeColors.buttonColor
                          : AppDarkModeColors.buttonColor,
                      width: 2.w)),
              child: Row(
                children: [
                  Text(
                    ' Total Marks: ',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  SizedBox(
                    width: 210.w,
                    child: TextFormField(
                      controller:
                          percentageController.totalMarksController.value,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.end,
                      style: Theme.of(context).textTheme.displayMedium,
                      cursorColor:
                          Theme.of(context).brightness == Brightness.light
                              ? AppLightModeColors.buttonColor
                              : AppDarkModeColors.buttonColor,
                      cursorHeight: 22.sp,
                      decoration:
                          const InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.w, right: 6.w, top: 10.h),
            child: Container(
              height: 40.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                      color: Theme.of(context).brightness == Brightness.light
                          ? AppLightModeColors.buttonColor
                          : AppDarkModeColors.buttonColor,
                      width: 2.w)),
              child: Row(
                children: [
                  Text(
                    ' Scored Marks: ',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  SizedBox(
                    width: 190.w,
                    child: TextFormField(
                      controller:
                          percentageController.scoredMarksController.value,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.end,
                      style: Theme.of(context).textTheme.displayMedium,
                      cursorColor:
                          Theme.of(context).brightness == Brightness.light
                              ? AppLightModeColors.buttonColor
                              : AppDarkModeColors.buttonColor,
                      cursorHeight: 22.sp,
                      decoration:
                          const InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const CalculateButton(),
          Padding(
            padding: EdgeInsets.only(left: 6.w, right: 6.w, top: 10.h),
            child: Container(
              height: 40.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                      color: Theme.of(context).brightness == Brightness.light
                          ? AppLightModeColors.buttonColor
                          : AppDarkModeColors.buttonColor,
                      width: 2.w)),
              child: Row(
                children: [
                  Text(
                    ' Percentage: ',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  SizedBox(
                      width: 190.w,
                      child: Obx(() => Text(
                            '${percentageController.percentage.value.toStringAsFixed(1)}%',
                            style: Theme.of(context).textTheme.labelSmall,
                          ))),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.w, right: 6.w, top: 10.h),
            child: Container(
              height: 40.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                      color: Theme.of(context).brightness == Brightness.light
                          ? AppLightModeColors.buttonColor
                          : AppDarkModeColors.buttonColor,
                      width: 2.w)),
              child: Row(
                children: [
                  Text(
                    ' CGPA: ',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  SizedBox(
                      width: 190.w,
                      child: Obx(() => Text(
                            percentageController.cgpa.value.toStringAsFixed(1),
                            style: Theme.of(context).textTheme.labelSmall,
                          ))),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
