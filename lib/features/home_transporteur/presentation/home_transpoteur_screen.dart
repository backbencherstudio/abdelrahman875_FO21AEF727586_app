import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:abdelrahman875_fo21aef727586/features/home/presentation/widgets/custom_list_tile.dart';
import 'package:abdelrahman875_fo21aef727586/features/home/presentation/widgets/custom_progress_container.dart';
import 'package:abdelrahman875_fo21aef727586/features/home/presentation/widgets/custom_title_header.dart';
import 'package:abdelrahman875_fo21aef727586/features/home/presentation/widgets/header_section.dart';
import 'package:abdelrahman875_fo21aef727586/features/home/presentation/widgets/image_box_section.dart';
import 'package:abdelrahman875_fo21aef727586/features/home_transporteur/presentation/widgets/transporteur_grid_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/icons.dart';
import '../../../core/constants/images.dart';
import '../../mission_screen/presentation/widgets/custom_subtitle.dart';
import '../../mission_screen/presentation/widgets/on_accept_dialog.dart';
import '../../widgets/primery_button.dart';

class HomeTransporteur extends StatefulWidget {
  const HomeTransporteur({super.key});

  @override
  State<HomeTransporteur> createState() => _HomeTransporteurState();
}

class _HomeTransporteurState extends State<HomeTransporteur> {
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
                        'Trouver Une Mission',
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
                                padding: EdgeInsets.only(left: 12.w,top: 12.h,bottom: 12.h),
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
                          hintText: 'Lyon',
                          suffixIcon: Padding(
                            padding: EdgeInsets.only(right: 12.w,top: 12.h,bottom: 12.h),
                            child: SvgPicture.asset(AppIcons.qrCodeScannerSvg,height: 24.h,width: 24.w,),
                          ),
                        ),
                      ),


                      Center(child: TransporteurGridSection()),


                      Column(
                        children: List.generate(1, (index) {
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
                                  horizontal: 16.w,
                                  vertical: 12.h,
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Prêts à prendre la route ?',
                                          style: style.titleSmall
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
                                              CustomSubTitle(imagePath:  AppIcons.blackboxPng, info: 'Entreprises H&M',),
                                              SizedBox(height: 8.h),
                                              CustomSubTitle(imagePath:  AppIcons.blackboxPng, info: 'Transport de 1000 colis',),
                                              SizedBox(height: 8.h),
                                              CustomSubTitle(imagePath:  AppIcons.blackboxPng, info: 'Lyon - Paris',),
                                            ],
                                          ),
                                        ),

                                        Image.asset(
                                          AppImages.boxPng,
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
                                            onTap: () {
                                              onAcceptTap(context);
                                            },
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
                                                .withAlpha(30),
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


                      SizedBox(height: 18.h),
                      CustomTitleHeader(title: 'Livraisons en cours'),
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
                      CustomTitleHeader(title: 'Livraisons récentes'),

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
