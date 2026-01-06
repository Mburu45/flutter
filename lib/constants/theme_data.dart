import 'package:flutter_application_1/constants/app_colors.dart';
import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData({required bool isDarkTheme}) {
    return ThemeData(
      scaffoldBackgroundColor: isDarkTheme ? AppColors.darkScaffoldColor : AppColors.lightScaffoldColor,
      cardColor: isDarkTheme ? const Color.fromARGB(100, 78, 89, 67) : AppColors.lightCardColor,
      primaryColor: isDarkTheme ? AppColors.darkPrimary : AppColors.lightPrimary,
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
    );
  }
}