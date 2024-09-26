import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobee/tools/colors/app_colors.dart';
import 'package:jobee/tools/images/app_images.dart';
import 'package:jobee/tools/size/app_size.dart';
import 'package:jobee/tools/styles/app_styles.dart';

class ResumeUpload extends StatelessWidget {
  const ResumeUpload({
    super.key,
    required this.fileByte,
    required this.fileName,
  });
  final String fileName;
  final String fileByte;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
      decoration: BoxDecoration(
        color: AppColors.cF2F2F3,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        children: [
          SvgPicture.asset(AppImages.pdfFile),
          10.getW(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: width * 0.46,
                child: Text(
                  fileName,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.medium14(),
                ),
              ),
              Text(
                fileByte,
                style: AppStyles.regular11(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
