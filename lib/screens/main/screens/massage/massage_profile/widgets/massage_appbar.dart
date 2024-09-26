import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobee/tools/colors/app_colors.dart';
import 'package:jobee/tools/size/app_size.dart';
import 'package:jobee/tools/styles/app_styles.dart';

class MassageAppbarItem extends StatelessWidget {
  const MassageAppbarItem({
    super.key,
    required this.avatar,
    required this.name,
  });

  final String avatar;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50.r),
          child: Container(
            alignment: Alignment.center,
            color: AppColors.white,
            height: 45.h,
            width: 45.h,
            child: SvgPicture.asset(
              avatar,
              fit: BoxFit.cover,
            ),
          ),
        ),
        16.getW(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: AppStyles.semiBold16().copyWith(color: AppColors.white),
            ),
            Text(
              "Online",
              style: AppStyles.semiBold14().copyWith(
                color: AppColors.white.withOpacity(0.5),
              ),
            ),
          ],
        )
      ],
    );
  }
}
