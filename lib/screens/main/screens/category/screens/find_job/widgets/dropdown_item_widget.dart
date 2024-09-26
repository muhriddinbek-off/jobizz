import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobee/tools/colors/app_colors.dart';
import 'package:jobee/tools/size/app_size.dart';

class DropdownItemWidget extends StatelessWidget {
  const DropdownItemWidget({
    super.key,
    required this.hintName,
    required this.selectValue,
    required this.dropdownItems,
    required this.onValueChange,
  });

  final String hintName;
  final String? selectValue;
  final List<DropdownMenuItem<String>>? dropdownItems;
  final ValueChanged<String?>? onValueChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.cE4E5E7,
            blurRadius: 18,
            offset: const Offset(2, 7),
          ),
        ],
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          dropdownColor: AppColors.white,
          isExpanded: true,
          elevation: 12,
          hint: Text(hintName),
          value: selectValue,
          items: dropdownItems,
          onChanged: onValueChange,
        ),
      ),
    );
  }
}
