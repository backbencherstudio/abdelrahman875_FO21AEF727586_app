import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/icons.dart';
import '../../../../core/theme/src/theme_extension/color_pallete.dart';

class DeliveryStartCard extends StatelessWidget {
  const DeliveryStartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 94.h,
      decoration: BoxDecoration(
        color: AppColors.containerColor7,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Livraisons finalisées',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.greenText4,
              ),
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                Text(
                  '12',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.whiteColor,
                  ),
                ),
                Expanded(
                  child: SvgPicture.asset(
                    AppIcons.carSvg,
                    width: 18.w,
                    height: 18.h,
                    colorFilter: ColorFilter.mode(
                      AppColors.whiteColor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
