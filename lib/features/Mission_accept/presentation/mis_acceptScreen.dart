import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/images.dart';
import '../../widgets/primery_button.dart';

class missionScreen_One extends StatelessWidget {
  const missionScreen_One({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 98.h), // Top spacing
            Center(
              child: Image.asset(
                AppImages.accueil,
                width: 132.w,
                height: 132.h,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.help_outline, size: 24),
              ),
            ),
            SizedBox(height: 44.h),
            Text(
              "En attente de validation...",
              style: style.titleLarge?.copyWith(
                fontWeight: FontWeight.w800,
                color: AppColors.blackText,
              ),
              textAlign: TextAlign.center,
            ),

            // Text(
            //   "En attente de validation...",
            //   textAlign: TextAlign.center,
            //   style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
            // ),
            SizedBox(height: 55.h),

            // Subtitle
            Text(
              "Le donneur d’ordre est informé de votre proposition.\n\nVous serez notifié en cas de confirmation afin de démarrer la livraison",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.sp, color: Colors.grey[700]),
            ),
            // Text(
            //   "Vous serez notifié en cas de confirmation \n afin de démarrer la livraison",
            //   textAlign: TextAlign.center,
            //   style: TextStyle(fontSize: 16.sp, color: Colors.grey[700]),
            // ),
            SizedBox(height: 90.h),

            PrimaryButton(
              width: 239.w,
              padding: EdgeInsets.symmetric(vertical: 16.h),
              containerColor: AppColors.blackColor,
              title: 'Accueil',
              onTap: () {
                // context.push(RouteName.trans_Vehicule);
              },
            ),
            SizedBox(height: 20.h),
            PrimaryButton(
              width: 239.w,
              padding: EdgeInsets.symmetric(vertical: 16.h),
              containerColor: AppColors.containerColor,
              border: Border.all(color: AppColors.blackColor),
              textStyle: style.bodyLarge?.copyWith(
                color: AppColors.whiteColor,
                fontWeight: FontWeight.w600,
              ),
              title: 'Annuler',
              onTap: () {
                // context.push(RouteName.trans_Vehicule);
              },
            ),
          ],
        ),
      ),
    );
  }
}
