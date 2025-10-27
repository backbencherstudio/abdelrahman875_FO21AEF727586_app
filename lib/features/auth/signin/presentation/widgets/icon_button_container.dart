import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/src/theme_extension/color_pallete.dart';

class IconButtonContainer extends StatelessWidget {
  final String iconPath;
  final String label;
  // final double width;
  final VoidCallback? onTap;

  const IconButtonContainer({
    super.key,
    required this.iconPath,
    required this.label,
    // this.width = 160,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 160.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: AppColors.borderColor6),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(iconPath, height: 18.h, width: 18.w),
              SizedBox(width: 10.w),
              Text(
                label,
                style: style.bodyMedium?.copyWith(
                  color: AppColors.blackColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
