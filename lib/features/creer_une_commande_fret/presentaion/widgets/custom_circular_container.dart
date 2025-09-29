import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theme/src/theme_extension/color_pallete.dart';

class CustomCircularContainer extends ConsumerWidget {
  const CustomCircularContainer({
    super.key,
    required this.title,
    required this.image,
    this.color,
    required this.borderColor,
    required this.onTap,
  });

  final String title;
  final Image? image;
  final Color? color;
  final Color borderColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final style = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: color,
              border: Border.all(
                color: borderColor,
              ),
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: EdgeInsets.all(8.r),
              child: image,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            title,
            style: style.bodyLarge?.copyWith(
              color: AppColors.blackColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
