import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobee/tools/colors/app_colors.dart';
import 'package:jobee/tools/size/app_size.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class IconButtonCircleWidget extends StatelessWidget {
  final String icon;
  final Function() onTap;
  const IconButtonCircleWidget({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(14.h),
        decoration: BoxDecoration(
          color: AppColors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withOpacity(0.09),
              blurRadius: 16,
              offset: const Offset(4, 5),
            ),
          ],
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
