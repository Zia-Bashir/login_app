import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();

  //* -- Light Elevated Button Theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      side: const BorderSide(color: AppColors.darkColor),
      padding: const EdgeInsets.symmetric(vertical: 20),
      backgroundColor: AppColors.darkColor,
    ),
  );

  //* -- Dark Elevated Button Theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      side: const BorderSide(color: AppColors.darkColor),
      padding: const EdgeInsets.symmetric(vertical: 20),
      backgroundColor: Colors.white,
    ),
  );
}
