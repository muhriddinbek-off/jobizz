import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobee/tools/colors/app_colors.dart';
import 'package:jobee/tools/styles/app_styles.dart';

class EmployerInputDescriptionWidget extends StatelessWidget {
  const EmployerInputDescriptionWidget({
    super.key,
    required this.onChangeValue,
    required this.title,
    required this.maxLine,
  });
  final ValueChanged<String> onChangeValue;
  final String title;
  final int maxLine;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChangeValue,
      decoration: InputDecoration(
        hintText: title,
        hintStyle: AppStyles.regular13().copyWith(
          color: AppColors.c95969D,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24.r),
          borderSide: BorderSide(
            color: AppColors.c95969D,
            width: 1.h,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24.r),
          borderSide: BorderSide(
            color: AppColors.c0D0D26,
            width: 1.h,
          ),
        ),
      ),
      style: AppStyles.regular15(),
      maxLines: maxLine,
    );
  }
}
