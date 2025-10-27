
// ignore_for_file: use_build_context_synchronously

import 'package:abdelrahman875_fo21aef727586/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';


import '../../../core/constants/images.dart';
import '../../../core/routes/route_name.dart';
import '../../../core/theme/src/theme_extension/color_pallete.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3500),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _runCarSequence();

    Future.delayed(const Duration(milliseconds: 3200), () {
      context.go(RouteName.onboardingScreen);
    });
  }

  void _runCarSequence() async {
     WidgetsBinding.instance.addPostFrameCallback((_) async{
        while (mounted) {

      await _controller.animateTo(0.5,
          duration: const Duration(milliseconds: 1000), curve: Curves.easeInOut);

      await Future.delayed(const Duration(milliseconds: 600));

      await _controller.forward(from: 0.5);

      _controller.reset();
    }
   
  });
  
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final style = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: AppColors.splashColor,
      body: Stack(
        children: [
          AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              final double imageWidth =  70.w;
              final double startPosition = -imageWidth; // Off-screen left
              final double endPosition = screenWidth; // Off-screen right

              double position =
                  startPosition + _animation.value * (endPosition - startPosition+10);

              return Positioned(
                top: MediaQuery.of(context).size.height * 0.45,
                left: position,
                child: child!,
              );
            },
            child: Image.asset(
              AppImages.path245,
              height:Utils.isTablet(context)? 130.h: 60.h,
              width:Utils.isTablet(context)? 130.w: 60.w,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.52,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                textAlign: TextAlign.center,
                'DeliverApp',
                style: style.headlineSmall!.copyWith(
                  color: AppColors.white,
                  fontWeight: FontWeight.w600,
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
 