import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobee/tools/colors/app_colors.dart';
import 'package:jobee/tools/size/app_size.dart';
import 'package:jobee/tools/styles/app_styles.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class JobsCategoriesItem extends StatelessWidget {
  final String categoryName;
  final int index;
  final int changedIndex;
  final Function() onTap;
  const JobsCategoriesItem({
    super.key,
    required this.categoryName,
    required this.index,
    required this.onTap,
    required this.changedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        margin: EdgeInsets.symmetric(horizontal: 8.w),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: index == changedIndex ? AppColors.primaryColor : AppColors.transparent,
          borderRadius: BorderRadius.circular(50.r),
          border: Border.all(
            color: AppColors.primaryColor,
          ),
        ),
        child: Text(
          categoryName,
          style: AppStyles.medium14().copyWith(
            color: index == changedIndex ? AppColors.white : AppColors.c0D0D26,
          ),
        ),
      ),
    );
  }
}
