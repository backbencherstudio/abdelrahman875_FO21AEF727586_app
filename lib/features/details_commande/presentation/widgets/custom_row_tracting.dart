import 'package:flutter/material.dart';

import '../../../../core/theme/src/theme_extension/color_pallete.dart';

class CustomRowTracking extends StatelessWidget {
  const CustomRowTracking({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: style.bodyMedium?.copyWith(
              color: AppColors.blackText,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Text(
          subtitle,
          style: style.bodyMedium?.copyWith(
            color: AppColors.textColor4,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
