import 'package:abdelrahman875_fo21aef727586/core/routes/route_name.dart';
import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:abdelrahman875_fo21aef727586/features/customer/home/view/widgets/custom_list_tile.dart';
import 'package:abdelrahman875_fo21aef727586/features/customer/home/view/widgets/custom_progress_container.dart';
import 'package:abdelrahman875_fo21aef727586/features/customer/home/view/widgets/custom_title_header.dart';
import 'package:abdelrahman875_fo21aef727586/features/customer/home/view/widgets/grid_section.dart';
import 'package:abdelrahman875_fo21aef727586/features/customer/home/view/widgets/header_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constants/icons.dart';
import '../../../core/constants/images.dart';
import '../../mission_screen/presentation/widgets/custom_subtitle.dart';

class TrackHomeDemandesScreen extends StatefulWidget {
  const TrackHomeDemandesScreen({super.key});

  @override
  State<TrackHomeDemandesScreen> createState() =>
      _TrackHomeDemandesScreenState();
}

class _TrackHomeDemandesScreenState extends State<TrackHomeDemandesScreen> {
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
                        'Suivre mon colis',
                        style: style.headlineSmall?.copyWith(
                          color: AppColors.grayText2,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 18.h),

                      TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.whiteColor,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.borderColor3,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.borderColor3,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.borderColor3,
                            ),
                          ),

                          prefixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 12.w,
                                  top: 12.h,
                                  bottom: 12.h,
                                ),
                                child: SvgPicture.asset(
                                  AppIcons.locationSearchingSvg,
                                  height: 24.h,
                                  width: 24.w,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(width: 12.w),
                              Text(
                                '|',
                                style: style.bodyLarge?.copyWith(
                                  color: AppColors.grayText3,
                                  fontWeight: FontWeight
                                      .w500, // Added font weight for better visibility
                                ),
                              ),
                            ],
                          ),
                          hintText: '#130310011',
                          suffixIcon: Padding(
                            padding: EdgeInsets.only(
                              right: 12.w,
                              top: 12.h,
                              bottom: 12.h,
                            ),
                            child: SvgPicture.asset(
                              AppIcons.qrCodeScannerSvg,
                              height: 24.h,
                              width: 24.w,
                            ),
                          ),
                        ),
                      ),

                      GridSection(),
                      SizedBox(height: 18.h),
                      Column(
                        children: List.generate(2, (index) {
                          return Padding(
                            padding: EdgeInsets.only(bottom: 12.h),
                            child: GestureDetector(
                              onTap: () {
                                context.push(RouteName.paiementScreen);
                              },
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
                                    horizontal: 16.w,
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
                                                    'Nouvelle propositions reçues !',
                                                    style: style.bodyMedium
                                                        ?.copyWith(
                                                          color:
                                                              AppColors.grayText,
                                                        ),
                                                  ),
                                                  SizedBox(height: 4.h),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        '#HWDSF77',
                                                        style: style.bodyLarge
                                                            ?.copyWith(
                                                              color:
                                                                  AppColors.blackText,
                                                              fontWeight:
                                                                  FontWeight.w600,
                                                            ),
                                                      ),

                                                      SizedBox(width: 16.w),
                                                      Container(
                                                        decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.circular(12.r),
                                                          color: AppColors.containerColor11.withAlpha(50),
                                                        ),
                                                        child: Padding(
                                                          padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 12.w),
                                                          child: Text('En attente',style: style.bodyLarge?.copyWith(
                                                            color: AppColors.greenText3,
                                                            fontWeight: FontWeight.w600,
                                                          ),),
                                                        ),
                                                      )
                                                    ],
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
                                                CustomSubTitle(imagePath:AppIcons.blackboxPng, info: 'DPD Express - Fourgon 12m³',),
                                                SizedBox(height: 6.h),
                                                CustomSubTitle(imagePath:AppIcons.blackboxPng, info: '2 septembre 2025',),
                                                SizedBox(height: 6.h),
                                                CustomSubTitle(imagePath: AppIcons.blackboxPng, info: 'Lyon - Paris',),
                                              ],
                                            ),
                                          ),

                                          Image.asset(
                                            AppImages.worldPng,
                                            width: 115.w,
                                            height: 115.h,
                                          ),
                                        ],
                                      ),
                                      // SizedBox(height: 12.h),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                      SizedBox(height: 18.h),
                      CustomTitleHeader(title: 'Commandes en cours'),
                      SizedBox(height: 18.h),

                      Column(
                        children: List.generate(2, (index) {
                          return Padding(
                            padding: EdgeInsets.only(bottom: 12.h),
                            child: ProgressContainer(),
                          );
                        }),
                      ),

                      SizedBox(height: 18.h),
                      CustomTitleHeader(title: 'Commandes récentes'),

                      SizedBox(height: 18.h),
                      Column(
                        children: List.generate(6, (index) {
                          return Padding(
                            padding: EdgeInsets.only(bottom: 12.h),
                            child: CustomListTile(
                              title: '#HWDSF776567DS',
                              subtitle: 'En attente',
                              date: '23 juillet 2025',
                              color: AppColors.whiteColor,
                              textStyle: style.bodySmall?.copyWith(
                                color: AppColors.secondaryColor,
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
