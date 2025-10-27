// ignore_for_file: file_names

import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constants/images.dart';
import '../../../core/routes/route_name.dart';
import '../../creer_une_commande_fret/presentaion/widgets/input_label.dart';
import '../../widgets/primery_button.dart';

class ConditionScreen extends StatelessWidget {
  const ConditionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(19.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40.h),
              Text(
                "Récapitulatif de la livraison",
                style: style.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.blackText,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 45.h),
              Center(
                child: Image.asset(
                  AppImages.condition,
                  width: 390.w,
                  height: 262.h,
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.help_outline, size: 24),
                ),
              ),
              SizedBox(height: 45.h),

              InputLabel(title: 'Adresse de Chargement : '),
              SizedBox(height: 12.h),
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 45.h),

              InputLabel(title: 'Adresse de livraison  : '),
              SizedBox(height: 12.h),
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
              ),

              SizedBox(height: 20.h),

              const Divider(
                color: Colors.grey, // Divider color
                thickness: 1, // Thickness of the line
                height: 20, // Space around the divider
              ),
              SizedBox(height: 20.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Arrivée prévue :",
                    style: style.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.blackText,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "15:45",
                    style: style.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.blackText,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              const Divider(
                color: Colors.grey, // Divider color
                thickness: 1, // Thickness of the line
                height: 20, // Space around the divider
              ),

              SizedBox(height: 18.h),
              Center(
                child: Text(
                  "Jean Dupont : 06 12 34 56 78",
                  style: style.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColors.blackText,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 50.h),

              Center(
                child: PrimaryButton(
                  width: 263.w,

                  padding: EdgeInsets.all(16.r),
                  containerColor: AppColors.blackColor,
                  title: 'Suivant',
                  onTap: () {
                    context.push(RouteName.preuveScreen);
                  },
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
