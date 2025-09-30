import 'package:abdelrahman875_fo21aef727586/core/constants/icons.dart';
import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:abdelrahman875_fo21aef727586/features/widgets/primery_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rating_and_feedback_collector/rating_and_feedback_collector.dart';

import '../../riverpod/ratting_provider.dart';

void onAcceptTap(BuildContext context) {
  showDialog(
    context: context,
    builder: (_) {
      final style = Theme.of(context).textTheme;
      return Consumer(
        builder: (context, ref, _) {
          final rating = ref.watch(ratingProvider);
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.r),
            ),
            backgroundColor: Colors.white,
            elevation: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 24.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppIcons.carShipPng, width: 50.w, height: 50.h),
                  SizedBox(height: 8.h),
                  Text(
                    textAlign: TextAlign.center,
                    'Êtes-vous sûr(e) de\nchoisir ce transporteur ?',
                    style: style.titleSmall?.copyWith(
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Image.asset(AppIcons.profileImg, width: 100.w, height: 100.h),
                  SizedBox(height: 8.h),
                  RatingBar(
                    iconSize: 40,
                    allowHalfRating: false,
                    filledIcon: Icons.star,
                    emptyIcon: Icons.star_border,
                    filledColor: Colors.amber,
                    emptyColor: Colors.grey,
                    currentRating: rating,
                    onRatingChanged: (newRating) {
                      ref.read(ratingProvider.notifier).state = newRating;
                    },
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    textAlign: TextAlign.center,
                    'Le transporteur est prêt à prendre en\ncharge votre commande.\n\nConfirmez dès maintenant pour lancer la mission.',
                    style: style.bodyMedium?.copyWith(
                      color: AppColors.grayText5,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PrimaryButton(
                        width: 115.w,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                          vertical: 12.h,
                        ),
                        borderRadius: 12,
                        containerColor: AppColors.greenText2,
                        textStyle: style.bodyMedium?.copyWith(
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.w600,
                        ),
                        title: 'Accepter',
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      PrimaryButton(
                        width: 115.w,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                          vertical: 12.h,
                        ),
                        borderRadius: 12,
                        border: Border.all(color: AppColors.containerColor9),
                        containerColor: AppColors.transparentColor,
                        textStyle: style.bodyMedium?.copyWith(
                          color: AppColors.containerColor9,
                          fontWeight: FontWeight.w600,
                        ),
                        title: 'Annuler',
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}
