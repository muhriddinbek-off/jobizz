import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobee/tools/colors/app_colors.dart';
import 'package:jobee/tools/styles/app_styles.dart';

class InputTextWidget extends StatelessWidget {
  final String icon;
  final String title;
  final ValueChanged<String> onValue;
  const InputTextWidget({
    super.key,
    required this.icon,
    required this.onValue,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onValue,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(
            color: AppColors.cAFB0B6,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(
            color: AppColors.c0D0D26,
          ),
        ),
        hintText: title,
        hintStyle: AppStyles.medium14().copyWith(color: AppColors.cAFB0B6),
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: SvgPicture.asset(
            icon,
            colorFilter: ColorFilter.mode(
              AppColors.cAFB0B6,
              BlendMode.srcIn,
            ),
          ),
        ),
        prefixIconColor: AppColors.c0D0D26,
      ),
      style: AppStyles.medium14().copyWith(color: AppColors.c0D0D26),
    );
  }
}
