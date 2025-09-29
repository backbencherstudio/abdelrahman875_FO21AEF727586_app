import 'package:abdelrahman875_fo21aef727586/features/details_commande/presentation/widgets/custom_divider.dart';
import 'package:abdelrahman875_fo21aef727586/features/details_commande/presentation/widgets/custom_row_tracting.dart';
import 'package:abdelrahman875_fo21aef727586/features/widgets/primery_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/src/theme_extension/color_pallete.dart';
import '../models/step_data_model.dart';

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
                        'Suivi du colis',
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
                            'Un problème sur la livraison ?',
                            style: style.bodyMedium?.copyWith(
                              color: AppColors.grayText,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          PrimaryButton(
                            title: 'Signaler',
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
                              'Numéro de commande :',
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
                                  'De',
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
                                'Destination',
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
                        title: 'Expéditeur :',
                        subtitle: 'Jonathan Leon - H&M',
                      ),
                      CustomDivider(),

                      CustomRowTracking(title: 'Transporteur :', subtitle: 'UPS'),
                      CustomDivider(),

                      CustomRowTracking(title: 'Date de livraison :', subtitle: '20 Sept 2025'),
                      CustomDivider(),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: trackingSteps.length,
                        itemBuilder: (context, index) {
                          final step = trackingSteps[index];
                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  // Icon
                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 4),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: step.isCompleted
                                          ? (step.isCurrent ? Colors.green : Colors.black)
                                          : Colors.white,
                                      border: Border.all(
                                        color: step.isCompleted ? Colors.green : Colors.grey,
                                        width: 2,
                                      ),
                                    ),
                                    width: 24,
                                    height: 24,
                                    child: step.isCurrent
                                        ? Icon(Icons.check, color: Colors.white, size: 16)
                                        : step.isCompleted
                                        ? Icon(Icons.check, color: Colors.white, size: 16)
                                        : null,
                                  ),
                                  // Vertical Line, only draw if not last
                                  if (index != trackingSteps.length - 1)
                                    Container(
                                      width: 2,
                                      height: 40,
                                      color: Colors.grey,
                                    ),
                                ],
                              ),
                              SizedBox(width: 10),
                              // Date, Title & Description
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(step.date, style: TextStyle(color: Colors.grey)),
                                    Text(
                                      step.title,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: step.isCurrent ? Colors.green : Colors.black,
                                      ),
                                    ),
                                    Text(
                                      step.description,
                                      style: TextStyle(color: Colors.grey[700]),
                                    ),
                                    SizedBox(height: 10),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
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
