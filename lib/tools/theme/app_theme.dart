import 'package:flutter/material.dart';
import 'package:jobee/tools/colors/app_colors.dart';

class AppTheme {
  static ThemeData getAppTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.bgColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.bgColor,
    ),
    useMaterial3: true,
  );
}
