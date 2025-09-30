import 'package:abdelrahman875_fo21aef727586/features/parents/presentation/parents_screen_provider.dart';
import 'package:abdelrahman875_fo21aef727586/features/parents/presentation/widget/bottomNavbar.dart';
import 'package:abdelrahman875_fo21aef727586/features/parents/presentation/widget/floatingAction_buutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ParentsScreen extends StatelessWidget {
  const ParentsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final isKeyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;

    debugPrint("\n\n rebuilding \n\n");
    return Scaffold(
      resizeToAvoidBottomInset: true,

      ///another(done)
      floatingActionButton: Consumer(
        builder: (_, ref, _) {
          final parentScreenProvider = ref.read(parentsScreenProvider.notifier);

          final selectedIndex = ref.watch(parentsScreenProvider).selectedIndex;
          return FloatingHomeButton(
            isKeyboardOpen: MediaQuery.of(context).viewInsets.bottom > 0,
            onTap: () {
              debugPrint("\nits tapped\n");
              parentScreenProvider.onSelectedIndex(0);
            },
            isSelected: selectedIndex == 0,
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      extendBody: false,

      /// another file (done)
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: [
          Consumer(
            builder: (_, ref, _) {
              final parentScreenProvider = ref.watch(parentsScreenProvider);

              return IndexedStack(
                index: parentScreenProvider.selectedIndex,
                children: ref.read(parentsScreenProvider.notifier).pageList,
              );
            },
          ),
        ],
      ),
    );
  }
}
