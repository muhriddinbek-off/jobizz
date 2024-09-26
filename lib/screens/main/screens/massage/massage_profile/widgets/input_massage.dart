import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobee/tools/colors/app_colors.dart';
import 'package:jobee/tools/images/app_images.dart';
import 'package:jobee/tools/size/app_size.dart';
import 'package:jobee/tools/styles/app_styles.dart';

class InputMassage extends StatelessWidget {
  const InputMassage({
    super.key,
    required this.onSelect,
    required this.onSend,
    required this.onValueChange,
  });

  final ValueChanged<String> onValueChange;
  final Function() onSelect;
  final Function() onSend;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.cE4E5E7,
            blurRadius: 18,
            offset: const Offset(8, 0),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: onSelect,
            icon: SvgPicture.asset(AppImages.celect),
          ),
          SizedBox(
            width: width * 0.6,
            child: TextField(
              minLines: 1,
              maxLines: 6,
              onChanged: onValueChange,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Massage",
                hintStyle: AppStyles.medium14().copyWith(color: AppColors.c95969D),
              ),
            ),
          ),
          IconButton(
            onPressed: onSend,
            icon: SvgPicture.asset(AppImages.send),
          ),
        ],
      ),
    );
  }
}
