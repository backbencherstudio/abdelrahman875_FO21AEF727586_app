import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/images.dart';
import '../../../../core/theme/src/theme_extension/color_pallete.dart';

class ImageBoxSection extends StatelessWidget {
  const ImageBoxSection({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(18.r)),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            AppImages.shippingPng,
            width: 340.w,
            height: 160.h,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Padding(
              padding: EdgeInsets.only(left: 24.w, bottom: 24.h),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Faire une Nouvelle\nCommande',
                    style: style.titleSmall?.copyWith(
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'Envoyez vos colis dès maintenant',
                    style: style.bodyMedium?.copyWith(
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
