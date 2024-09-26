import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobee/data/models/job_find/job_find_model.dart';
import 'package:jobee/tools/colors/app_colors.dart';
import 'package:jobee/tools/images/app_images.dart';
import 'package:jobee/tools/size/app_size.dart';
import 'package:jobee/tools/styles/app_styles.dart';

class JobFindStackItem extends StatelessWidget {
  const JobFindStackItem({
    super.key,
    required this.jobItem,
  });

  final JobFindModel jobItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50.h,
          backgroundImage: AssetImage(AppImages.avatarDefault),
        ),
        10.getH(),
        SizedBox(
          width: width * 0.7,
          child: Text(
            jobItem.jobType,
            textAlign: TextAlign.center,
            style: AppStyles.semiBold16().copyWith(fontSize: 20.sp),
          ),
        ),
        SizedBox(
          width: width * 0.7,
          child: Text(
            jobItem.jobLine,
            textAlign: TextAlign.center,
            style: AppStyles.regular13(),
          ),
        ),
        8.getH(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${jobItem.city}, ${jobItem.region}",
              style: AppStyles.medium16(),
            ),
          ],
        ),
        8.getH(),
        SizedBox(
          width: width * 0.7,
          child: const Divider(),
        ),
        8.getH(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Chip(
              side: BorderSide(color: AppColors.transparent),
              backgroundColor: AppColors.white,
              label: Text(jobItem.jobLevel),
            ),
            Chip(
              side: BorderSide(color: AppColors.transparent),
              backgroundColor: AppColors.white,
              label: Text(jobItem.type),
            ),
          ],
        )
      ],
    );
  }
}
