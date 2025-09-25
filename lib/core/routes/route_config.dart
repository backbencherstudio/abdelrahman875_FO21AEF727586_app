import 'package:abdelrahman875_fo21aef727586/core/routes/build_page_with_transition.dart';
import 'package:abdelrahman875_fo21aef727586/core/routes/route_name.dart';
import 'package:abdelrahman875_fo21aef727586/features/parents/presentation/parents_screen.dart';
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
       GoRoute(
        name: RouteName.parentsScreen,
        path: RouteName.parentsScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            transitionType: PageTransitionType.slideRightToLeft,
            context: context,
            state: state,
            child: ParentsScreen(),
          );
        },
      ),
     
    ],
  );
}
