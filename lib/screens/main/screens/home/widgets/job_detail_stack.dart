import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobee/data/models/employer/employer_model.dart';
import 'package:jobee/tools/colors/app_colors.dart';
import 'package:jobee/tools/size/app_size.dart';
import 'package:jobee/tools/styles/app_styles.dart';

class JobDetailStack extends StatelessWidget {
  const JobDetailStack({
    super.key,
    required this.employer,
  });

  final EmployerModel employer;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: 80.h,
          width: 80.w,
          decoration: BoxDecoration(
            color: AppColors.white,
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            employer.companyLogo,
            height: 40.h,
          ),
        ),
        6.getH(),
        Text(
          "Software Engineer",
          style: AppStyles.bold20().copyWith(
            color: AppColors.white,
          ),
        ),
        Text(
          employer.companyName,
          style: AppStyles.medium14().copyWith(
            color: AppColors.white,
          ),
        ),
        16.getH(),
        Row(
          children: [
            jobDetailTopItem(employer.jobOfType),
            jobDetailTopItem(employer.jobOfTime),
            jobDetailTopItem(employer.jobLevel),
          ],
        ),
        20.getH(),
        SizedBox(
          width: width * 0.7,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$ ${employer.price}",
                style: AppStyles.semiBold16().copyWith(color: AppColors.white),
              ),
              Text(
                "${employer.region}, ${employer.city}",
                style: AppStyles.semiBold16().copyWith(color: AppColors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Container jobDetailTopItem(String title) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
      margin: EdgeInsets.symmetric(horizontal: 8.w),
      decoration: BoxDecoration(
        color: AppColors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(50.r),
      ),
      child: Text(
        title,
        style: AppStyles.regular11().copyWith(color: AppColors.white, fontSize: 10.sp),
      ),
    );
  }
}
