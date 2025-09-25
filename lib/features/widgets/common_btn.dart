import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theme/src/theme_extension/color_pallete.dart';

class CommonBtn extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const CommonBtn({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme.headlineSmall;
    return GestureDetector(
      onTap: onPressed,
      
      child: Container(
        alignment: Alignment.center,
        height: 56.h,
        width: 335.w,
        decoration: BoxDecoration(color: AppColor.primaryColor,
        borderRadius: BorderRadius.circular(8.0.r)
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Text(title,style:theme!.copyWith(fontWeight: FontWeight.w600,color: AppColor.white) ,),
        ),
      ),
    );
  }
}
