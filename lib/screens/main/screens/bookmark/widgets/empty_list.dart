import 'package:flutter/material.dart';
import 'package:jobee/tools/images/app_images.dart';
import 'package:jobee/tools/size/app_size.dart';
import 'package:jobee/tools/styles/app_styles.dart';

class EmtpyList extends StatelessWidget {
  const EmtpyList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * 0.7,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppImages.freeTime),
          Text(
            "You haven't saved anything yet!",
            textAlign: TextAlign.center,
            style: AppStyles.bold20(),
          ),
        ],
      ),
    );
  }
}
