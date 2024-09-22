import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobee/cubit/job_category_select/job_category_select_cubit.dart';
import 'package:jobee/screens/routes_screen.dart';
import 'package:jobee/screens/widgets/button_widget.dart';
import 'package:jobee/tools/colors/app_colors.dart';
import 'package:jobee/tools/images/app_images.dart';
import 'package:jobee/tools/size/app_size.dart';
import 'package:jobee/tools/styles/app_styles.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: Text(
          "Category",
          style: AppStyles.bold20(),
        ),
      ),
      body: BlocBuilder<JobCategorySelectCubit, int>(
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Are you looking for an employee or looking for a job? Choose the category you need and continue!",
                  textAlign: TextAlign.center,
                  style: AppStyles.medium16(),
                ),
                const Spacer(),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Expanded(
                        child: categorySelect(
                          id: 1,
                          title: "Need work",
                          img: AppImages.findJob,
                          onTap: () {
                            context.read<JobCategorySelectCubit>().getIndex(1);
                          },
                        ),
                      ),
                      10.getW(),
                      Expanded(
                        child: categorySelect(
                          id: 2,
                          title: "Employer",
                          img: AppImages.employer,
                          onTap: () {
                            context.read<JobCategorySelectCubit>().getIndex(2);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                ButtonWidget(
                    width: double.infinity,
                    onTap: () {
                      if (state != 0) {
                        if (state == 1) {
                          Navigator.pushNamed(context, RoutesName.findJob);
                        }
                        if (state == 2) {
                          Navigator.pushNamed(context, RoutesName.employer);
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            duration: const Duration(seconds: 1),
                            behavior: SnackBarBehavior.floating,
                            margin: EdgeInsets.only(left: 20.w, right: 20.w, bottom: height * 0.7),
                            backgroundColor: AppColors.cE30000,
                            content: Text(
                              "Please select one of the categories",
                              style: AppStyles.medium14(),
                            ),
                          ),
                        );
                      }
                    },
                    title: "Let's Go"),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget categorySelect({
    required int id,
    required String title,
    required String img,
    required Function() onTap,
  }) {
    return ZoomTapAnimation(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        height: height * 0.3,
        decoration: BoxDecoration(
          color: id == context.watch<JobCategorySelectCubit>().state ? AppColors.primaryColor : AppColors.white,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: AppColors.cEBF1FF,
              blurRadius: 18,
              offset: const Offset(2, 8),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              img,
            ),
            Text(
              title,
              style: AppStyles.semiBold16().copyWith(
                color: id == context.watch<JobCategorySelectCubit>().state ? AppColors.white : AppColors.c0D0D26,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
