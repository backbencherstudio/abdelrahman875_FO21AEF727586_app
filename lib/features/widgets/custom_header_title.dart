import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/icons.dart';
import '../../core/theme/src/theme_extension/color_pallete.dart';

class CustomHeaderTitle extends StatelessWidget {
  const CustomHeaderTitle({
    super.key, required this.title,
    this.showTick = true,
  });

  final String title;
  final bool? showTick;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 16.h),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_outlined,
              size: 24.w,
              color: AppColors.blackColor,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Color(0xffF3F3F3),
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
            child: Row(
              children: [
                if (showTick!) ...[
                  Image.asset(AppIcons.tickPng, width: 24.w, height: 24.h),
                  SizedBox(width: 10.w),
                ],
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff353535),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}