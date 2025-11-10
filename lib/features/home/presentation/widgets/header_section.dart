import 'package:abdelrahman875_fo21aef727586/core/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/icons.dart';
import '../../../../core/theme/src/theme_extension/color_pallete.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Row(
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
                  'Anas, Bernard',
                  style: style.titleSmall?.copyWith(
                    color: AppColors.blackText,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  'Ermont, France',
                  style: style.bodyMedium?.copyWith(
                    color: AppColors.grayText,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(width: 8.w),

        GestureDetector(
          onTap: (){
            context.push(RouteName.notificationScreen);
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.r),
              border: Border.all(color: AppColors.borderColor),
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  SvgPicture.asset(
                    AppIcons.notification,
                    height: 24.h,
                    width: 24.w,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                      height: 12.h,
                      width: 12.w,
                      decoration: BoxDecoration(
                        color: AppColors.containerColor,
                        borderRadius: BorderRadius.circular(100.r),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}