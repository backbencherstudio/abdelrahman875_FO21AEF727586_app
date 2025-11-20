import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:abdelrahman875_fo21aef727586/features/customer/select_carrier_view_reviews/view/widgets/find_carrier_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/icons.dart';

class CarrierMissionScreen extends StatefulWidget {
  const CarrierMissionScreen({super.key});

  @override
  State<CarrierMissionScreen> createState() => _CarrierMissionScreenState();
}

class _CarrierMissionScreenState extends State<CarrierMissionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.pop();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.grayText.withAlpha(70),
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.r),
                            child: Image.asset(
                              AppIcons.whiteArrowBackPng,
                              width: 24.w,
                              height: 24,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Trouver un Transporteur',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headlineSmall
                              ?.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp,
                              ),
                        ),
                      ),
                      SizedBox(width: 38.w),
                    ],
                  ),

                  SizedBox(height: 12.h),
                  Text(
                    'Des transporteurs prêts à prendre en charge vos colis, en toute sécurité. ',
                    style: TextStyle(
                      color: Color(0xff585B5E),
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(6, (index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 12.h),
                        child: FindCarrierCard(),
                      );
                    }),
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
