import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theme/src/theme_extension/color_pallete.dart';

class CustomSubTitle extends StatelessWidget {
  const CustomSubTitle({super.key, required this.imagePath, required this.info});

final String imagePath;
final String info;
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Row(
      children: [
        Image.asset(imagePath, height: 12.h, width: 12.w),
        SizedBox(width: 6.w),
        Text(
         info,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: style.bodySmall?.copyWith(
            color: AppColors.textColor1,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
