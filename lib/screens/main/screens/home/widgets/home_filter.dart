import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobee/tools/colors/app_colors.dart';
import 'package:jobee/tools/images/app_images.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomeFilter extends StatelessWidget {
  final Function() onTap;
  const HomeFilter({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8.h),
        height: 48.h,
        width: 48.w,
        decoration: BoxDecoration(
          color: AppColors.cF2F2F3,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: SvgPicture.asset(AppImages.filter),
      ),
    );
  }
}
