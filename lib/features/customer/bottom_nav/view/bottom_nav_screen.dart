// ignore_for_file: deprecated_member_use

import 'package:abdelrahman875_fo21aef727586/features/customer/bottom_nav/viewmodel/bottom_nav_bar_viewmodel.dart';
import 'package:abdelrahman875_fo21aef727586/features/customer/home/view/home_veiw.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/icons.dart';
import '../../../setting_screen/presentation/profile_setting_screen.dart';
import '../../create_order/view/create_order_screen.dart';
import '../../my_delivery/view/my_delivery_screen.dart';
import '../../track_delivery/view/package_tracking_screen.dart';

class CustomerBottomNavScreen extends ConsumerStatefulWidget {
  const CustomerBottomNavScreen({super.key});

  @override
  ConsumerState<CustomerBottomNavScreen> createState() =>
      _CustomerBottomNavScreenState();
}

class _CustomerBottomNavScreenState
    extends ConsumerState<CustomerBottomNavScreen> {
  final List<Widget> _pageList = const [
    HomeView(),
    MyDeliveryScreen(),
    CreerUneCommandeScreen(),
    PackageTrackingScreen(),
    ProfileSettingScreen(),
  ];
  final List<Widget> _bottomList = const [
    BottomNavItem(title: "Home", icon: AppIcons.homePng),
    BottomNavItem(title: "Livrasons", icon: AppIcons.navBoxPng),
    BottomNavItem(title: "creer", icon: AppIcons.plusPng),
    BottomNavItem(title: "SuiVi", icon: AppIcons.suiviPng),
    BottomNavItem(title: "PAra", icon: AppIcons.settingIcon),
  ];

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final isKeyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;

    debugPrint("\n\n rebuilding \n\n");
    return Scaffold(
      body: _pageList[ref.watch(customerNavBarProvider)],
      bottomNavigationBar: Container(
        height: 83.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, -3),
            ),
          ],
        ),
        child: Stack(
          clipBehavior: Clip.none, // allows the lifted button to show outside
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(_bottomList.length, (index) {
                  // For middle item (floating effect)
                  if (index == 2) {
                    return Transform.translate(
                      offset: const Offset(-5, -10), // lift it up
                      child: GestureDetector(
                        onTap: () {
                          ref
                              .read(customerNavBarProvider.notifier)
                              .onTabIndex(index);
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color(0xff777980),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 8,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              padding: const EdgeInsets.all(12),
                              child: Image.asset(
                                AppIcons.plusPng,
                                width: 24,
                                height: 24,
                                fit: BoxFit.cover,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 12.h),
                            Text(
                              "Carrier",
                              style: TextStyle(
                                fontSize: 11,
                                color: const Color(0xff777980),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }

                  // For all other items
                  return GestureDetector(
                    onTap: () {
                      ref
                          .read(customerNavBarProvider.notifier)
                          .onTabIndex(index);
                    },
                    child: _bottomList[index],
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String title;
  final String icon;
  const BottomNavItem({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          icon,
          width: 24,
          height: 24,
          fit: BoxFit.cover,
          color: const Color(0xff777980),
        ),
        SizedBox(height: 6),
        Text(
          title,
          style: TextStyle(fontSize: 11, color: const Color(0xff777980)),
        ),
      ],
    );
  }
}
