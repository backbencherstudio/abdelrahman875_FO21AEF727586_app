import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/icons.dart';
import '../../../../core/theme/src/theme_extension/color_pallete.dart';

class CustomSubTitle extends StatelessWidget {
  const CustomSubTitle({super.key});


  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Row(
      children: [
        Image.asset(AppIcons.blackboxPng, height: 18.h, width: 18.w),
        SizedBox(width: 8.w),
        Text(
          'Transporteur 32103',
          style: style.bodySmall?.copyWith(
            color: AppColors.textColor1,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
