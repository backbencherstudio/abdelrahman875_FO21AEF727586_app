import 'package:abdelrahman875_fo21aef727586/core/constants/images.dart';
import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:abdelrahman875_fo21aef727586/features/home/presentation/widgets/header_section.dart';
import 'package:abdelrahman875_fo21aef727586/features/mission_screen/presentation/widgets/custom_subtitle.dart';
import 'package:abdelrahman875_fo21aef727586/features/mission_screen/presentation/widgets/location_search_section.dart';
import 'package:abdelrahman875_fo21aef727586/features/widgets/primery_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/icons.dart';

class MissionScreen extends StatefulWidget {
  const MissionScreen({super.key});

  @override
  State<MissionScreen> createState() => _MissionScreenState();
}

class _MissionScreenState extends State<MissionScreen> {
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
                        'Trouver un Transporteur',
                        style: style.headlineSmall?.copyWith(
                          color: AppColors.grayText2,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 18.h),
                      Text(
                        'Des transporteurs prêts à prendre en charge vos colis, en toute sécurité.',
                        style: style.bodyLarge?.copyWith(
                          color: AppColors.grayText,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 18.h),

                      LocationSearchSection(),

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
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Anas, Bernard',
                                                  style: style.titleSmall
                                                      ?.copyWith(
                                                        color:
                                                            AppColors.blackText,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                                SizedBox(height: 4.h),
                                                Text(
                                                  'Ermont, France',
                                                  style: style.bodyMedium
                                                      ?.copyWith(
                                                        color:
                                                            AppColors.grayText,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ],
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
                                              CustomSubTitle(),
                                              SizedBox(height: 8.h),
                                              CustomSubTitle(),
                                              SizedBox(height: 8.h),
                                              CustomSubTitle(),
                                            ],
                                          ),
                                        ),

                                        Image.asset(
                                          AppImages.worldPng,
                                          width: 135.w,
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
                                            onTap: () {},
                                          ),
                                        ),
                                        SizedBox(width: 12.w),
                                        Expanded(
                                          child: PrimaryButton(
                                            title: 'Voir plus',
                                            textStyle: style.bodyLarge
                                                ?.copyWith(
                                                  color: AppColors.greenText3,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                            borderRadius: 12.r,
                                            containerColor: AppColors.greenText3
                                                .withOpacity(0.3),
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


