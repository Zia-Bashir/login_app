import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class AppOutlineButtonTheme {
  AppOutlineButtonTheme._();

  //* -- Light Outline Button Theme
  static final lightOutlineButtonTheme = OutlinedButtonThemeData(
    style: ElevatedButton.styleFrom(
        side: const BorderSide(color: AppColors.darkColor),
        padding: const EdgeInsets.symmetric(vertical: 20),
        backgroundColor: Colors.transparent),
  );

  //* -- Dark Outline Button Theme
  static final darkOutlineButtonTheme = OutlinedButtonThemeData(
    style: ElevatedButton.styleFrom(
        side: const BorderSide(color: Colors.white),
        padding: const EdgeInsets.symmetric(vertical: 20),
        backgroundColor: Colors.transparent),
  );
}
