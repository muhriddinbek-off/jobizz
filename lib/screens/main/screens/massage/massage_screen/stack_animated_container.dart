import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobee/tools/colors/app_colors.dart';
import 'package:jobee/tools/images/app_images.dart';
import 'package:jobee/tools/size/app_size.dart';

class StackAnimatedContainer extends StatelessWidget {
  const StackAnimatedContainer({
    super.key,
    required this.search,
    required this.isChange,
    required this.onChange,
  });

  final TextEditingController search;
  final Function() onChange;
  final bool isChange;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      alignment: Alignment.centerRight,
      transformAlignment: Alignment.centerRight,
      width: isChange ? width : 0,
      height: 40.h,
      transform: Matrix4.translationValues(isChange ? width * 0.001 : 0, 0, 0),
      duration: const Duration(
        milliseconds: 300,
      ),
      decoration: BoxDecoration(
        color: AppColors.bgColor,
        borderRadius: BorderRadius.circular(50.r),
      ),
      child: TextField(
        controller: search,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: IconButton(
            onPressed: onChange,
            icon: SvgPicture.asset(
              AppImages.back,
              colorFilter: ColorFilter.mode(AppColors.c95969D, BlendMode.srcIn),
            ),
          ),
          suffixIcon: IconButton(
            onPressed: () {
              search.clear();
            },
            icon: SvgPicture.asset(
              AppImages.cancel,
              colorFilter: ColorFilter.mode(AppColors.c95969D, BlendMode.srcIn),
            ),
          ),
          hintText: "Search",
        ),
      ),
    );
  }
}
