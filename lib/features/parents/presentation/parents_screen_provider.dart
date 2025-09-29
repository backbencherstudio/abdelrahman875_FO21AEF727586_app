import 'package:abdelrahman875_fo21aef727586/features/home/presentation/home_veiw.dart';
import 'package:abdelrahman875_fo21aef727586/features/parents/model/parent_screen_riverpod_model.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/legacy.dart';

import '../../setting_screen/presentation/profile_setting_screen.dart';

class ParentsScreenProvider extends StateNotifier<ParentScreenRiverPodModel> {
  ParentsScreenProvider() : super(ParentScreenRiverPodModel());

  /// variable name
  final List<Widget> _pageList = const [
    HomeView(),
    Scaffold(body: Center(child: Text("commandes"))),
    Scaffold(body: Center(child: Text("scanner"))),
    Scaffold(body: Center(child: Text("Suivi"))),
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
