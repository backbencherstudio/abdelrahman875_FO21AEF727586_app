import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/src/theme_extension/color_pallete.dart';
import '../../../widgets/primery_button.dart';

class CustomNotificationCard extends StatelessWidget {
  final String timeAgo;
  final String title;
  final Color cardColor;
  final bool showButton;
  final String? buttonText;
  final VoidCallback? onButtonTap;

  const CustomNotificationCard({
    super.key,
    required this.timeAgo,
    required this.title,
    this.cardColor = AppColors.containerColor16,
    this.showButton = true,
    this.buttonText,
    this.onButtonTap,
  });

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;

    return Card(
      color: cardColor,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
      child: Padding(
        padding: EdgeInsets.all(10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  timeAgo,
                  style: style.bodySmall?.copyWith(
                    color: AppColors.grayText6,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.notifyRed,
                  ),
                  padding: const EdgeInsets.all(4),
                  child: Icon(
                    Icons.close_outlined,
                    color: AppColors.whiteColor,
                    size: 24.h,
                  ),
                ),
              ],
            ),

            SizedBox(height: 10.h),

            Text(
              title,
              style: style.bodyMedium?.copyWith(
                color: AppColors.blackText,
                fontWeight: FontWeight.w500,
                fontSize: 13.sp,
              ),
            ),

            if (showButton) ...[
              SizedBox(height: 10.h),
              PrimaryButton(
                title: buttonText ?? 'Continuer',
                width: 105.w,
                containerColor: AppColors.borderColor2,
                padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 10.w),
                textStyle: style.bodyMedium?.copyWith(
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 13.sp,
                ),
                onTap: onButtonTap ?? () {},
              ),
            ],
          ],
        ),
      ),
    );
  }
}
