part of "route_import_part.dart";

class RouteConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: RouteName.customerBottomNavScreen,

    routes: [
      GoRoute(
        name: RouteName.splashScreen,
        path: RouteName.splashScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: SplashScreen());
        },
      ),
      GoRoute(
        name: RouteName.signInScreen,
        path: RouteName.signInScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: SignInScreen());
        },
      ),
      GoRoute(
        name: RouteName.orderConfirmScreen,
        path: RouteName.orderConfirmScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: OrderConfirmScreen());
        },
      ),
      GoRoute(
        name: RouteName.afterCommand,
        path: RouteName.afterCommand,
        pageBuilder: (context, state) {
          return const MaterialPage(child: AfterCommand());
        },
      ),
      GoRoute(
        name: RouteName.afterScreen,
        path: RouteName.afterScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: AfterScreen());
        },
      ),
      GoRoute(
        name: RouteName.misTermineeScreen,
        path: RouteName.misTermineeScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: MisTermineeScreen());
        },
      ),
      GoRoute(
        name: RouteName.preuveScreen,
        path: RouteName.preuveScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: PreuveScreen());
        },
      ),
      GoRoute(
        name: RouteName.command,
        path: RouteName.command,
        pageBuilder: (context, state) {
          return const MaterialPage(child: Command());
        },
      ),

      GoRoute(
        name: RouteName.paymentScreen,
        path: RouteName.paymentScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: PaymentScreen());
        },
      ),
      GoRoute(
        name: RouteName.conditionScreen,
        path: RouteName.conditionScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: ConditionScreen());
        },
      ),

      GoRoute(
        name: RouteName.missionScreenOne,
        path: RouteName.missionScreenOne,
        pageBuilder: (context, state) {
          return const MaterialPage(child: MissionScreenOne());
        },
      ),

      GoRoute(
        name: RouteName.forgotPasswordScreen,
        path: RouteName.forgotPasswordScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: ForgotPasswordScreen());
        },
      ),

      GoRoute(
        name: RouteName.misAccepteScreen,
        path: RouteName.misAccepteScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: MisAccepteScreen());
        },
      ),
      GoRoute(
        name: RouteName.orderConfirmedScreen,
        path: RouteName.orderConfirmedScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: OrderConfirmedScreen());
        },
      ),
      GoRoute(
        name: RouteName.inscriptionDoc,
        path: RouteName.inscriptionDoc,
        pageBuilder: (context, state) {
          return const MaterialPage(child: InscriptionDoc());
        },
      ),

      GoRoute(
        name: RouteName.trackHomeDemandesScreen,
        path: RouteName.trackHomeDemandesScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: TrackHomeDemandesScreen());
        },
      ),

      GoRoute(
        name: RouteName.inscriptionDocTwo,
        path: RouteName.inscriptionDocTwo,
        pageBuilder: (context, state) {
          return const MaterialPage(child: InscriptionDocTwo());
        },
      ),
      GoRoute(
        name: RouteName.transVehicule,
        path: RouteName.transVehicule,
        pageBuilder: (context, state) {
          return const MaterialPage(child: TransVehicule());
        },
      ),

      GoRoute(
        name: RouteName.profileSettingScreen,
        path: RouteName.profileSettingScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: ProfileSettingScreen());
        },
      ),
      GoRoute(
        name: RouteName.inscriptionScreen,
        path: RouteName.inscriptionScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: InscriptionTransporteur());
        },
      ),
      GoRoute(
        name: RouteName.donneur,
        path: RouteName.donneur,
        pageBuilder: (context, state) {
          return const MaterialPage(child: Donneur());
        },
      ),
      GoRoute(
        name: RouteName.fixedPrice,
        path: RouteName.fixedPrice,
        pageBuilder: (context, state) {
          return const MaterialPage(child: FixedPrice());
        },
      ),
      GoRoute(
        name: RouteName.deliveryDetailsScreen,
        path: RouteName.deliveryDetailsScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: DeliveryDetailsScreen());
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
        name: RouteName.createOrderScreen,
        path: RouteName.createOrderScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: CreateOrderScreen());
        },
      ),

      GoRoute(
        name: RouteName.homeView,
        path: RouteName.homeView,
        pageBuilder: (context, state) {
          return const MaterialPage(child: HomeView());
        },
      ),

      GoRoute(
        name: RouteName.homeTransporteur,
        path: RouteName.homeTransporteur,
        pageBuilder: (context, state) {
          return const MaterialPage(child: HomeTransporteur());
        },
      ),

      GoRoute(
        name: RouteName.transporteurMissionScreen,
        path: RouteName.transporteurMissionScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: TransporteurMissionScreen());
        },
      ),

      GoRoute(
        name: RouteName.customerBottomNavScreen,
        path: RouteName.customerBottomNavScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            transitionType: PageTransitionType.slideRightToLeft,
            context: context,
            state: state,
            child: CustomerBottomNavScreen(),
          );
        },
      ),

      GoRoute(
        name: RouteName.verifyOtpScreen,
        path: RouteName.verifyOtpScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            transitionType: PageTransitionType.slideRightToLeft,
            context: context,
            state: state,
            child: VerifyOtpScreen(),
          );
        },
      ),
      GoRoute(
        name: RouteName.newPasswordScreen,
        path: RouteName.newPasswordScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            transitionType: PageTransitionType.slideRightToLeft,
            context: context,
            state: state,
            child: NewPasswordScreen(),
          );
        },
      ),
      GoRoute(
        name: RouteName.carrierMissionScreen,
        path: RouteName.carrierMissionScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            transitionType: PageTransitionType.slideRightToLeft,
            context: context,
            state: state,
            child: CarrierMissionScreen(),
          );
        },
      ),
      GoRoute(
        name: RouteName.espacesScreen,
        path: RouteName.espacesScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            transitionType: PageTransitionType.slideRightToLeft,
            context: context,
            state: state,
            child: EspacesScreen(),
          );
        },
      ),
      GoRoute(
        name: RouteName.qrScannerScreen,
        path: RouteName.qrScannerScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            transitionType: PageTransitionType.slideRightToLeft,
            context: context,
            state: state,
            child: QrScannerScreen(),
          );
        },
      ),
      GoRoute(
        name: RouteName.notificationScreen,
        path: RouteName.notificationScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            transitionType: PageTransitionType.slideRightToLeft,
            context: context,
            state: state,
            child: NotificationScreen(),
          );
        },
      ),

      GoRoute(
        name: RouteName.documentScreen,
        path: RouteName.documentScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            transitionType: PageTransitionType.slideRightToLeft,
            context: context,
            state: state,
            child: DocumentScreen(),
          );
        },
      ),
      GoRoute(
        name: RouteName.signUpScreen,
        path: RouteName.signUpScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            transitionType: PageTransitionType.slideRightToLeft,
            context: context,
            state: state,
            child: SignUpScreen(),
          );
        },
      ),

      GoRoute(
        name: RouteName.myDeliveryScreen,
        path: RouteName.myDeliveryScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            transitionType: PageTransitionType.slideRightToLeft,
            context: context,
            state: state,
            child: MyDeliveryScreen(),
          );
        },
      ),

      GoRoute(
        name: RouteName.packageTrackingScreen,
        path: RouteName.packageTrackingScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            transitionType: PageTransitionType.slideRightToLeft,
            context: context,
            state: state,
            child: PackageTrackingScreen(),
          );
        },
      ),

      GoRoute(
        name: RouteName.trackDeliveryMapScreen,
        path: RouteName.trackDeliveryMapScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            transitionType: PageTransitionType.slideRightToLeft,
            context: context,
            state: state,
            child: TrackDeliveryMapScreen(),
          );
        },
      ),

      GoRoute(
        name: RouteName.customerSummaryScreen,
        path: RouteName.customerSummaryScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            transitionType: PageTransitionType.slideRightToLeft,
            context: context,
            state: state,
            child: CustomerSummaryScreen(),
          );
        },
      ),

      GoRoute(
        name: RouteName.carrierReviewScreen,
        path: RouteName.carrierReviewScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            transitionType: PageTransitionType.slideRightToLeft,
            context: context,
            state: state,
            child: CarrierReviewScreen(),
          );
        },
      ),
      GoRoute(
        name: RouteName.proofOfShipmentScreen,
        path: RouteName.proofOfShipmentScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            transitionType: PageTransitionType.slideRightToLeft,
            context: context,
            state: state,
            child: ProofOfShipmentScreen(),
          );
        },
      ),
      GoRoute(
        name: RouteName.deliveriesCompletedScreen,
        path: RouteName.deliveriesCompletedScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            transitionType: PageTransitionType.slideRightToLeft,
            context: context,
            state: state,
            child: DeliveriesCompletedScreen(),
          );
        },
      ),

      GoRoute(
        name: RouteName.statisticsDashboardScreen,
        path: RouteName.statisticsDashboardScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            transitionType: PageTransitionType.slideRightToLeft,
            context: context,
            state: state,
            child: StatisticsDashboardScreen(),
          );
        },
      ),
    ],
  );
}
