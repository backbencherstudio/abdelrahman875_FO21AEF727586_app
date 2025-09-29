import 'package:abdelrahman875_fo21aef727586/core/constants/icons.dart';
import 'package:abdelrahman875_fo21aef727586/features/setting_screen/presentation/widgets/custom_setting_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theme/src/theme_extension/color_pallete.dart';
import '../models/setting_item_model.dart';

class ProfileSettingScreen extends StatefulWidget {
  const ProfileSettingScreen({super.key});

  @override
  State<ProfileSettingScreen> createState() => _ProfileSettingScreenState();
}

bool notificationOn = false;

class _ProfileSettingScreenState extends State<ProfileSettingScreen> {
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Text(
                'Settings',
                style: style.headlineSmall?.copyWith(
                  color: AppColors.textColor1,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.transparentColor,
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(
                                color: AppColors.containerColor3,
                              ),
                            ),

                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20.w,
                                vertical: 8.h,
                              ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    AppIcons.blackboxPng,
                                    height: 60.h,
                                    width: 60.w,
                                  ),
                                  SizedBox(height: 4.h),
                                  Text(
                                    'Mes commandes',
                                    style: style.bodyMedium?.copyWith(
                                      color: AppColors.blackText,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.transparentColor,
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(
                                color: AppColors.containerColor3,
                              ),
                            ),

                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 16.w,
                                vertical: 8.h,
                              ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    AppIcons.capturePng,
                                    height: 60.h,
                                    width: 60.w,
                                  ),
                                  SizedBox(height: 4.h),
                                  Text(
                                    'Tableau de bord',
                                    style: style.bodyMedium?.copyWith(
                                      color: AppColors.blackText,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 20.h),
                      Column(
                        children: itemsSetting.map((item) {
                          return Padding(
                            padding: EdgeInsets.only(bottom: 8.r),
                            child: CustomSettingItem(
                              title: item.title,
                              iconPath: item.iconPath,
                              hasSwitch: item.hasSwitch,
                            ),
                          );
                        }).toList(),
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
