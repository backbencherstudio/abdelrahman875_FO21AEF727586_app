import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';

class CommonCartStack extends StatelessWidget {
  final String title;
  final String subTitle;
  final String iconPth;
  final bool isSelected;

  const CommonCartStack({
    super.key,
    required this.title,
    required this.subTitle,
    required this.iconPth,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
    //  alignment: Alignment.center,
      height: 110.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          width: 1,
          color: isSelected ? AppColors.blackColor : AppColors.borderColor,
        ),
        color: isSelected ? AppColors.blackColor : Colors.white,
      ),

      child: Padding(
        padding: EdgeInsets.all(10.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Container(
                width: 50.w,
                height: 50.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [AppColors.containerColor7, AppColors.containerColor14],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Center(
                  child: Image.asset(
                    iconPth,
                    width: 25.w,
                    height: 25.h,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontWeight: FontWeight.w500,
                    // fontSize: 17.sp,
                    color: isSelected
                        ? AppColors.whiteColor
                        : AppColors.blackColor,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  subTitle,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w400,
                    color: isSelected
                        ? AppColors.whiteColor
                        : AppColors.textColor,
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

