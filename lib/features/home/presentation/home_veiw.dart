import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:abdelrahman875_fo21aef727586/features/home/presentation/widgets/custom_list_tile.dart';
import 'package:abdelrahman875_fo21aef727586/features/home/presentation/widgets/custom_progress_container.dart';
import 'package:abdelrahman875_fo21aef727586/features/home/presentation/widgets/custom_title_header.dart';
import 'package:abdelrahman875_fo21aef727586/features/home/presentation/widgets/grid_section.dart';
import 'package:abdelrahman875_fo21aef727586/features/home/presentation/widgets/header_section.dart';
import 'package:abdelrahman875_fo21aef727586/features/home/presentation/widgets/image_box_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
                        'Prêt à expédier ?',
                        style: style.headlineSmall?.copyWith(
                          color: AppColors.grayText2,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 18.h),

                      // TextFormField(
                      //   decoration: InputDecoration(
                      //     filled: true,
                      //     fillColor: AppColors.whiteColor,
                      //     border: OutlineInputBorder(
                      //       borderSide: BorderSide(
                      //         color: AppColors.borderColor3,
                      //       ),
                      //     ),
                      //     focusedBorder: OutlineInputBorder(
                      //       borderSide: BorderSide(
                      //         color: AppColors.borderColor3,
                      //       ),
                      //     ),
                      //     enabledBorder: OutlineInputBorder(
                      //       borderSide: BorderSide(
                      //         color: AppColors.borderColor3,
                      //       ),
                      //     ),
                      //
                      //     prefixIcon: Row(
                      //       mainAxisSize: MainAxisSize.min,
                      //       children: [
                      //         Padding(
                      //           padding: EdgeInsets.only(left: 12.w,top: 12.h,bottom: 12.h),
                      //           child: SvgPicture.asset(
                      //             AppIcons.locationSearchingSvg,
                      //             height: 24.h,
                      //             width: 24.w,
                      //             fit: BoxFit.cover,
                      //           ),
                      //         ),
                      //         SizedBox(width: 12.w),
                      //         Text(
                      //           '|',
                      //           style: style.bodyLarge?.copyWith(
                      //             color: AppColors.grayText3,
                      //             fontWeight: FontWeight
                      //                 .w500, // Added font weight for better visibility
                      //           ),
                      //         ),
                      //       ],
                      //     ),
                      //     hintText: '#130310011',
                      //     suffixIcon: Padding(
                      //       padding: EdgeInsets.only(right: 12.w,top: 12.h,bottom: 12.h),
                      //       child: SvgPicture.asset(AppIcons.qrCodeScannerSvg,height: 24.h,width: 24.w,),
                      //     ),
                      //   ),
                      // ),


                      GridSection(),
                      SizedBox(height: 18.h),
                      ImageBoxSection(),
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
                              color: AppColors.containerColor1,
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
