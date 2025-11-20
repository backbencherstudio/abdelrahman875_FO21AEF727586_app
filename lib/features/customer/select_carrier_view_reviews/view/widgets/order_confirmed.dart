import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/constants/images.dart';
import '../../../../../core/routes/route_name.dart';
import '../../../../../core/theme/src/theme_extension/color_pallete.dart';
import '../../../../widgets/primery_button.dart';

class OrderConfirmedScreen extends StatelessWidget {
  const OrderConfirmedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 98.h),
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
              "Votre commande #CMD456782\nest confirmée!",
              style: style.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
                color: Color(0xff353535),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 26.h),
            Text(
              "Un transporteur a été assigné et\nvotre colis est prêt à être pris en\ncharge. Vous pouvez le contacter si\nbesoin.",
              style: style.titleSmall?.copyWith(
                fontWeight: FontWeight.w400,
                color: AppColors.grayText2,
                fontSize: 18.sp,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50.h),
            PrimaryButton(
              width: 239.w,
              padding: EdgeInsets.symmetric(vertical: 16.h),
              containerColor: AppColors.blackColor,
              border: Border.all(color: AppColors.blackColor),
              textStyle: style.bodyLarge?.copyWith(
                color: AppColors.whiteColor,
                fontWeight: FontWeight.w600,
              ),
              title: 'Accueil',
              onTap: () {
                context.push(RouteName.customerBottomNavScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
