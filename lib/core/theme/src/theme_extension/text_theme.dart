import 'package:abdelrahman875_fo21aef727586/core/utils/utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class AppTextTheme {
  static TextTheme lightTextTheme(BuildContext context) {
    final bool isTablet = Utils.isTablet(context);

    // 💡 You can adjust tablet sizes here as needed
    final double headlineLargeSize = isTablet ? 38.sp : 28.sp;
    final double headlineMediumSize = isTablet ? 32.sp : 26.sp;
    final double headlineSmallSize = isTablet ? 28.sp : 24.sp;
    final double titleLargeSize = isTablet ? 26.sp : 22.sp;
    final double titleMediumSize = isTablet ? 24.sp : 20.sp;
    final double titleSmallSize = isTablet ? 22.sp : 18.sp;
    final double bodyLargeSize = isTablet ? 20.sp : 16.sp;
    final double bodyMediumSize = isTablet ? 18.sp : 14.sp;
    final double bodySmallSize = isTablet ? 16.sp : 12.sp;
    final double labelLargeSize = isTablet ? 16.sp : 14.sp;
    final double labelMediumSize = isTablet ? 14.sp : 12.sp;
    final double labelSmallSize = isTablet ? 13.sp : 11.sp;

    return TextTheme(
      headlineLarge: GoogleFonts.inter(
        fontSize: headlineLargeSize,
        fontWeight: FontWeight.w700,
      ),
      headlineMedium: GoogleFonts.inter(
        fontSize: headlineMediumSize,
        fontWeight: FontWeight.w700,
      ),
      headlineSmall: GoogleFonts.inter(
        fontSize: headlineSmallSize,
        fontWeight: FontWeight.w600,
      ),
      titleLarge: GoogleFonts.inter(
        fontSize: titleLargeSize,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: GoogleFonts.inter(
        fontSize: titleMediumSize,
        fontWeight: FontWeight.w700,
      ),
      titleSmall: GoogleFonts.inter(
        fontSize: titleSmallSize,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: GoogleFonts.inter(
        fontSize: bodyLargeSize,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: GoogleFonts.inter(
        fontSize: bodyMediumSize,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: GoogleFonts.inter(
        fontSize: bodySmallSize,
        fontWeight: FontWeight.w400,
      ),
      labelLarge: GoogleFonts.inter(
        fontSize: labelLargeSize,
        fontWeight: FontWeight.w500,
      ),
      labelMedium: GoogleFonts.inter(
        fontSize: labelMediumSize,
        fontWeight: FontWeight.w500,
      ),
      labelSmall: GoogleFonts.inter(
        fontSize: labelSmallSize,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  static TextTheme darkTextTheme(BuildContext context) {
    return lightTextTheme(context);
  }
}
