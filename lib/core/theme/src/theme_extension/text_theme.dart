import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class AppTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: GoogleFonts.nunito(
      fontSize: 28.sp,
      fontWeight: FontWeight.w700,
    ),
    headlineMedium: GoogleFonts.nunito(
      fontSize: 26.sp,
      fontWeight: FontWeight.w700,
    ),
    headlineSmall: GoogleFonts.nunito(
      fontSize: 24.sp,
      fontWeight: FontWeight.w600,
    ),
    titleLarge: GoogleFonts.nunito(
      fontSize: 22.sp,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: GoogleFonts.nunito(
      fontSize: 20.sp,
      fontWeight: FontWeight.w700,
    ),
    titleSmall: GoogleFonts.nunito(
      fontSize: 18.sp,
      fontWeight: FontWeight.w500,
    ),
    bodyLarge: GoogleFonts.nunito(fontSize: 16.sp, fontWeight: FontWeight.w400),
    bodyMedium: GoogleFonts.nunito(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
    ),
    bodySmall: GoogleFonts.nunito(fontSize: 12.sp, fontWeight: FontWeight.w400),
    labelLarge: GoogleFonts.nunito(
      fontSize: 14,
      color: Color(0xff4A4C56),
      fontWeight: FontWeight.w500,
    ),
    labelMedium: GoogleFonts.nunito(
      fontSize: 12,
      color: Color(0xff4A4C56),
      fontWeight: FontWeight.w500,
    ),
    labelSmall: GoogleFonts.nunito(
      fontSize: 11.sp,
      color: Color(0xff4A4C56),
      fontWeight: FontWeight.w400,
    ),
  );
  static TextTheme darkTextTheme = TextTheme();
}
