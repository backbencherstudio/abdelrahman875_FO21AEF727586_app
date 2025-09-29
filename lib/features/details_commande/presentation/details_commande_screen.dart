import 'package:abdelrahman875_fo21aef727586/features/details_commande/presentation/widgets/custom_divider.dart';
import 'package:abdelrahman875_fo21aef727586/features/details_commande/presentation/widgets/custom_row_tracting.dart';
import 'package:abdelrahman875_fo21aef727586/features/widgets/primery_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/src/theme_extension/color_pallete.dart';

class DetailsCommandeScreen extends StatefulWidget {
  const DetailsCommandeScreen({super.key});

  @override
  State<DetailsCommandeScreen> createState() => _DetailsCommandeScreenState();
}

class _DetailsCommandeScreenState extends State<DetailsCommandeScreen> {
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.r),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.blackText,
                    size: 24.r,
                  ),
                ),
              ),
              SizedBox(height: 18.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Package Tracking',
                        style: style.headlineSmall?.copyWith(
                          color: AppColors.textColor1,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 12.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Any problem with the\ndelivery?',
                            style: style.bodyMedium?.copyWith(
                              color: AppColors.grayText,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          PrimaryButton(
                            title: 'Report',
                            width: 90.w,
                            padding: EdgeInsets.symmetric(
                              horizontal: 12.w,
                              vertical: 8.h,
                            ),
                            containerColor: AppColors.containerColor,
                            onTap: () {},
                          ),
                        ],
                      ),

                      CustomDivider(),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Order Number:',
                              style: style.bodyMedium?.copyWith(
                                color: AppColors.textColor1,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),

                          Row(
                            children: [
                              Text(
                                '#CMD456781',
                                style: style.bodyLarge?.copyWith(
                                  color: AppColors.blackColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(width: 8.w),
                              Icon(
                                Icons.copy_rounded,
                                color: AppColors.blackColor,
                                size: 24,
                              ),
                            ],
                          ),
                        ],
                      ),
                      CustomDivider(),

                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'From',
                                  style: style.bodyMedium?.copyWith(
                                    color: AppColors.blackText,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  '12 rue des Lionnettes,\nErmont, 95110',
                                  style: style.bodyMedium?.copyWith(
                                    color: AppColors.textColor4,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 16.w),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'To',
                                style: style.bodyMedium?.copyWith(
                                  color: AppColors.blackText,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                '30 rue des bretons,\nLille, 59000',
                                style: style.bodyMedium?.copyWith(
                                  color: AppColors.textColor4,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      CustomDivider(),
                      CustomRowTracking(
                        title: 'Sender :',
                        subtitle: 'Jonathan Leon - H&M',
                      ),
                      CustomDivider(),

                      CustomRowTracking(title: 'Carrier :', subtitle: 'UPS'),
                      CustomDivider(),

                      CustomRowTracking(title: 'Delivery date :', subtitle: '20 Sept 2025'),
                      CustomDivider(),
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
