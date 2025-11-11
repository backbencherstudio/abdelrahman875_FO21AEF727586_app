import 'package:abdelrahman875_fo21aef727586/core/routes/build_page_with_transition.dart';
import 'package:abdelrahman875_fo21aef727586/core/routes/route_name.dart';
import 'package:abdelrahman875_fo21aef727586/features/espaces/espaces_screen.dart';
import 'package:abdelrahman875_fo21aef727586/features/notifications/presentation/notification_screen.dart';
import 'package:abdelrahman875_fo21aef727586/features/customer/bottom_nav/view/bottom_nav_screen.dart';
import 'package:abdelrahman875_fo21aef727586/features/qr_code/qr_code_scaner_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/Command/presentation/command_5.dart';
import '../../features/Command/presentation/command_vaid_screen.dart';
import '../../features/Command/presentation/votre_command.dart';
import '../../features/auth/reset_password/presentation/forgot_password_screen.dart';
import '../../features/auth/reset_password/presentation/new_password_screen.dart';
import '../../features/auth/sign_up/view/sign_up_screen.dart';
import '../../features/auth/signin/presentation/sign_in_screen.dart';
import '../../features/Mission_accept/presentation/condition_affret.dart';
import '../../features/Mission_accept/presentation/after_preuve_screen.dart';
import '../../features/Mission_accept/presentation/aftercomman_screen.dart';
import '../../features/Mission_accept/presentation/mis_accept_screen.dart';
import '../../features/Mission_accept/presentation/mis_termin.dart';
import '../../features/Mission_accept/presentation/mission_accept_screen.dart';
import '../../features/Mission_accept/presentation/preuve_screen.dart';
import '../../features/auth/reset_password/presentation/verify_otp_screen.dart';
import '../../features/creer_une_commande_fret/presentaion/creer_une_commande_screen.dart';
import '../../features/customer/Inscription_Donneur/donneur_screen.dart';
import '../../features/customer/Inscription_Donneur/inscription_doc.dart';
import '../../features/details_commande/presentation/details_commande_screen.dart';
import '../../features/documents/presentation/document_screen.dart';
import '../../features/customer/home/view/home_veiw.dart';
import '../../features/driver/Inscription/inscription_transporteur.dart';

import '../../features/driver/Inscription/transporteur_vehicule.dart';
import '../../features/driver/Inscription/commande.dart';
import '../../features/driver/Inscription/inscription_doc.dart';
import '../../features/driver/home_transporteur/view/home_transpoteur_screen.dart';
import '../../features/driver/home_transporteur/view/transporteur_missions.dart';
import '../../features/mission_screen/presentation/mission_screen.dart';
import '../../features/onboading/onboad_screen/onboading_screen.dart';
import '../../features/paiement_screen/presentation/paiement_screen.dart';
import '../../features/setting_screen/presentation/profile_setting_screen.dart';
import '../../features/splash/presentation/splash_screen.dart';
import '../../features/track_home_demandes/presentation/track_home_demandes_screen.dart';

class RouteConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: RouteName.espacesScreen,

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
        name: RouteName.votreCommand,
        path: RouteName.votreCommand,
        pageBuilder: (context, state) {
          return const MaterialPage(child: VotreCommand());
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
        name: RouteName.paiementScreen,
        path: RouteName.paiementScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: PaiementScreen());
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
        name: RouteName.commandScreen,
        path: RouteName.commandScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: CommandScreen());
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
        name: RouteName.command5,
        path: RouteName.command5,
        pageBuilder: (context, state) {
          return const MaterialPage(child: Command5());
        },
      ),
      GoRoute(
        name: RouteName.detailsCommandeScreen,
        path: RouteName.detailsCommandeScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: DetailsCommandeScreen());
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
        name: RouteName.creerUneCommandeScreen,
        path: RouteName.creerUneCommandeScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: CreerUneCommandeScreen());
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
        name: RouteName.missionScreen,
        path: RouteName.missionScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            transitionType: PageTransitionType.slideRightToLeft,
            context: context,
            state: state,
            child: MissionScreen(),
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
    ],
  );
}
