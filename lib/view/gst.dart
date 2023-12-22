import 'package:calculator/controller/gst_controller.dart';
import 'package:calculator/utils/app_colors.dart';
import 'package:calculator/widget/appbar.dart';
import 'package:calculator/widget/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Gst extends StatefulWidget {
  const Gst({super.key});

  @override
  State<Gst> createState() => _GstState();
}

class _GstState extends State<Gst> {
  @override
  Widget build(BuildContext context) {
    GstController gstController = Get.put(GstController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: const AppBarRow(
          calculatorName: 'GST',
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
                    ' Amount: ',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  SizedBox(
                    width: 248.w,
                    child: TextFormField(
                      controller: gstController.amountController.value,
                      readOnly: true,
                      showCursor: true,
                      autofocus: true,
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
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonGSTPercentage(percentage: 3),
              ButtonGSTPercentage(percentage: 5),
              ButtonGSTPercentage(percentage: 12),
              ButtonGSTPercentage(percentage: 18),
              ButtonGSTPercentage(percentage: 28),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.w, right: 6.w),
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
                      ' Final Price: ',
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    Obx(
                      () => Text(
                        gstController.finalPrice.value.toStringAsFixed(2),
                        textAlign: TextAlign.end,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    )
                  ],
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.w, top: 10.h, right: 6.w),
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
                      ' Total GST: ',
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    Obx(
                      () => Text(
                        ' ${gstController.gstAmount.value.toStringAsFixed(2)}',
                        textAlign: TextAlign.end,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    )
                  ],
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.w, top: 10.h, right: 6.w),
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
                      ' CGST/SGST: ',
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    Obx(
                      () => Text(
                        ' ${gstController.cGSTsGSTPrice.value.toStringAsFixed(2)}',
                        textAlign: TextAlign.end,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    )
                  ],
                )),
          ),
          const Spacer(),
          Container(
            height: 275.h,
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
                    GstButtonNumber(text: '7'),
                    GstButtonNumber(text: '4'),
                    GstButtonNumber(text: '1'),
                    GstButtonNumber(text: '00'),
                  ],
                ),
                const Column(
                  children: [
                    GstButtonNumber(text: '8'),
                    GstButtonNumber(text: '5'),
                    GstButtonNumber(text: '2'),
                    GstButtonNumber(text: '0'),
                  ],
                ),
                const Column(
                  children: [
                    GstButtonNumber(text: '9'),
                    GstButtonNumber(text: '6'),
                    GstButtonNumber(text: '3'),
                    GstButtonNumber(text: '.'),
                  ],
                ),
                Column(
                  children: [
                    LongButton(
                      height: 115,
                      onTap: () {
                        gstController.numbersButtonPress('AC');
                      },
                      child: Text(
                        'AC',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                    LongButton(
                      height: 115,
                      onTap: () {
                        gstController.numbersButtonPress('<');
                      },
                      child: Icon(
                        Icons.backspace_outlined,
                        size: 25.sp,
                        color: Theme.of(context).brightness == Brightness.light
                            ? AppLightModeColors.buttonInsideColor
                            : AppDarkModeColors.buttonInsideColor,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
