import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobee/tools/colors/app_colors.dart';
import 'package:jobee/tools/images/app_images.dart';
import 'package:jobee/tools/size/app_size.dart';
import 'package:jobee/tools/styles/app_styles.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const BackButton(),
        title: Text(
          "Settings",
          style: AppStyles.semiBold16(),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.w, top: 20.h, bottom: 20.h),
                child: Text(
                  "Aplications",
                  style: AppStyles.semiBold14().copyWith(color: AppColors.c95969D),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: const Divider(),
          ),
          settingsItem(
            title: "Profile Visibility",
            icon: AppImages.profile,
            onTap: () {},
          ),
          settingsItem(
            title: "Notification",
            icon: AppImages.notification,
            onTap: () {},
          ),
          settingsItem(
            title: "Change Password",
            icon: AppImages.changePassword,
            onTap: () {},
          ),
          settingsItem(
            title: "Language",
            icon: AppImages.language,
            onTap: () {},
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.w, top: 20.h, bottom: 20.h),
                child: Text(
                  "Other",
                  style: AppStyles.semiBold14().copyWith(color: AppColors.c95969D),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: const Divider(),
          ),
          settingsItem(
            title: "Delete Account",
            icon: AppImages.delete,
            onTap: () {},
          ),
        ],
      ),
    );
  }

  ZoomTapAnimation settingsItem({
    required String title,
    required String icon,
    required Function() onTap,
  }) {
    return ZoomTapAnimation(
      onTap: onTap,
      child: ListTile(
        focusColor: Colors.amber,
        leading: SvgPicture.asset(icon),
        title: Text(
          title,
          style: AppStyles.medium14(),
        ),
      ),
    );
  }
}
