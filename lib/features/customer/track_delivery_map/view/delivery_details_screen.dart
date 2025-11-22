import 'package:abdelrahman875_fo21aef727586/features/widgets/custom_divider.dart';
import 'package:abdelrahman875_fo21aef727586/features/widgets/custom_header_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/icons.dart';
import '../../../../core/theme/src/theme_extension/color_pallete.dart';
import '../models/step_data_model.dart';
import 'deliveries_completed_screen.dart';

class DeliveryDetailsScreen extends StatefulWidget {
  const DeliveryDetailsScreen({super.key});

  @override
  State<DeliveryDetailsScreen> createState() => _DeliveryDetailsScreenState();
}

class _DeliveryDetailsScreenState extends State<DeliveryDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomHeaderTitle(title: 'Détails de la livraison'),
              SizedBox(height: 16.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              'Numéro de livraison :',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff353535),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '#CMD456781',
                                style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff353535),
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Icon(
                                Icons.copy_rounded,
                                size: 20.w,
                                color: AppColors.blackColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 16.h),
                      CustomStatus(title: 'Statut :', subtitle: 'Sur la route'),
                      SizedBox(height: 16.h),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'De',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Color(0xff696767),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  '2 rue de l\'Avenir, Ermont,\n95110, France',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Color(0xff736F6F),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Destination',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Color(0xff696767),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  '12 rue de Maurice, Lyon,\n69000, France',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Color(0xff736F6F),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.h),
                      CustomStatus(
                        title: 'Expéditeur :',
                        subtitle: 'Jonathan Leon - H&M',
                      ),
                      SizedBox(height: 16.h),
                      CustomStatus(title: 'Transporteur :', subtitle: 'UPS'),
                      SizedBox(height: 16.h),
                      CustomStatus(
                        title: 'Date d\'expédition :',
                        subtitle: '20 Sept 2025',
                      ),
                      CustomDivider(),

                      ListTile(
                        leading: Image.asset(
                          AppIcons.boxPng,
                          height: 24.h,
                          width: 24.w,
                        ),
                        title: Text(
                          'Le colis',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),

                      Row(
                        children: [
                          Text(
                            'Marchandise : ',
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Color(0xff353535),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Type A - Marchandises générales',
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Color(0xff01A601),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 16.h),

                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(color: AppColors.grayText),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.r),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Longueur : 2m',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Color(0xff353535),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      'Largeur : 4,5m',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Color(0xff353535),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      'Poids : 50kg',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Color(0xff353535),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Hauteur : 0,5m',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Color(0xff353535),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      'Métrage : 2.3m3',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Color(0xff353535),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: trackingSteps.length,
                        itemBuilder: (context, index) {
                          final step = trackingSteps[index];
                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 60,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  step.date,
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 4),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: step.isCompleted
                                          ? (step.isCurrent
                                                ? Colors.green
                                                : Colors.black)
                                          : Colors.white,
                                      border: Border.all(
                                        color: step.isCompleted
                                            ? Colors.green
                                            : Colors.grey,
                                        width: 2,
                                      ),
                                    ),
                                    width: 24,
                                    height: 24,
                                    child: step.isCurrent
                                        ? Icon(
                                            Icons.check,
                                            color: Colors.white,
                                            size: 16,
                                          )
                                        : step.isCompleted
                                        ? Icon(
                                            Icons.check,
                                            color: Colors.white,
                                            size: 16,
                                          )
                                        : null,
                                  ),
                                  if (index != trackingSteps.length - 1)
                                    Container(
                                      width: 2,
                                      height: 40,
                                      color: Colors.grey,
                                    ),
                                ],
                              ),
                              SizedBox(width: 10),

                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      step.title,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: step.isCurrent
                                            ? Colors.green
                                            : Colors.black,
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
