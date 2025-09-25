import 'package:abdelrahman875_fo21aef727586/core/routes/route_name.dart';
import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constants/images_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
     // context.go(RouteName.onboardingScreen);
      context.go(RouteName.parentsScreen);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.splashColor,
      body: Center(
        child: SizedBox(
          height: 108.h,
          width: 230.w,
          child: Image.asset(ImagesConstants.splashImg, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
