// ignore_for_file: camel_case_types

import 'package:abdelrahman875_fo21aef727586/core/routes/route_name.dart';
import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:abdelrahman875_fo21aef727586/features/widgets/common_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class onboardContent extends StatelessWidget {
  final String title;
  final String subTitle;
  final String imgUrl;
  final PageController pageController;

  const onboardContent({
    super.key,

    required this.title,
    required this.subTitle,
    required this.imgUrl,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(imgUrl, fit: BoxFit.cover, height: 130.h, width: 219.w),
        Spacer(),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
            fontWeight: FontWeight.w600,

            color: AppColors.primaryColor,
            fontSize: 24,
          ),
        ),
        SizedBox(height: 16.h),

        Text(
          subTitle,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
            fontWeight: FontWeight.normal,
            fontSize: 16,
          ),
        ),
        Spacer(),
        CommonBtn(
          title: "Suivant",
          onPressed: () {
            if (pageController == 2) {  // replace `isLastPage` logic with your check
              context.go(RouteName.signInScreen); // or .push(...) based on your UX needs
            } else {
              // Advance to the next page
              pageController.nextPage(
                curve: Curves.bounceIn,
                duration: Duration(milliseconds: 1000),
              );
            }
          },
        ),

        Spacer(),
      ],
    );
  }
}
