import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:abdelrahman875_fo21aef727586/features/widgets/primery_button.dart';
import 'package:flutter/material.dart' hide Velocity;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/icons.dart';
import '../../../../core/routes/route_name.dart';

import 'widgets/velocity.dart';

class FixedPrice extends StatefulWidget {
  const FixedPrice({super.key});

  @override
  State<FixedPrice> createState() => _FixedPriceState();
}

class _FixedPriceState extends State<FixedPrice> {
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SizedBox(height: 12.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        Image.asset(AppIcons.arrowBackPng, width: 24.w),
                        SizedBox(width: 2.w),
                        Text(
                          'Retour',
                          style: style.bodyLarge?.copyWith(
                            color: AppColors.containerColor7,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Annuler',
                      style: style.bodyLarge?.copyWith(
                        color: AppColors.containerColor7,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 24.h),
                    Text("Fixez votre prix", style: style.headlineSmall),
                    SizedBox(height: 55),
                    Velocity(), // Use the imported velocity widget
                    SizedBox(height: 50.h),
                    Text(
                      "Le tarif indiqué correspond au minimum \n "
                      "calculé selon la distance. Vous pouvez \n "
                      "l’augmenter afin de trouver un \n "
                      "transporteur plus rapidement.",
                      style: style.bodyMedium,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 220.h),

                    PrimaryButton(
                      title: 'Valider le Prix',
                      width: 240.w,
                      padding: EdgeInsets.all(16.r),
                      textStyle: style.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.whiteColor,
                      ),
                      containerColor: AppColors.blackColor,
                      onTap: () {
                        context.push(RouteName.orderConfirmScreen);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
