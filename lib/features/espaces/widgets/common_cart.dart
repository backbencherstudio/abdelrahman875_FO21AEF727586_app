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
    return Padding(
      padding: const EdgeInsets.only(left: 17, right: 17, top: 17),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            alignment: Alignment.center,
            height: 95.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                width: 1,
                color: isSelected ? AppColors.blackColor : AppColors.borderColor,
              ),
              color: isSelected ? AppColors.blackColor : Colors.white,
            ),
            padding: EdgeInsets.only(left: 85.w, right: 16.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                    color: isSelected
                        ? AppColors.whiteColor
                        : AppColors.blackColor,
                  ),
                ),
                SizedBox(height: 6.h),
                Text(
                  subTitle,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.normal,
                    fontSize: 13,
                    color: isSelected
                        ? AppColors.whiteColor
                        : AppColors.textColor,
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            left: 17,
            top: (95.h / 2) - (58.h / 2),
            child: Container(
              height: 58.h,
              width: 58.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [AppColors.containerColor3, AppColors.onboadCon],
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
        ],
      ),
    );
  }
}

