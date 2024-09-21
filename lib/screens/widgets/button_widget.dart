import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobee/tools/app_colors.dart';
import 'package:jobee/tools/app_size.dart';
import 'package:jobee/tools/app_styles.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ButtonWidget extends StatelessWidget {
  final double width;
  final String title;
  final Function() onTap;
  const ButtonWidget({
    super.key,
    required this.width,
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 16.h),
        width: width,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: Text(
          title,
          style: AppStyles.medium16().copyWith(color: AppColors.white),
        ),
      ),
    );
  }
}
