// ignore_for_file: deprecated_member_use

import 'package:abdelrahman875_fo21aef727586/features/customer/bottom_nav/viewmodel/bottom_nav_bar_viewmodel.dart';
import 'package:abdelrahman875_fo21aef727586/features/customer/home/view/home_veiw.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/icons.dart';
import '../../../settings/view/profile_setting_screen.dart';
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
    CreateOrderScreen(),
    PackageTrackingScreen(),
    ProfileSettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final currentIndex = ref.watch(customerNavBarProvider);

    debugPrint("\n\n rebuilding \n\n");
    return Scaffold(
      body: _pageList[currentIndex],
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
                children: List.generate(_pageList.length, (index) {
                  // For middle item (floating effect)
                  if (index == 2) {
                    final isSelected = currentIndex == index;
                    final containerColor = isSelected
                        ? const Color(0xff2A6DCD) // Selected color
                        : const Color(0xff777980); // Unselected color

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
                                color: containerColor,
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
                                color: isSelected ? const Color(0xff2A6DCD) : const Color(0xff777980),
                                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
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
                    child: BottomNavItem(
                      title: _getTitle(index),
                      icon: _getIcon(index),
                      isSelected: currentIndex == index,
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getTitle(int index) {
    switch (index) {
      case 0:
        return "Home";
      case 1:
        return "Livrasons";
      case 2:
        return "creer";
      case 3:
        return "SuiVi";
      case 4:
        return "Paramètres";
      default:
        return "";
    }
  }

  String _getIcon(int index) {
    switch (index) {
      case 0:
        return AppIcons.homePng;
      case 1:
        return AppIcons.navBoxPng;
      case 2:
        return AppIcons.plusPng;
      case 3:
        return AppIcons.suiviPng;
      case 4:
        return AppIcons.settingIcon;
      default:
        return AppIcons.homePng;
    }
  }
}

class BottomNavItem extends StatelessWidget {
  final String title;
  final String icon;
  final bool isSelected;

  const BottomNavItem({
    super.key,
    required this.title,
    required this.icon,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    final selectedColor = const Color(0xff2A6DCD); // Active color
    final unselectedColor = const Color(0xff777980); // Inactive color

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          icon,
          width: 24,
          height: 24,
          fit: BoxFit.cover,
          color: isSelected ? selectedColor : unselectedColor,
        ),
        SizedBox(height: 6),
        Text(
          title,
          style: TextStyle(
            fontSize: 11,
            color: isSelected ? selectedColor : unselectedColor,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
          ),
        ),
      ],
    );
  }
}