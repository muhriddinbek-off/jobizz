import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobee/tools/colors/app_colors.dart';
import 'package:jobee/tools/images/app_images.dart';
import 'package:jobee/tools/size/app_size.dart';
import 'package:jobee/tools/styles/app_styles.dart';

class ResumeEmtpy extends StatelessWidget {
  const ResumeEmtpy({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 14.h),
      decoration: BoxDecoration(
        color: AppColors.cF2F2F3,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        children: [
          SvgPicture.asset(
            AppImages.pdfFile,
            colorFilter: ColorFilter.mode(AppColors.c95969D, BlendMode.srcIn),
          ),
          10.getH(),
          Column(
            children: [
              Text(
                "Add file",
                style: AppStyles.medium14(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
