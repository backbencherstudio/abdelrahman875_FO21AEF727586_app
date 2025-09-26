import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:abdelrahman875_fo21aef727586/features/parents/presentation/parents_screen_provider.dart';
import 'package:abdelrahman875_fo21aef727586/features/parents/presentation/widget/customNavbarItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/icons.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(24),
        topRight: Radius.circular(24),
      ),
      child: BottomAppBar(
        surfaceTintColor: Colors.transparent,
        elevation: 10,
        color: const Color(0xFFFFFFFF),
        shape: null,
        clipBehavior: Clip.antiAlias, // important for the curved effect
        child: SizedBox(
          height: 56,
          child: Consumer(
            builder: (_, ref, __) {
              final parentReadProvider = ref.read(
                parentsScreenProvider.notifier,
              );
              final parentProvider = ref.watch(parentsScreenProvider);

              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Consumer(
                    builder: (context, ref, _) {
                      //final isLocked = ref.watch(isLockedIn);
                      return CustomBottomNavItem(
                        iconPath: AppIcons.home,
                        label: "home",
                        onTap: () {
                          // if(isLocked == true){
                          // showLockInSheet(context);

                          // }
                          parentReadProvider.onSelectedIndex(0);
                        },
                        isActive: parentProvider.selectedIndex == 0,
                       activeColor: AppColors.secondaryColor,
                    defaultColor: const Color(0xff777980),
                      );
                    },
                  ), 
                   CustomBottomNavItem(
                    iconPath: AppIcons.squireBoxIcon,
                    label: "Commandes",
                    onTap: () => parentReadProvider.onSelectedIndex(1),
                    isActive: parentProvider.selectedIndex == 1,
                   activeColor: AppColors.secondaryColor,
                    defaultColor: const Color(0xff777980),
                  ),
               
                  const Expanded(child: SizedBox()),
                  CustomBottomNavItem(
                    iconPath: AppIcons.boxDotIcon,
                    label: "suivi",
                    onTap: () => parentReadProvider.onSelectedIndex(3),
                    isActive: parentProvider.selectedIndex == 3,
                   activeColor: AppColors.secondaryColor,
                    defaultColor: const Color(0xff777980),
                  ),
                  CustomBottomNavItem(
                    iconPath: AppIcons.settingSvg,
                    label: "setting",
                    onTap: () => parentReadProvider.onSelectedIndex(4),
                    isActive: parentProvider.selectedIndex == 4,
                   activeColor: AppColors.secondaryColor,
                    defaultColor: const Color(0xff777980),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
