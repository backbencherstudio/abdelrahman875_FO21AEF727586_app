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
      backgroundColor:AppColors.whiteColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 98.h), // Top spacing
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Timer (hourglass) at center, always static
                Image.asset(AppImages.timer, width: 60, height: 60),

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
                    width: 120,
                    height: 120,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 44.h),
          Text(
            "Votre compte est en cours\nde validation",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 55.h),

          // Subtitle
          Text(
            "Nous vérifions vos informations. Votre\ncompte sera activé sous 48h maximum \n si tous les documents transmis sont \n conformes.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.sp, color: Colors.grey[700]),
          ),
          SizedBox(height: 90.h),


          PrimaryButton(title: 'Accueil',
              width:239.h,
              padding: EdgeInsets.symmetric(vertical: 16.h,horizontal: 16.w),
              containerColor: AppColors.blackColor,
              textStyle: style.bodyMedium?.copyWith(
                color: AppColors.whiteColor,
                fontWeight: FontWeight.w600,
              ),
              onTap: (){
            context.push(RouteName.parentsScreen);
          }),

          SizedBox(height: 200.h,)

        ],
      ),
    );
  }
}
