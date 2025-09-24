import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppInputDecorationTheme {
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    filled: true,
    fillColor: Color(0xFFFFFFFF),
    hintStyle: GoogleFonts.nunito(
      color: Color(0xFF777980),
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(99.r),
      borderSide: BorderSide(color: Color(0xFFE9EAEC)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(99.r),
      borderSide: BorderSide(color: Color(0xFF6A42C2)),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(99.r),
      borderSide: BorderSide(color: Colors.red),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(99.r),
      borderSide: BorderSide(color: Color(0xFFE9EAEC)),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme();
}
