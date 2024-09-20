import 'package:flutter/material.dart';
import 'package:jobee/tools/app_colors.dart';
import 'package:jobee/tools/app_images.dart';
import 'package:jobee/tools/app_size.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.liner1,
              AppColors.liner2,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Image.asset(AppImages.brandLogo),
      ),
    );
  }
}
