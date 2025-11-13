import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/icons.dart';

class TimeLine extends StatelessWidget {
  const TimeLine({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '17\nJuin',
          style: style.bodyMedium?.copyWith(
            color: Color(0xff76889A),
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
          ),
        ),
        SizedBox(width: 5.w),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xff5EB111),
          ),
          child: Padding(
            padding: EdgeInsets.all(4.r),
            child: Image.asset(AppIcons.thikPng, width: 12.w, height: 12.h),
          ),
        ),

        SizedBox(width: 8.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Confirmation d’enlèvement',
                style: style.bodyMedium?.copyWith(
                  color: Color(0xff21252C),
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                ),
              ),
              SizedBox(height: 5.h),
              Text(
                'Le livreur a bien récupéré le colis à Ermont.',
                style: style.bodyMedium?.copyWith(
                  color: Color(0xff76889A),
                  fontWeight: FontWeight.w700,
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
