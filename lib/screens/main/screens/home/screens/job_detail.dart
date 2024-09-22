import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobee/data/models/employer/employer_model.dart';
import 'package:jobee/screens/main/screens/home/widgets/job_detail_stack.dart';
import 'package:jobee/screens/widgets/button_widget.dart';
import 'package:jobee/tools/colors/app_colors.dart';
import 'package:jobee/tools/images/app_images.dart';
import 'package:jobee/tools/size/app_size.dart';
import 'package:jobee/tools/styles/app_styles.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class JobDetail extends StatelessWidget {
  const JobDetail({
    super.key,
    required this.employer,
  });
  final EmployerModel employer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  height: height * 0.4,
                  padding: EdgeInsets.only(top: 50.h, right: 20.w, bottom: 20.h),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    image: DecorationImage(
                      image: AssetImage(AppImages.banner),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BackButton(
                        color: AppColors.white,
                      ),
                      ZoomTapAnimation(
                        child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            AppImages.bookmarkAdd,
                            colorFilter: ColorFilter.mode(AppColors.white, BlendMode.srcIn),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 50.h,
                  child: JobDetailStack(employer: employer),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              width: width,
              color: AppColors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description",
                    style: AppStyles.medium16().copyWith(
                      color: AppColors.c0D0D26,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const Divider(),
                  10.getH(),
                  Text(
                    employer.description,
                    style: AppStyles.semiBold14().copyWith(
                      color: AppColors.c95969D,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(left: 20.w, bottom: 30.h, right: 20.w),
        child: SizedBox(
          height: 56.h,
          child: ButtonWidget(
            width: width,
            onTap: () {},
            title: "Apply Now",
          ),
        ),
      ),
    );
  }
}
