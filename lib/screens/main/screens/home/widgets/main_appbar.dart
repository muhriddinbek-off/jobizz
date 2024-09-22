import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobee/tools/colors/app_colors.dart';
import 'package:jobee/tools/images/app_images.dart';
import 'package:jobee/tools/styles/app_styles.dart';

class MainAppbar extends StatelessWidget {
  const MainAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Back!",
              style: AppStyles.medium14().copyWith(
                color: AppColors.c95969D,
              ),
            ),
            Text(
              "Rifat Sarkar 👋",
              style: AppStyles.bold22().copyWith(
                color: AppColors.c0D0D26,
              ),
            ),
          ],
        ),
        Stack(
          children: [
            SizedBox(
              height: 54.h,
              width: 54.w,
              child: CircleAvatar(
                backgroundImage: AssetImage(AppImages.avatarDefault),
              ),
            ),
            Positioned(
                top: 4.h,
                right: 4.w,
                child: Container(
                  height: 12.h,
                  width: 12.w,
                  decoration: BoxDecoration(
                    color: AppColors.cE30000,
                    border: Border.all(width: 2.h, color: AppColors.white),
                    shape: BoxShape.circle,
                  ),
                ))
          ],
        )
      ],
    );
  }
}
