import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static final light = ThemeData(
    // fontFamily: '',
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      toolbarHeight: 90,
      // backgroundColor: AppColors.appBarColor,
      // systemOverlayStyle: SystemUiOverlayStyle.light,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      // titleTextStyle: TextStyle(
      //   fontSize: 14.sp,
      //   color: AppColors.titleColor,
      // ),
    ),
    brightness: Brightness.light,
  );
  static final dark = light.copyWith(brightness: Brightness.dark);
}
