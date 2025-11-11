// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/src/theme_extension/color_pallete.dart';

class CustomTitleHeader extends StatelessWidget {
  const CustomTitleHeader({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: style.bodyLarge?.copyWith(
            color: AppColors.blackText,
            fontWeight: FontWeight.w600,
          ),
        ),
        Row(
          children: [
            Container(
              height: 24.h,
              width: 24.w,
              decoration: BoxDecoration(
                color: AppColors.containerColor3,
                borderRadius: BorderRadius.circular(100.r),
              ),
              child: Icon(Icons.add, color: AppColors.whiteColor, size: 12.r),
            ),
            SizedBox(width: 12.w),
            Container(
              height: 24.h,
              width: 24.w,
              decoration: BoxDecoration(
                color: AppColors.containerColor4.withOpacity(0.1),
                borderRadius: BorderRadius.circular(100.r),
              ),
              child: Icon(
                Icons.arrow_right_alt_outlined,
                color: AppColors.blackText,
                size: 12.r,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
