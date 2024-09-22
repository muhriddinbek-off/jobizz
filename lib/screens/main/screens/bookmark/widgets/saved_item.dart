import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobee/data/models/employer/employer_model.dart';
import 'package:jobee/tools/colors/app_colors.dart';
import 'package:jobee/tools/styles/app_styles.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class SavedItem extends StatelessWidget {
  const SavedItem({
    super.key,
    required this.saveJobs,
    required this.onTap,
    required this.onLongPress,
  });

  final EmployerModel saveJobs;
  final Function() onTap;
  final Function() onLongPress;

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: onTap,
      onLongTap: onLongPress,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8.h),
        padding: EdgeInsets.symmetric(vertical: 10.h),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: AppColors.cE4E5E7,
              blurRadius: 18,
              offset: const Offset(2, 8),
            ),
          ],
        ),
        child: ListTile(
          leading: SvgPicture.asset(
            saveJobs.companyLogo,
            height: 40.h,
          ),
          title: Text(
            saveJobs.jobOfType,
            style: AppStyles.semiBold14().copyWith(color: AppColors.c0D0D26),
          ),
          subtitle: Text(
            saveJobs.companyName,
            style: AppStyles.regular13().copyWith(color: AppColors.c0D0D26),
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "\$ ${saveJobs.price}",
                style: AppStyles.medium12().copyWith(color: AppColors.c0D0D26),
              ),
              Text(
                "${saveJobs.city} ${saveJobs.region}",
                style: AppStyles.medium12().copyWith(color: AppColors.c0D0D26),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
