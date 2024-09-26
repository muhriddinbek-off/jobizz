import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobee/data/models/job_find/job_find_model.dart';
import 'package:jobee/tools/colors/app_colors.dart';
import 'package:jobee/tools/images/app_images.dart';
import 'package:jobee/tools/size/app_size.dart';
import 'package:jobee/tools/styles/app_styles.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class JobFindWidget extends StatelessWidget {
  const JobFindWidget({
    super.key,
    required this.item,
    required this.onTap,
  });

  final JobFindModel item;
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
                CircleAvatar(
                  radius: 30.h,
                  backgroundImage: AssetImage(
                    AppImages.avatarDefault,
                  ),
                ),
                10.getW(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.jobType,
                      style: AppStyles.semiBold14().copyWith(
                        color: AppColors.c0D0D26,
                      ),
                    ),
                    Text(
                      item.jobLine,
                      style: AppStyles.regular13().copyWith(
                        color: AppColors.c0D0D26,
                      ),
                    ),
                    8.getH(),
                    SizedBox(
                      width: width * 0.5,
                      child: Text(
                        item.jobDescription,
                        overflow: TextOverflow.ellipsis,
                        style: AppStyles.regular13().copyWith(
                          color: AppColors.c95969D,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
