import 'package:flutter/material.dart';
import 'package:jobee/data/models/job_find/job_find_model.dart';
import 'package:jobee/screens/main/screens/home/screens/widgets/job_find_item.dart';
import 'package:jobee/screens/main/screens/home/screens/widgets/job_find_profile.dart';
import 'package:jobee/screens/widgets/button_widget.dart';
import 'package:jobee/tools/colors/app_colors.dart';
import 'package:jobee/tools/size/app_size.dart';

class JobFindDetailScreen extends StatelessWidget {
  const JobFindDetailScreen({
    super.key,
    required this.jobItem,
  });
  final JobFindModel jobItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height * 0.32,
              width: width,
              color: AppColors.primaryColor,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    left: 20.w,
                    right: 20.w,
                    bottom: -height * 0.13,
                    child: JobFindProfile(jobItem: jobItem),
                  ),
                  Positioned(
                    top: 40.h,
                    left: 10.w,
                    child: BackButton(
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.17,
            ),
            JobFindBodyItem(
              jobItem: jobItem.price,
              title: "Price",
            ),
            JobFindBodyItem(
              jobItem: jobItem.jobExperience,
              title: "Experience",
            ),
            JobFindBodyItem(
              jobItem: jobItem.jobDescription,
              title: "Description",
            ),
            60.getH(),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SizedBox(
          height: 56.h,
          child: ButtonWidget(width: width, title: "Apply Now", onTap: () {}),
        ),
      ),
    );
  }
}
