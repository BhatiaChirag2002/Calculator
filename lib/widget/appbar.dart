import 'package:calculator/utils/app_colors.dart';
import 'package:calculator/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AppBarRow extends StatelessWidget {
  final String calculatorName;
  const AppBarRow({
    super.key, required this.calculatorName,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back_ios_new_rounded,color: Theme.of(context).brightness ==
            Brightness.light
            ? AppLightModeColors.textColor
            : AppDarkModeColors.textColor,)),
        Text('${calculatorName} Calculator',style: Theme.of(context).textTheme.labelSmall,),
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
    );
  }
}