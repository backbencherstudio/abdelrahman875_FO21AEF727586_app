import 'package:abdelrahman875_fo21aef727586/core/constants/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/theme/src/theme_extension/color_pallete.dart';

class ProfileSettingScreen extends StatefulWidget {
  const ProfileSettingScreen({super.key});

  @override
  State<ProfileSettingScreen> createState() => _ProfileSettingScreenState();
}

class _ProfileSettingScreenState extends State<ProfileSettingScreen> {
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              SizedBox(height: 20.h,),
              Text('Settings',style: style.headlineSmall?.copyWith(
                color: AppColors.textColor1,
                fontWeight: FontWeight.w600,
              ),),
              SizedBox(height: 20.h,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Container(
                   decoration: BoxDecoration(
                     color: AppColors.transparentColor,
                     borderRadius: BorderRadius.circular(10.r),
                     border: Border.all(color: AppColors.containerColor3),
                   ),

                   child: Padding(
                     padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 8.h),
                     child: Column(
                       children: [
                         Image.asset(AppIcons.blackboxPng,height: 60.h,width: 60.w,),
                         SizedBox(height: 4.h,),
                         Text('Mes commandes',style: style.bodyMedium?.copyWith(
                           color: AppColors.blackText,
                           fontWeight: FontWeight.w500,
                         ),),
                       ],
                     ),
                   ),
                 ),
                 Container(
                   decoration: BoxDecoration(
                     color: AppColors.transparentColor,
                     borderRadius: BorderRadius.circular(10.r),
                     border: Border.all(color: AppColors.containerColor3),
                   ),

                   child: Padding(
                     padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 8.h),
                     child: Column(
                       children: [
                         Image.asset(AppIcons.capturePng,height: 60.h,width: 60.w,),
                         SizedBox(height: 4.h,),
                         Text('Tableau de bord',style: style.bodyMedium?.copyWith(
                           color: AppColors.blackText,
                           fontWeight: FontWeight.w500,
                         ),),
                       ],
                     ),
                   ),
                 ),
               ],
             )
            ],
          ),
        ),
      ),
    );
  }
}
