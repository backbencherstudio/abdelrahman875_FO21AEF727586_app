import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/constants/images.dart';
import '../../core/theme/src/theme_extension/color_pallete.dart';

class Command extends StatelessWidget {
  const Command({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:AppColors.whiteColor,
      body: Column(
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
            "Votre compte est en cours \n de validation",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 55.h),

          // Subtitle
          Text(
            "Nous vérifions vos informations. Votre \n compte sera activé sous 48h maximum \n si tous les documents transmis sont \n conformes.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.sp, color: Colors.grey[700]),
          ),
          SizedBox(height: 90.h),

          SizedBox(

            width:239.h,
            height: 56.h,
            child: ElevatedButton(


              onPressed: () {
                // context.push(RouteName.inscriptionScreen);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.boxColor,
                padding: EdgeInsets.symmetric(vertical: 16.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.r),
                ),
              ),
              child: Text(
                "Accueil",
                style: TextStyle(color: Colors.white, fontSize: 16.sp),
              ),
            ),

          ),
          SizedBox(height: 200.h,)

        ],
      ),
    );
  }
}
