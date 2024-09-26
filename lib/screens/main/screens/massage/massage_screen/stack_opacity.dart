import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobee/tools/colors/app_colors.dart';
import 'package:jobee/tools/images/app_images.dart';
import 'package:jobee/tools/styles/app_styles.dart';

class StackOpacity extends StatelessWidget {
  const StackOpacity({
    super.key,
    required this.isChange,
    required this.onTap,
  });
  final Function() onTap;
  final bool isChange;
  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: isChange ? 0 : 1,
      duration: const Duration(milliseconds: 300),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Massage",
            style: AppStyles.semiBold16().copyWith(color: AppColors.white),
          ),
          IconButton(
            onPressed: onTap,
            icon: SvgPicture.asset(
              AppImages.search,
              colorFilter: ColorFilter.mode(
                AppColors.white,
                BlendMode.srcIn,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
