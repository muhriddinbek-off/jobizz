import 'package:flutter/material.dart';
import 'package:jobee/tools/size/app_size.dart';
import 'package:jobee/tools/styles/app_styles.dart';

class MassageTitle extends StatelessWidget {
  const MassageTitle({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(left: 20.w, top: 30.h, right: 20.w, bottom: 20.h),
        child: Text(
          title,
          style: AppStyles.semiBold14(),
        ),
      ),
    );
  }
}
