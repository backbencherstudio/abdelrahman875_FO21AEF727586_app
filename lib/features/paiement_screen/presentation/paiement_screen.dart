import 'package:abdelrahman875_fo21aef727586/core/constants/icons.dart';
import 'package:abdelrahman875_fo21aef727586/core/routes/route_name.dart';
import 'package:abdelrahman875_fo21aef727586/features/details_commande/presentation/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/src/theme_extension/color_pallete.dart';
import '../../widgets/primery_button.dart';
import '../models/tracking_step_model.dart';

class PaiementScreen extends StatefulWidget {
  const PaiementScreen({super.key});

  @override
  State<PaiementScreen> createState() => _PaiementScreenState();
}

class _PaiementScreenState extends State<PaiementScreen> {
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
              SizedBox(height: 32.h),

              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Récapitulatif de la\nCommande ',
                        style: style.headlineSmall?.copyWith(
                          color: AppColors.blackText,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 32.h),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Votre commande ',
                              style: style.titleSmall?.copyWith(
                                color: AppColors.blackColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: '#CMD456782',
                              style: style.bodyLarge?.copyWith(
                                color: AppColors.grayText2,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 16.h),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: trackingPayment.length,
                        itemBuilder: (context, index) {
                          final step = trackingPayment[index];
                          final isLast = index == trackingPayment.length - 1;

                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 24,
                                child: Column(
                                  children: [
                                    Container(
                                      width: 12,
                                      height: 12,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    if (!isLast)
                                      Container(
                                        width: 2,
                                        height: 40,
                                        color: Colors.green.withAlpha(130),
                                      ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 12.w),
                              // Details
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${step.name} - ${step.shop}",
                                      style: style.bodySmall?.copyWith(
                                        color: AppColors.blackColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      step.address,
                                      style: style.bodySmall?.copyWith(
                                        color: AppColors.blackColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(height: 12),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),

                      SizedBox(height: 16.h),

                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.transparentColor,
                              shape: BoxShape.circle,
                              border: Border.all(color: AppColors.grayText2),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                AppIcons.shipPng,
                                height: 24.h,
                                width: 24.w,
                              ),
                            ),
                          ),
                          SizedBox(width: 12.w),
                          Text(
                            'Livraison Fret',
                            style: style.bodyMedium?.copyWith(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.h),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.transparentColor,
                              shape: BoxShape.circle,
                              border: Border.all(color: AppColors.grayText2),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                AppIcons.boitePng,
                                height: 24.h,
                                width: 24.w,
                              ),
                            ),
                          ),
                          SizedBox(width: 12.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Colis ',
                                style: style.bodyMedium?.copyWith(
                                  color: AppColors.blackColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                '*produits frais\n*7 Kg',
                                style: style.bodyMedium?.copyWith(
                                  color: AppColors.blackText,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      CustomDivider(),

                      Text(
                        'Sélectionner un moyen\nde paiement',
                        style: style.bodyLarge?.copyWith(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 16.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Image.asset(
                                  AppIcons.mastercardPng,
                                  height: 24.h,
                                  width: 24.w,
                                ),
                                SizedBox(width: 12.w),
                                Text(
                                  'Master Card',
                                  style: style.bodyMedium?.copyWith(
                                    color: AppColors.blackColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.transparentColor,
                              shape: BoxShape.circle,
                              border: Border.all(color: AppColors.greenText),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Container(
                                height: 12.h,
                                width: 12.w,
                                decoration: BoxDecoration(
                                  color: AppColors.greenText,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 16.h),

                      Center(
                        child: Container(
                          width: 312.w,
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border.all(color: AppColors.containerColor3),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.add, color: AppColors.containerColor3),
                                SizedBox(width: 8.w),
                                Text(
                                  'Ajouter une carte',
                                  style: style.bodyMedium?.copyWith(
                                    color: AppColors.containerColor3,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      CustomDivider(),
                      Center(
                        child: Text(
                          'Activer un code promo',
                          style: style.bodyMedium?.copyWith(
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Saisissez un code",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 6),
                            Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Saisir votre code',
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black54,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      isDense: true,
                                      contentPadding: EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 12,
                                      ),
                                    ),
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                SizedBox(width: 8),
                                SizedBox(
                                  height: 40,
                                  child: OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                      side: BorderSide(color: Colors.black54),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    child: Text(
                                      'Utiliser',
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16.h),

                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Frais',
                              style: style.bodyMedium?.copyWith(
                                color: AppColors.blackColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Text(
                            '15%',
                            style: style.bodyMedium?.copyWith(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.h),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Total',
                              style: style.bodyMedium?.copyWith(
                                color: AppColors.blackColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Text(
                            '110 €',
                            style: style.bodyMedium?.copyWith(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      
                      SizedBox(height: 16.h),
                      PrimaryButton(
                          width: double.infinity,
                          padding: EdgeInsets.all(16.r),
                          containerColor: AppColors.blackColor,
                          title: 'Payer', onTap: (){
                            context.push(RouteName.commandScreen);
                      }),

                      SizedBox(height: 20.h),
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
