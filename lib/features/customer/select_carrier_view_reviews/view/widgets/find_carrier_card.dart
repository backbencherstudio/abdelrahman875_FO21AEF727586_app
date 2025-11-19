import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/icons.dart';
import '../../../../../core/constants/images.dart';
import '../../../../../core/theme/src/theme_extension/color_pallete.dart';
import '../../../../widgets/custom_subtitle.dart';
import '../../../../widgets/primery_button.dart';
import 'on_accept_dialog.dart';

class FindCarrierCard extends StatelessWidget {
  const FindCarrierCard({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: AppColors.containerColor2.withValues(alpha: 0.5),
        border: Border.all(color: AppColors.borderColor3),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 12.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      AppIcons.profileImg,
                      height: 36.h,
                      width: 36.w,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 12.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nouvelle demande',
                          style: style.titleSmall?.copyWith(
                            color: AppColors.grayText,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          '#HWDSF78',
                          style: style.bodyMedium?.copyWith(
                            color: AppColors.blackText,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 8.w),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: AppColors.whiteColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.w,
                      vertical: 4.h,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Avis',
                          style: TextStyle(
                            color: AppColors.blackText,
                            fontWeight: FontWeight.w600,
                            fontSize: 12.sp,
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Image.asset(
                          AppIcons.starPng,
                          height: 18.h,
                          width: 18.w,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      CustomSubTitle(
                        imagePath: AppIcons.blackboxPng,
                        info: 'Transporteur 32122',
                      ),
                      SizedBox(height: 12.h),
                      CustomSubTitle(
                        imagePath: AppIcons.calenderPng,
                        info: '2 septembre 2025',
                      ),
                      SizedBox(height: 12.h),
                      CustomSubTitle(
                        imagePath: AppIcons.mapPinPng,
                        info: 'Lyon - Paris',
                      ),
                    ],
                  ),
                ),

                Image.asset(AppImages.worldPng, width: 115.w, height: 115.h),
              ],
            ),
            SizedBox(height: 12.h),
            Row(
              children: [
                Expanded(
                  child: PrimaryButton(
                    title: 'Accepter',
                    containerColor: AppColors.greenText2,
                    textStyle: style.bodyLarge?.copyWith(
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.w600,
                    ),
                    padding: EdgeInsets.symmetric(vertical: 6.h),
                    borderRadius: 12.r,
                    onTap: () {
                      onAcceptTap(context);
                    },
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: PrimaryButton(
                    title: 'Refuser',
                    textStyle: style.bodyLarge?.copyWith(
                      color: AppColors.redText,
                      fontWeight: FontWeight.w600,
                    ),
                    padding: EdgeInsets.symmetric(vertical: 6.h),
                    borderRadius: 12.r,
                    containerColor: AppColors.containerColor17.withAlpha(30),
                    onTap: () {},
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
