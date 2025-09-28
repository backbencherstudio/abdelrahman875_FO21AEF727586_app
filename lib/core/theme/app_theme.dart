import 'package:abdelrahman875_fo21aef727586/core/theme/src/part/input_decoration_theme.dart';
import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/text_theme.dart';
import 'package:flutter/material.dart';


class AppTheme {
  AppTheme._();
  static ThemeData lightTheme = ThemeData(
    inputDecorationTheme: AppInputDecorationTheme.lightInputDecorationTheme,
    scaffoldBackgroundColor: AppColor.white,
    textTheme: AppTextTheme.lightTextTheme,
  );
  static ThemeData darkTheme = ThemeData();
}
