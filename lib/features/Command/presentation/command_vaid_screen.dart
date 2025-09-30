import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constants/images.dart';
import '../../../core/theme/src/theme_extension/color_pallete.dart';
import '../../widgets/primery_button.dart';

class CommandScreen extends StatelessWidget {
  const CommandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 98.h), // Top spacing
          Center(
            child: Image.asset(
              AppImages.capture,
              width: 132.w,
              height: 132.h,
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.help_outline, size: 24),
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            "Votre commande \n "
            "#CMD456782 est confirmée !",
            style: style.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 26.h),
          Text(
            "Un transporteur a été assigné et \n votre colis est prêt à être pris en \n charge. Vous pouvez le contacter si \n besoin.",
            style: style.titleSmall?.copyWith(
              fontWeight: FontWeight.w400,
              color: AppColors.grayText2,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 102.h),
          PrimaryButton(
            width:239.w,
            padding: EdgeInsets.symmetric(vertical: 16.h),
            containerColor: AppColors.blackColor,
            title: 'QR CODE',
            onTap: () {
              // context.push(RouteName.trans_Vehicule);
            },
          ),
          SizedBox(height: 20.h),
          PrimaryButton(
            width: 239.w,
            padding: EdgeInsets.symmetric(vertical: 16.h),
            containerColor: AppColors.transparentColor,
border: Border.all(color: AppColors.blackColor),
            textStyle: style.bodyLarge?.copyWith(
              color: AppColors.blackText,
              fontWeight: FontWeight.w600,

            ),
            title: 'Accueil',
            onTap: () {
              // context.push(RouteName.trans_Vehicule);
            },
          ),
        ],
      ),
    );
  }
}
