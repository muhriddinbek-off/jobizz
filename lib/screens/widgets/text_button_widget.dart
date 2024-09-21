import 'package:flutter/material.dart';
import 'package:jobee/tools/app_styles.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class TextButtonWidget extends StatelessWidget {
  final String title;
  final Function() onTap;
  const TextButtonWidget({
    super.key,
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: onTap,
      child: Text(
        title,
        style: AppStyles.medium16(),
      ),
    );
  }
}
