import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobee/tools/images/app_images.dart';

class UploadLogoDefault extends StatelessWidget {
  const UploadLogoDefault({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 150.w,
          width: 150.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.dashedBorder),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
