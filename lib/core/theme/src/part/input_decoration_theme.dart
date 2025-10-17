import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme_extension/color_pallete.dart';

class AppInputDecorationTheme {
  static TextTheme style = GoogleFonts.interTextTheme();
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    filled: true,
    fillColor: AppColors.containerColor12,
    hintStyle: style.bodyLarge?.copyWith(
      color: AppColors.grayText6,
      fontWeight: FontWeight.w400,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      // borderSide: BorderSide(color: AppColors.blackColor),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: BorderSide(color: AppColors.transparentColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      //borderSide: BorderSide(color: Color(0xFF6A42C2)),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
     borderSide: BorderSide(color: Colors.red),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
     // borderSide: BorderSide(color: Color(0xFFE9EAEC)),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
     // borderSide: BorderSide(color: Colors.red),
    ),

  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme();
}
