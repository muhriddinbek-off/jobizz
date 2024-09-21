import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobee/tools/app_colors.dart';

class AppStyles {
  static TextStyle semiBold28() => TextStyle(
        fontSize: 28.sp,
        color: AppColors.black,
        fontWeight: FontWeight.w600,
        fontFamily: "Main",
      );
  static TextStyle regular15() => TextStyle(
        fontSize: 15.sp,
        color: AppColors.black,
        fontWeight: FontWeight.w400,
        fontFamily: "Main",
      );
  static TextStyle medium16() => TextStyle(
        fontSize: 16.sp,
        color: AppColors.black,
        fontWeight: FontWeight.w500,
        fontFamily: "Main",
      );
}
