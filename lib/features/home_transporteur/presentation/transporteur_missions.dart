import 'package:abdelrahman875_fo21aef727586/core/constants/images.dart';
import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:abdelrahman875_fo21aef727586/features/home/presentation/widgets/header_section.dart';
import 'package:abdelrahman875_fo21aef727586/features/mission_screen/presentation/widgets/custom_subtitle.dart';
import 'package:abdelrahman875_fo21aef727586/features/mission_screen/presentation/widgets/location_search_section.dart';
import 'package:abdelrahman875_fo21aef727586/features/mission_screen/presentation/widgets/on_accept_dialog.dart';
import 'package:abdelrahman875_fo21aef727586/features/widgets/primery_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/icons.dart';

class TransporteurMissionScreen extends StatefulWidget {
  const TransporteurMissionScreen({super.key});

  @override
  State<TransporteurMissionScreen> createState() => _TransporteurMissionScreenState();
}

class _TransporteurMissionScreenState extends State<TransporteurMissionScreen> {
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderSection(),
              SizedBox(height: 32.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Missions',
                        style: style.headlineSmall?.copyWith(
                          color: AppColors.grayText2,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 18.h),
                      Text(
                        'Des missions faites pour vous.',
                        style: style.bodyLarge?.copyWith(
                          color: AppColors.grayText,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 18.h),

                      LocationSearchSection(),
                      SizedBox(height: 18.h),

                      Row(
                        children: [
                          Container(
                            width: 110.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              color: AppColors.containerColor10.withAlpha(30),
                              border: Border.all(
                                color: AppColors.transparentColor,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 16.w,
                                vertical: 8.h,
                              ),
                              child: Center(
                                child: Text(
                                  'Filter',
                                  style: style.bodyLarge?.copyWith(
                                    color: AppColors.containerColor7,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 12.w),
                          Container(
                            width: 110.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              color: AppColors.transparentColor,
                              border: Border.all(
                                color: AppColors.containerColor7,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 8.w,
                                vertical: 8.h,
                              ),
                              child: Center(
                                child: Text(
                                  'A proximité',
                                  style: style.bodyLarge?.copyWith(
                                    color: AppColors.containerColor7,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 18.h),
                      Column(
                        children: List.generate(6, (index) {
                          return Padding(
                            padding: EdgeInsets.only(bottom: 12.h),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                color: AppColors.containerColor8,
                                border: Border.all(
                                  color: AppColors.borderColor3,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 26.w,
                                  vertical: 12.h,
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '1 sept 2025 - CM98043',
                                          style: style.bodyMedium
                                              ?.copyWith(


                                            color:
                                            AppColors.blackText,
                                            fontWeight:
                                            FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(width: 8.w),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              100.r,
                                            ),
                                            color: AppColors.containerColor9,
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(4.0),
                                            child: Stack(
                                              children: [
                                                Icon(
                                                  Icons.close,
                                                  size: 16.r,
                                                  color: AppColors.whiteColor,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            children: [
                                              CustomSubTitle(imagePath:  AppIcons.blackboxPng, info: 'Transporteur 32122',),
                                              SizedBox(height: 8.h),
                                              CustomSubTitle(imagePath: AppIcons.blackboxPng, info: '2 septembre 2025',),
                                              SizedBox(height: 8.h),
                                              CustomSubTitle(imagePath: AppIcons.blackboxPng, info: 'Lyon - Paris',),
                                              SizedBox(height: 8.h),
                                              CustomSubTitle(imagePath: AppIcons.blackboxPng, info: 'Lyon - Paris',),
                                            ],
                                          ),
                                        ),

                                        Image.asset(
                                          AppImages.boxPng,
                                          width: 115.w,
                                          height: 115.h,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 12.h),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: PrimaryButton(
                                            title: 'Accepter',
                                            containerColor:
                                            AppColors.greenText2,
                                            textStyle: style.bodyLarge
                                                ?.copyWith(
                                              color: AppColors.whiteColor,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            borderRadius: 12.r,
                                            onTap: () {
                                              onAcceptTap(context);
                                            },
                                          ),
                                        ),
                                        SizedBox(width: 12.w),
                                        Expanded(
                                          child: PrimaryButton(
                                            title: 'Refuser',
                                            textStyle: style.bodyLarge
                                                ?.copyWith(
                                              color: AppColors.containerColor9,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            borderRadius: 12.r,
                                            containerColor: AppColors.transparentColor,
                                            border: Border.all(color: AppColors.containerColor9),
                                            onTap: () {},
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
