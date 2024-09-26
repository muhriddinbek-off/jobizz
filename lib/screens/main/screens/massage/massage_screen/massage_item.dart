import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobee/tools/colors/app_colors.dart';
import 'package:jobee/tools/styles/app_styles.dart';

class MassageItem extends StatelessWidget {
  const MassageItem({
    super.key,
    required this.name,
    required this.avatar,
    required this.chatEnd,
    required this.onTap,
  });

  final String name;
  final String avatar;
  final String chatEnd;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: SvgPicture.asset(
        avatar,
        height: 30.h,
      ),
      title: Text(
        name,
        style: AppStyles.medium14(),
      ),
      subtitle: Text(
        chatEnd,
        overflow: TextOverflow.ellipsis,
        style: AppStyles.regular13().copyWith(
          color: AppColors.c95969D,
        ),
      ),
      trailing: Column(
        children: [
          Text(
            "11:35",
            style: AppStyles.medium12(),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 8),
            decoration: BoxDecoration(
              color: AppColors.c356899,
              borderRadius: BorderRadius.circular(50.r),
            ),
            child: Text(
              "3",
              style: AppStyles.medium12().copyWith(
                fontSize: 10.sp,
                color: AppColors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
