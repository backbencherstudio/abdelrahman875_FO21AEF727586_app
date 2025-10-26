import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/icons.dart';
import '../../../../core/theme/src/theme_extension/color_pallete.dart';
import '../../../../core/utils/utils.dart';

class VerifyOtpScreen extends StatefulWidget {

  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             // SizedBox(height: 20.h),
             GestureDetector(
               onTap: () {
                 if (context.canPop()) {
                   // ref.read(alreadyHaveAccountProvider.notifier).state = 0;
                   context.pop();
                 }
               },
               child: SvgPicture.asset(
                 AppIcons.arrowBackSvg,
                 height: Utils.isTablet(context) ? 30.h : 24.h,
                 width: Utils.isTablet(context) ? 30.w : 24.w,
               ),
             ),
             SizedBox(height: 10.h),
             Center(
               child: Column(
                 children: [
                   SvgPicture.asset(
                     AppIcons.carSvg,
                     height: Utils.isTablet(context) ? 45.h : 35.h,
                     width: Utils.isTablet(context) ? 85.h : 75.w,
                   ),
                   SizedBox(height: 10.h),
                   Text(
                     "DeliverApp",
                     style: style.headlineLarge?.copyWith(
                       color: AppColors.blackColor,
                       fontWeight: FontWeight.w700,
                     ),
                   ),
                   SizedBox(height: 10.h),
                   Text(
                     'Vérification',
                     style: style.headlineSmall?.copyWith(
                       color: AppColors.blackColor,
                       fontWeight: FontWeight.w500,
                     ),
                   ),
                 ],
               ),
             ),
             SizedBox(height: 20.h),
             Divider(thickness: 1, color: AppColors.borderColor6),
             SizedBox(height: 20.h),

             Center(
               child: Text(
                 textAlign: TextAlign.center,
                 "Nous vous avons envoyé un code à\nrandom3321@gmail.com",style: style.bodyMedium?.copyWith(
                   color: AppColors.blackColor,
                   fontWeight: FontWeight.w400
               ),),
             ),
             SizedBox(height: 20.h),
           ],
          ),
        ),
      ),
    );
  }
}
