import 'package:flutter/material.dart';
import 'package:jobee/screens/routes_screen.dart';
import 'package:jobee/tools/app_colors.dart';
import 'package:jobee/tools/app_images.dart';
import 'package:jobee/tools/app_size.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void getNextScreen() {
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        Navigator.pushNamedAndRemoveUntil(
          context,
          RoutesName.onboarding,
          (route) => false,
        );
      }
    });
  }

  @override
  void initState() {
    getNextScreen();
    super.initState();
  }

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
