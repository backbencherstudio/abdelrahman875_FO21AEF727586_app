// ignore_for_file: camel_case_types, deprecated_member_use

import 'package:abdelrahman875_fo21aef727586/core/routes/route_name.dart';
import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:abdelrahman875_fo21aef727586/features/onboading/riverpod/onboad_riverpod.dart';
import 'package:abdelrahman875_fo21aef727586/features/widgets/common_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
        SizedBox(
           height: 219.h,
            width: 219.h,
          child: Stack(
            children: [
           Container(
            height: 186.h,
            width: 186.h,
            decoration: BoxDecoration(
            color: Color(0xFF63CAE1).withOpacity(0.13),
              shape: BoxShape.circle),
           ),
              Positioned(
                bottom: 60,
                child: Image.asset(imgUrl, )),
            
            ],
            
          ),
        ),
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

        Consumer(
          builder: (context, ref, child) {
            return CommonBtn(
              title: "Suivant",
              onPressed: () {
                pageController.nextPage(
                  curve: Curves.ease,
                  duration: Duration(milliseconds: 500),
                );
                final onboadState = ref.watch(onboadingProvider);
                if (onboadState.index == 2) {
                  context.go(RouteName.espacesScreen);
                }
              },
            );
          },
        ),

        Spacer(),
      ],
    );
  }
}
