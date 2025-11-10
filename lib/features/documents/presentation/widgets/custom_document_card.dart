import 'package:abdelrahman875_fo21aef727586/core/constants/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/images.dart';
import '../../../../core/theme/src/theme_extension/color_pallete.dart';


class CustomDocumentCard extends StatelessWidget {
  final String invoiceNumber;
  final String orderNumber;
  final String date;
  final String transportInfo;
  final String location;
  final Color cardColor;
  final VoidCallback? onSaveTap;

  const CustomDocumentCard({
    super.key,
    required this.invoiceNumber,
    required this.orderNumber,
    required this.date,
    required this.transportInfo,
    required this.location,
    this.cardColor = AppColors.containerColor16,
    this.onSaveTap,
  });

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;

    return Card(
      color: cardColor,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ===== Top Row =====
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  AppImages.docsPng,
                  height: 24.h,
                  width: 24.h,
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        invoiceNumber,
                        style: style.bodyMedium?.copyWith(
                          color: AppColors.blackText,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        orderNumber,
                        style: style.bodyMedium?.copyWith(
                          color: AppColors.grayText,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: onSaveTap,
                  child: Icon(
                    Icons.save_alt,
                    size: 24.h,
                    color: AppColors.grayText,
                  ),
                ),
              ],
            ),

            SizedBox(height: 10.h),

            // ===== Info Row =====
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.calendar_today_outlined,
                  size: 16.h,
                  color: AppColors.grayText,
                ),
                SizedBox(width: 2.w),
                Text(
                  date,
                  style: style.bodyMedium?.copyWith(
                    color: AppColors.grayText,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                _separator(),

                Image.asset(
                  AppIcons.blackboxPng,
                  height: 18.h,
                  width: 18.h,
                ),
                SizedBox(width: 2.w),
                Text(
                  transportInfo,
                  style: style.bodyMedium?.copyWith(
                    color: AppColors.grayText,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                _separator(),

                Image.asset(
                  AppImages.mapPinPng,
                  height: 18.h,
                  width: 18.h,
                ),
                SizedBox(width: 2.w),
                Text(
                  location,
                  style: style.bodyMedium?.copyWith(
                    color: AppColors.grayText,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _separator() => Padding(
    padding: EdgeInsets.symmetric(horizontal: 2.w),
    child: Text(
      '|',
      style: TextStyle(
        color: AppColors.grayText,
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
