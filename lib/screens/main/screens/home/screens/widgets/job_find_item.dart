import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobee/tools/colors/app_colors.dart';
import 'package:jobee/tools/size/app_size.dart';
import 'package:jobee/tools/styles/app_styles.dart';

class JobFindBodyItem extends StatelessWidget {
  const JobFindBodyItem({
    super.key,
    required this.jobItem,
    required this.title,
  });

  final String jobItem;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      margin: EdgeInsets.symmetric(vertical: 16.w, horizontal: 20.w),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.cAFB0B6.withOpacity(0.6),
            blurRadius: 18,
            offset: const Offset(2, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppStyles.semiBold16(),
          ),
          6.getH(),
          const Divider(),
          6.getH(),
          Text(
            jobItem,
            style: AppStyles.medium14().copyWith(color: AppColors.c95969D),
          ),
        ],
      ),
    );
  }
}
