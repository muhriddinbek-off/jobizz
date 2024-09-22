import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobee/tools/colors/app_colors.dart';
import 'package:jobee/tools/images/app_images.dart';
import 'package:jobee/tools/size/app_size.dart';
import 'package:jobee/tools/styles/app_styles.dart';

class HomeSearch extends StatelessWidget {
  final ValueChanged<String> onValue;
  const HomeSearch({
    super.key,
    required this.onValue,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 7,
      child: TextField(
        onChanged: onValue,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(color: AppColors.cF2F2F3),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(color: AppColors.cF2F2F3),
          ),
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: SvgPicture.asset(
              AppImages.search,
              colorFilter: ColorFilter.mode(AppColors.c95969D, BlendMode.srcIn),
            ),
          ),
          fillColor: AppColors.cF2F2F3,
          filled: true,
          hintText: "Search a job or position",
          hintStyle: AppStyles.regular13().copyWith(color: AppColors.c95969D),
        ),
      ),
    );
  }
}
