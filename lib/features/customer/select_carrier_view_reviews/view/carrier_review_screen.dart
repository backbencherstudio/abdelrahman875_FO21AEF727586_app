import 'package:abdelrahman875_fo21aef727586/features/customer/select_carrier_view_reviews/view/widgets/custom_reviews.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/icons.dart';
import '../../../../core/routes/route_name.dart';
import '../../../../core/theme/src/theme_extension/color_pallete.dart';

class CarrierReviewScreen extends StatefulWidget {
  const CarrierReviewScreen({super.key});

  @override
  State<CarrierReviewScreen> createState() => _CarrierReviewScreenState();
}

class _CarrierReviewScreenState extends State<CarrierReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.r),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  context.push(RouteName.carrierMissionScreen);
                },
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Icon(
                    Icons.arrow_back_outlined,
                    color: AppColors.blackColor,
                    size: 20.sp,
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Image.asset(AppIcons.profileImg, width: 64.w, height: 64.h),
              SizedBox(height: 8.h),
              Text(
                'Transporteur 32122',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff3D3D3D),
                ),
              ),
              SizedBox(height: 8.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: AppColors.containerColor15,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.w,
                        vertical: 4.h,
                      ),
                      child: Row(
                        children: [
                          Text(
                            '35 avis',
                            style: TextStyle(
                              color: AppColors.blackText,
                              fontWeight: FontWeight.w600,
                              fontSize: 12.sp,
                            ),
                          ),
                          SizedBox(width: 8.w),
                          Image.asset(
                            AppIcons.reviewPng,
                            height: 18.h,
                            width: 18.w,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: AppColors.containerColor15,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.w,
                        vertical: 4.h,
                      ),
                      child: Row(
                        children: [
                          Text(
                            '4.5',
                            style: TextStyle(
                              color: AppColors.blackText,
                              fontWeight: FontWeight.w600,
                              fontSize: 12.sp,
                            ),
                          ),
                          SizedBox(width: 8.w),
                          Image.asset(
                            AppIcons.starPng,
                            height: 18.h,
                            width: 18.w,
                            color: Color(0xffEED12B),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              Divider(color: Color(0xffE9E9E9)),
              SizedBox(height: 8.h),

              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: AppColors.blackColor,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.w,
                        vertical: 4.w,
                      ),
                      child: Text(
                        'Récents',
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: AppColors.containerColor15,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.w,
                        vertical: 4.w,
                      ),
                      child: Text(
                        'les plus favorables',
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.grayText5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.h),
             Expanded(
               child: SingleChildScrollView(
                 child: Column(
                   children: [

                     CustomReviews(
                       image: AppIcons.profileImg,
                       name: 'Alban.u',
                       rating: '4.5',
                       review:
                       'La livraison avec ce transporteur s’est déroulé de la meilleure façon possible. Je recommande formtement.',
                     ),

                     SizedBox(height: 15.h),
                     CustomReviews(
                       image: AppIcons.profileImg,
                       name: 'Laurine.M',
                       rating: '4.5',
                       review:
                       'Merci pour votre réactivité et professionnalisme. Je recommande ce transporteur à tous.',
                     ),

                     SizedBox(height: 15.h),
                     CustomReviews(
                       image: AppIcons.profileImg,
                       name: 'Marc.T',
                       rating: '4.5',
                       review:
                       'Le service était excellent et le colis est arrivé dans les temps. Très satisfait!',
                     ),
                     SizedBox(height: 15.h),
                     CustomReviews(
                       image: AppIcons.profileImg,
                       name: 'Marc.T',
                       rating: '4.5',
                       review:
                       'Le service était excellent et le colis est arrivé dans les temps. Très satisfait!',
                     ),

                     SizedBox(height: 15.h),
                     CustomReviews(
                       image: AppIcons.profileImg,
                       name: 'Marc.T',
                       rating: '4.5',
                       review:
                       'Le service était excellent et le colis est arrivé dans les temps. Très satisfait!',
                     ),

                     SizedBox(height: 15.h),
                     CustomReviews(
                       image: AppIcons.profileImg,
                       name: 'Marc.T',
                       rating: '4.5',
                       review:
                       'Le service était excellent et le colis est arrivé dans les temps. Très satisfait!',
                     ),
                     SizedBox(height: 15.h),
                     CustomReviews(
                       image: AppIcons.profileImg,
                       name: 'Marc.T',
                       rating: '4.5',
                       review:
                       'Le service était excellent et le colis est arrivé dans les temps. Très satisfait!',
                     ),
                   ],
                 ),
               ),
             )
            ],
          ),
        ),
      ),
    );
  }
}
