import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/icons.dart';
import '../../../../core/theme/src/theme_extension/color_pallete.dart';

class CustomCircularContainer extends StatelessWidget {
  const CustomCircularContainer({
    super.key,
    required this.title,
    required this.image,
    this.color,
    this.borderColor,
  });

  final String title;
  final Image? image;
  final Color? color;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: color ?? AppColors.containerColor6,
            border: Border.all(
              color: borderColor ?? AppColors.borderColor2.withAlpha(20),
            ),
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: EdgeInsets.all(8.r),
            child:
                image ??
                Image.asset(AppIcons.shipPng, height: 50.h, width: 50.w),
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          title,
          style: style.bodyLarge?.copyWith(
            color: AppColors.borderColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
