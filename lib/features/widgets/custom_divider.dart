import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theme/src/theme_extension/color_pallete.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: Divider(
        height: 1.h,
        color: AppColors.borderColor6,
      ),
    );
  }
}