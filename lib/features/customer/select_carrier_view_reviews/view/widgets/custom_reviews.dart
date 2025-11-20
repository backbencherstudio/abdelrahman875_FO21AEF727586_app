import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/icons.dart';
import '../../../../../core/theme/src/theme_extension/color_pallete.dart';

class CustomReviews extends StatelessWidget {
  const CustomReviews({
    super.key,
    required this.image,
    required this.name,
    required this.review,
    required this.rating,
  });

  final String image;
  final String name;
  final String review;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(image, width: 26.w, height: 26.h),
                SizedBox(width: 12.w),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff818385),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  rating,
                  style: TextStyle(
                    color: Color(0xff818385),
                    fontWeight: FontWeight.w600,
                    fontSize: 12.sp,
                  ),
                ),
                SizedBox(width: 8.w),
                Image.asset(
                  AppIcons.starPng,
                  height: 18.h,
                  width: 18.w,
                  color: Color(0xffEED12B),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 6.h),
        Text(
          review,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            color: AppColors.blackColor,
          ),
        ),
      ],
    );
  }
}
