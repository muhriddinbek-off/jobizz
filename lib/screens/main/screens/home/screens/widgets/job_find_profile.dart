import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobee/data/models/job_find/job_find_model.dart';
import 'package:jobee/screens/main/screens/home/screens/widgets/job_stack_item.dart';
import 'package:jobee/tools/colors/app_colors.dart';
import 'package:jobee/tools/size/app_size.dart';

class JobFindProfile extends StatelessWidget {
  const JobFindProfile({
    super.key,
    required this.jobItem,
  });

  final JobFindModel jobItem;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.all(16.w),
          height: height * 0.27,
          width: width,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(10.r),
            boxShadow: [
              BoxShadow(
                color: AppColors.cAFB0B6.withOpacity(0.6),
                blurRadius: 18,
                offset: const Offset(2, 8),
              ),
            ],
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: -50.h,
          child: JobFindStackItem(jobItem: jobItem),
        ),
      ],
    );
  }
}
