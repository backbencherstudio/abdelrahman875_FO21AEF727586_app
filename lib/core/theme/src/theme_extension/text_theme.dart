import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class AppTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: GoogleFonts.inter(
      fontSize: 28.sp,
      fontWeight: FontWeight.w700,
    ),
    headlineMedium: GoogleFonts.inter(
      fontSize: 26.sp,
      fontWeight: FontWeight.w700,
    ),
    headlineSmall: GoogleFonts.inter(
      fontSize: 24.sp,
      fontWeight: FontWeight.w600,
    ),
    titleLarge: GoogleFonts.inter(fontSize: 22.sp, fontWeight: FontWeight.w600),
    titleMedium: GoogleFonts.inter(
      fontSize: 20.sp,
      fontWeight: FontWeight.w700,
    ),
    titleSmall: GoogleFonts.inter(fontSize: 18.sp, fontWeight: FontWeight.w500),
    bodyLarge: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w400),
    bodyMedium: GoogleFonts.inter(fontSize: 14.sp, fontWeight: FontWeight.w400),
    bodySmall: GoogleFonts.inter(fontSize: 12.sp, fontWeight: FontWeight.w400),
    labelLarge: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w500),
    labelMedium: GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w500),
    labelSmall: GoogleFonts.inter(fontSize: 11.sp, fontWeight: FontWeight.w400),
  );
  static TextTheme darkTextTheme = TextTheme();
}
