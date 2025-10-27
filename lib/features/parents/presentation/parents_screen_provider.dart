import 'package:abdelrahman875_fo21aef727586/features/creer_une_commande_fret/presentaion/creer_une_commande_screen.dart';
import 'package:abdelrahman875_fo21aef727586/features/details_commande/presentation/details_commande_screen.dart';
import 'package:abdelrahman875_fo21aef727586/features/home/presentation/home_veiw.dart';
import 'package:abdelrahman875_fo21aef727586/features/parents/model/parent_screen_riverpod_model.dart';
import 'package:abdelrahman875_fo21aef727586/features/qr_code/qr_code_scaner_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/legacy.dart';
import '../../setting_screen/presentation/profile_setting_screen.dart';
class ParentsScreenProvider extends StateNotifier<ParentScreenRiverPodModel> {
  ParentsScreenProvider() : super(ParentScreenRiverPodModel());

  /// variable name
  final List<Widget> _pageList = const [
    HomeView(),
    CreerUneCommandeScreen(),
    QrScannerScreen(),
    DetailsCommandeScreen(),
    ProfileSettingScreen(),
  ];
  /// variable name
  List<Widget> get pageList => _pageList;

  void onSelectedIndex(int index) {
    debugPrint("\nSelected Page index : $index\n");
    state = state.copyWith(selectedIndex: index);
  }
}

final parentsScreenProvider =
    StateNotifierProvider<ParentsScreenProvider, ParentScreenRiverPodModel>((
      ref,
    ) {
      return ParentsScreenProvider();
    });
