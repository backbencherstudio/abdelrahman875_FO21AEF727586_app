import 'package:abdelrahman875_fo21aef727586/core/constants/icons.dart';
import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../home/view/widgets/custom_progress_container.dart';

class MyDeliveryScreen extends StatelessWidget {
  const MyDeliveryScreen({super.key});

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
              Icon(
                Icons.arrow_back_outlined,
                size: 24.h,
                color: AppColors.grayText,
              ),
              SizedBox(height: 12.h),
              Text(
                'Mes Livraisons',
                style: style.titleMedium?.copyWith(
                  color: AppColors.blackText,
                  fontWeight: FontWeight.w600,
                  fontSize: 20.sp,
                ),
              ),
              SizedBox(height: 12.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Indiquez le numéro de livraison',
                        style: style.bodyLarge?.copyWith(
                          color: AppColors.blackText,
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(height: 12.h),
                      TextFormField(
                        style: style.bodyMedium?.copyWith(
                          color: AppColors.blackText,
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Numéro de livraison',
                          hintStyle: style.bodyMedium?.copyWith(
                            color: AppColors.grayText,
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                          ),
                          prefixIcon: Padding(
                            padding: EdgeInsets.symmetric(vertical: 12.h),
                            child: Image.asset(
                              AppIcons.boitePng,
                              height: 24.h,
                              width: 24.h,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 20.h),

                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.containerColor2,
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(5.r), bottomLeft: Radius.circular(5.r))
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8.h),
                              child: Row(
                                children: [
                                  SvgPicture.asset(AppIcons.carSvg,height: 24.h,width: 24.h,),
                                  SizedBox(width: 4.w,),
                                  Text('Expédier',style: style.bodySmall?.copyWith(
                                    color: AppColors.blackText,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp,
                                  ),),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.containerColor7,
                              borderRadius: BorderRadius.only(topRight: Radius.circular(5.r), bottomRight: Radius.circular(5.r)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.add_circle_outline_rounded,size: 24.h,color: AppColors.whiteColor,),
                            ),
                          )
                        ],
                      ),

                      SizedBox(height: 18.h),
                      ...List.generate(5, (index) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 12.h),
                          child: ProgressContainer(),
                        );
                      }),


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
