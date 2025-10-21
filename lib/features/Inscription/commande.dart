import 'package:abdelrahman875_fo21aef727586/core/utils/utils.dart';
import 'package:abdelrahman875_fo21aef727586/features/widgets/primery_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../core/constants/images.dart';
import '../../core/routes/route_name.dart';
import '../../core/theme/src/theme_extension/color_pallete.dart';

class Command extends StatefulWidget {
  const Command({super.key});

  @override
  State<Command> createState() => _CommandState();
}

class _CommandState extends State<Command> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..forward(); // Endless rotation

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Spacer(),
            // SizedBox(height: 98.h), // Top spacing
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Timer (hourglass) at center, always static
                  Image.asset(
                    AppImages.timer,
                    width: Utils.isTablet(context) ? 90.w : 60.w,
                    height: Utils.isTablet(context) ? 90.h : 60.h,
                  ),

                  // Rotating loader arc+arrow+3 dots as one piece
                  AnimatedBuilder(
                    animation: _controller,
                    builder: (context, child) {
                      return Transform.rotate(
                        angle: -0.5 + (_controller.value * (3.1415926535)),
                        child: child,
                      );
                    },
                    child: Image.asset(
                      AppImages.loader,
                      width: Utils.isTablet(context) ? 150.w : 120.w,
                      height: Utils.isTablet(context) ? 150.h : 120.h,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 44.h),
            Text(
              "Votre compte est en cours\nde validation",
              textAlign: TextAlign.center,
              style: style.headlineSmall?.copyWith(color: AppColors.textColor1),
            ),

            SizedBox(height: 55.h),

            // Subtitle
            Text(
              "Nous vérifions vos informations. Votre\ncompte sera activé sous 48h maximum \n si tous les documents transmis sont \n conformes.",
              textAlign: TextAlign.center,
              style: style.bodyLarge?.copyWith(color: AppColors.grayText2),
            ),
            SizedBox(height: 90.h),

            PrimaryButton(
              title: 'Accueil',
              width: Utils.isTablet(context) ? 300.w : 239.w,
              padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
              containerColor: AppColors.blackColor,
              textStyle: style.bodyMedium?.copyWith(
                color: AppColors.whiteColor,
                fontWeight: FontWeight.w600,
              ),
              onTap: () {
                context.push(RouteName.parentsScreen);
              },
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
