import 'package:flutter/Material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/src/utils/app_colors.dart';

class AppTextTheme {
  //* -- Light Text Theme
  static TextTheme lightTextTheme = TextTheme(
    headline1: GoogleFonts.montserrat(
      color: AppColors.darkColor,
      fontWeight: FontWeight.bold,
      fontSize: 28,
    ),
    headline2: GoogleFonts.montserrat(
      color: AppColors.darkColor,
      fontWeight: FontWeight.w700,
      fontSize: 24,
    ),
    headline3: GoogleFonts.poppins(
      color: AppColors.darkColor,
      fontWeight: FontWeight.w700,
      fontSize: 24,
    ),
    headline4: GoogleFonts.poppins(
      color: AppColors.darkColor,
      fontWeight: FontWeight.w600,
      fontSize: 16,
    ),
    headline5: GoogleFonts.poppins(
      color: AppColors.darkColor,
      fontWeight: FontWeight.w600,
      fontSize: 14,
    ),
    bodyText1: GoogleFonts.poppins(
      color: AppColors.darkColor,
      fontWeight: FontWeight.w400,
      fontSize: 14,
    ),
    bodyText2: GoogleFonts.poppins(
      color: AppColors.darkColor,
      fontWeight: FontWeight.normal,
      fontSize: 14,
    ),
  );

  //* -- Dark Text Theme
  static TextTheme darkTextTheme = TextTheme(
    headline1: GoogleFonts.montserrat(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 28,
    ),
    headline2: GoogleFonts.montserrat(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: 24,
    ),
    headline3: GoogleFonts.poppins(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: 24,
    ),
    headline4: GoogleFonts.poppins(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 16,
    ),
    headline5: GoogleFonts.poppins(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 14,
    ),
    bodyText1: GoogleFonts.poppins(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontSize: 14,
    ),
    bodyText2: GoogleFonts.poppins(
      color: Colors.white,
      fontWeight: FontWeight.normal,
      fontSize: 14,
    ),
  );
}
