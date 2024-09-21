import 'package:flutter/material.dart';
import 'package:jobee/tools/colors/app_colors.dart';
import 'package:jobee/tools/size/app_size.dart';
import 'package:jobee/tools/styles/app_styles.dart';

class OnboardingItem extends StatelessWidget {
  final String img;
  final String title;
  final String description;
  const OnboardingItem({
    super.key,
    required this.description,
    required this.img,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(img),
          Text(
            title,
            textAlign: TextAlign.center,
            style: AppStyles.semiBold28(),
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: AppStyles.regular15().copyWith(color: AppColors.c95969D),
          ),
        ],
      ),
    );
  }
}
