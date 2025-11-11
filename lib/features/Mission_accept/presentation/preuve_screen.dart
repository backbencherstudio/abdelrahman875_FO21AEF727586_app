import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/images.dart';
import '../../../core/theme/src/theme_extension/color_pallete.dart';

import '../../common_widgets/input_label.dart';
import '../../widgets/primery_button.dart';

class PreuveScreen extends StatefulWidget {
  const PreuveScreen({super.key});

  @override
  State<PreuveScreen> createState() => _PreuveScreenState();
}

class _PreuveScreenState extends State<PreuveScreen> {
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
                "Photo du colis avant départ",
                style: style.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.blackText,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 45.h),
              Center(
                child: Image.asset(
                  AppImages.gift,
                  width: 390.w,
                  height: 262.h,
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.help_outline, size: 24),
                ),
              ),
              SizedBox(height: 45.h),

              InputLabel(title: 'SIGNATURE  EXPEDITEUR  '),
              SizedBox(height: 12.h),
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 45.h),

              InputLabel(title: 'SIGNATURE  TRANSPORTEUR '),
              SizedBox(height: 12.h),
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
              ),

              SizedBox(height: 20.h),

              InputLabel(title: 'Remarque au chargement '),
              SizedBox(height: 12.h),
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
              ),

              InputLabel(title: 'Adresse de livraison  : '),
              SizedBox(height: 12.h),
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
              ),

              Center(
                child: PrimaryButton(
                  width: 263.w,

                  padding: EdgeInsets.all(16.r),
                  containerColor: AppColors.blackColor,
                  title: 'Livraison Terminée ',
                  onTap: () {
                    // context.push(RouteName.trans_Vehicule);
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
