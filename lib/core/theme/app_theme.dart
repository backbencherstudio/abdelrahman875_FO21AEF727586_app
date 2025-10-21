import 'package:abdelrahman875_fo21aef727586/core/theme/src/part/input_decoration_theme.dart';
import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/text_theme.dart';
import 'package:flutter/material.dart';




class AppTheme {
  AppTheme._();

  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.whiteColor,
      inputDecorationTheme: AppInputDecorationTheme.lightInputDecorationTheme,
      textTheme: AppTextTheme.lightTextTheme(context),
      colorScheme: const ColorScheme.light(),
      useMaterial3: true,
    );
  }

  static ThemeData darkTheme(BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.blackColor,
      inputDecorationTheme: AppInputDecorationTheme.darkInputDecorationTheme,
      textTheme: AppTextTheme.darkTextTheme(context),
      colorScheme: const ColorScheme.dark(),
      useMaterial3: true,
    );
  }
}
