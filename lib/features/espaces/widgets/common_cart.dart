import 'package:abdelrahman875_fo21aef727586/core/constants/icons.dart';
import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CommonCart extends StatelessWidget {
  final String title;
  final String subTitle;
  final String iconPth;
  const CommonCart({super.key, required this.title, required this.subTitle, required this.iconPth});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 17, right: 17, top: 17),
      child: Container(
        alignment: Alignment.center,
        height: 95.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(width: 1, color: AppColors.borderColor),
        ),
        child: ListTile(
          leading: Container(
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
              child: SvgPicture.asset(
                iconPth,
                width: 25.w,
                height: 25.h,
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text(
        title,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 17,
              color: AppColors.blackColor,
            ),
          ),
          subtitle: Text(
        subTitle,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontWeight: FontWeight.normal,
              fontSize: 13,
              color: AppColors.textColor,
            ),
          ),
        ),
      ),
    );
  }
}
