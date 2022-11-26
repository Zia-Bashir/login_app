import 'package:flutter/material.dart';
import 'package:login_app/src/theme/elevated_button_theme.dart';
import 'package:login_app/src/theme/outline_button_theme.dart';
import 'package:login_app/src/theme/text_theme.dart';

class MyTheme {
  MyTheme._();
  //= Light Theme
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.yellow,
      textTheme: AppTextTheme.lightTextTheme,
      elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: AppOutlineButtonTheme.lightOutlineButtonTheme);

  //= Dark Theme
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.yellow,
      textTheme: AppTextTheme.darkTextTheme,
      elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: AppOutlineButtonTheme.darkOutlineButtonTheme);
}
