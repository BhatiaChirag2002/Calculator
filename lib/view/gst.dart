import 'package:calculator/utils/app_colors.dart';
import 'package:calculator/widget/appbar.dart';
import 'package:calculator/widget/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Gst extends StatefulWidget {
  const Gst({super.key});

  @override
  State<Gst> createState() => _GstState();
}

class _GstState extends State<Gst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: const AppBarRow(calculatorName: 'GST',),
      ),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.only(left: 6.w, right: 6.w,top: 5.h),
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
                    decoration: const InputDecoration(border: InputBorder.none),
                  ),
                ),

              ],
            ),
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonGSTPercentage(percentage: '3'),
            ButtonGSTPercentage(percentage: '5'),
            ButtonGSTPercentage(percentage: '12'),
            ButtonGSTPercentage(percentage: '18'),
            ButtonGSTPercentage(percentage: '28'),
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
                  Text(
                    '0.0',
                    textAlign: TextAlign.end,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
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
                  Text(
                    '0.0',
                    textAlign: TextAlign.end,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
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
                  topRight: Radius.circular(30), topLeft: Radius.circular(30))),
          child: const Row(
            children: [
              Column(
                children: [
                  ButtonNumber(text: '7'),
                  ButtonNumber(text: '4'),
                  ButtonNumber(text: '1'),
                  ButtonNumber(text: '00'),
                ],
              ),
              Column(
                children: [
                  ButtonNumber(text: '8'),
                  ButtonNumber(text: '5'),
                  ButtonNumber(text: '2'),
                  ButtonNumber(text: '0'),
                ],
              ),
              Column(
                children: [
                  ButtonNumber(text: '9'),
                  ButtonNumber(text: '6'),
                  ButtonNumber(text: '3'),
                  ButtonNumber(text: '.'),
                ],
              ),
LongButton(text: 'AC', height: 150)
            ],
          ),
        )
      ],),
    );
  }
}

