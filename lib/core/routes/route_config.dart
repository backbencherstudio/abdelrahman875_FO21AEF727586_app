import 'package:abdelrahman875_fo21aef727586/core/routes/build_page_with_transition.dart';
import 'package:abdelrahman875_fo21aef727586/core/routes/route_name.dart';
import 'package:abdelrahman875_fo21aef727586/features/espaces/espaces_screen.dart';
import 'package:abdelrahman875_fo21aef727586/features/parents/presentation/parents_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/Command/presentation/command_5.dart';
import '../../features/Command/presentation/votre_command.dart';
import '../../features/creer_une_commande_fret/presentaion/creer_une_commande_screen.dart';
import '../../features/home/presentation/home_veiw.dart';
import '../../features/Inscription/Inscription.dart';

import '../../features/Inscription/Transporteur_Vehicule.dart';
import '../../features/Inscription/commande.dart';
import '../../features/Inscription/inscription_doc.dart';
import '../../features/Inscription_Donneur/Donneur_screen.dart';
import '../../features/Inscription_Donneur/inscription_doc.dart';
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
      // GoRoute(
      //   name: RouteName.signIn,
      //   path: RouteName.signIn,
      //   pageBuilder: (context, state) {
      //     return const MaterialPage(child: SignIn());
      //   },
      // ),
      GoRoute(
        name: RouteName.votreCommand,
        path: RouteName.votreCommand,
        pageBuilder: (context, state) {
          return const MaterialPage(child: votreCommand());
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
        name: RouteName.inscriptionDoc,
        path: RouteName.inscriptionDoc,
        pageBuilder: (context, state) {
          return const MaterialPage(child: InscriptionDoc());
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
     

    ],
  );
}
