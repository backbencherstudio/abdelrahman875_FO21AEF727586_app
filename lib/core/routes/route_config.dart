import 'package:abdelrahman875_fo21aef727586/core/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/onboading/onboad_screen/onboading_screen.dart';
import '../../features/splash/presentation/splash_screen.dart';

class RouteConfig {
  GoRouter goRouter = GoRouter(
    initialLocation: RouteName.splashScreen,

    routes: [
     
      
      GoRoute(
        name: RouteName.splashScreen,
        path: RouteName.splashScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: SplashScreen());
        },
      ),
       GoRoute(
        name: RouteName.onboardingScreen,
        path: RouteName.onboardingScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: OnboardingScreen());
        },
      ),
     
    ],
  );
}
