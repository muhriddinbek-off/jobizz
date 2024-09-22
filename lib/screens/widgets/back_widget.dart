import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobee/tools/images/app_images.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class BackWidget extends StatelessWidget {
  final Color color;
  const BackWidget({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: SvgPicture.asset(
          AppImages.back,
          colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
        ),
      ),
    );
  }
}
