import 'package:abdelrahman875_fo21aef727586/core/routes/build_page_with_transition.dart';
import 'package:abdelrahman875_fo21aef727586/core/routes/route_name.dart';
import 'package:abdelrahman875_fo21aef727586/features/espaces/espaces_screen.dart';
import 'package:abdelrahman875_fo21aef727586/features/parents/presentation/parents_screen.dart';
import 'package:abdelrahman875_fo21aef727586/features/qr_code/qr_code_scaner_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/Command/presentation/command_5.dart';
import '../../features/Command/presentation/command_vaid_screen.dart';
import '../../features/Command/presentation/votre_command.dart';
import '../../features/auth/signin/presentation/sign_in_screen.dart';
import '../../features/Mission_accept/presentation/Condition_affret.dart';
import '../../features/Mission_accept/presentation/after_preuveScreen.dart';
import '../../features/Mission_accept/presentation/aftercommanScreen.dart';
import '../../features/Mission_accept/presentation/mis_acceptScreen.dart';
import '../../features/Mission_accept/presentation/mis_termin.dart';
import '../../features/Mission_accept/presentation/mission_accept_screen.dart';
import '../../features/Mission_accept/presentation/preuve_screen.dart';
import '../../features/creer_une_commande_fret/presentaion/creer_une_commande_screen.dart';
import '../../features/details_commande/presentation/details_commande_screen.dart';
import '../../features/home/presentation/home_veiw.dart';
import '../../features/Inscription/Inscription.dart';

import '../../features/Inscription/Transporteur_Vehicule.dart';
import '../../features/Inscription/commande.dart';
import '../../features/Inscription/inscription_doc.dart';
import '../../features/Inscription_Donneur/Donneur_screen.dart';
import '../../features/Inscription_Donneur/inscription_doc.dart';
import '../../features/mission_screen/presentation/mission_screen.dart';
import '../../features/onboading/onboad_screen/onboading_screen.dart';
import '../../features/setting_screen/presentation/profile_setting_screen.dart';
import '../../features/splash/presentation/splash_screen.dart';
import '../../features/track_home_demandes/presentation/track_home_demandes_screen.dart';

class RouteConfig {
  GoRouter goRouter = GoRouter(

    initialLocation: RouteName.missionScreen,


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
          return const MaterialPage(child: votreCommand());
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
          return const MaterialPage(child: afterScreen());
        },
      ),
      GoRoute(
        name: RouteName.mis_termineeScreen,
        path: RouteName.mis_termineeScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: mis_termineeScreen());
        },
      ),
      GoRoute(
        name: RouteName.preuveScreen,
        path: RouteName.preuveScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: preuveScreen());
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
        name: RouteName.conditionScreen,
        path: RouteName.conditionScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: conditionScreen());
        },
      ),

      GoRoute(
        name: RouteName.missionScreen_One,
        path: RouteName.missionScreen_One,
        pageBuilder: (context, state) {
          return const MaterialPage(child: missionScreen_One());
        },
      ),
      GoRoute(
        name: RouteName.mis_accepteScreen,
        path: RouteName.mis_accepteScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: mis_accepteScreen());
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
        name: RouteName.inscriptionDoc_two,
        path: RouteName.inscriptionDoc_two,
        pageBuilder: (context, state) {
          return const MaterialPage(child: InscriptionDoc_two());
        },
      ),
      GoRoute(
        name: RouteName.trans_Vehicule,
        path: RouteName.trans_Vehicule,
        pageBuilder: (context, state) {
          return const MaterialPage(child: Trans_Vehicule());
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
          return const MaterialPage(child: Inscription());
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
     

    ],
  );
}
