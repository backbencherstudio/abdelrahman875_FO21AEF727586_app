import 'package:flutter/material.dart';
import '../../../../core/theme/src/theme_extension/color_pallete.dart';

class InputLabel extends StatelessWidget {
  const InputLabel({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Text(
      title,
      style: style.bodyLarge?.copyWith(
        color: AppColors.boxColor2,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}