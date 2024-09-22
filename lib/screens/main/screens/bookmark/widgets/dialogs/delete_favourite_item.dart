import 'package:flutter/material.dart';
import 'package:jobee/screens/widgets/button_widget.dart';
import 'package:jobee/screens/widgets/text_button_widget.dart';
import 'package:jobee/tools/colors/app_colors.dart';
import 'package:jobee/tools/styles/app_styles.dart';

class DeleteFavouriteItem extends StatelessWidget {
  const DeleteFavouriteItem({
    super.key,
    required this.onTap,
  });

  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      icon: Text(
        "Delete",
        textAlign: TextAlign.center,
        style: AppStyles.bold20().copyWith(color: AppColors.c0D0D26),
      ),
      title: const Divider(),
      content: Text(
        "Remove from favorites?",
        textAlign: TextAlign.center,
        style: AppStyles.medium16().copyWith(color: AppColors.c0D0D26),
      ),
      actions: [
        SizedBox(
          width: double.maxFinite,
          child: Row(
            children: [
              Expanded(
                  child: TextButtonWidget(
                onTap: () {
                  Navigator.pop(context);
                },
                title: "Cancel",
              )),
              Expanded(
                child: ButtonWidget(width: 0, onTap: onTap, title: "Yes"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
