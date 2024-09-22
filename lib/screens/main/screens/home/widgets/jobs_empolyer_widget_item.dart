import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobee/data/models/employer/employer_model.dart';
import 'package:jobee/tools/colors/app_colors.dart';
import 'package:jobee/tools/size/app_size.dart';
import 'package:jobee/tools/styles/app_styles.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class JobsEmpolyerWidgetItem extends StatelessWidget {
  const JobsEmpolyerWidgetItem({
    super.key,
    required this.empolyer,
    required this.onTap,
  });

  final EmployerModel empolyer;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8.h),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: AppColors.cFFEBF3,
              blurRadius: 18,
              offset: const Offset(2, 8),
            )
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  empolyer.companyLogo,
                  height: 40.h,
                ),
                10.getW(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      empolyer.jobOfType,
                      style: AppStyles.semiBold14().copyWith(
                        color: AppColors.c0D0D26,
                      ),
                    ),
                    Text(
                      empolyer.companyName,
                      style: AppStyles.regular13().copyWith(
                        color: AppColors.c0D0D26,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "\$ ${empolyer.price}",
                  style: AppStyles.medium12().copyWith(color: AppColors.c0D0D26),
                ),
                6.getH(),
                Text(
                  empolyer.region,
                  style: AppStyles.regular13().copyWith(color: AppColors.c0D0D26),
                ),
                16.getH(),
                Text(
                  empolyer.jobOfTime,
                  style: AppStyles.medium12().copyWith(color: AppColors.c0D0D26),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
