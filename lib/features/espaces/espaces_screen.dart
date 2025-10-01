import 'package:abdelrahman875_fo21aef727586/features/espaces/riverpod/select_cart_provider.dart';
import 'package:abdelrahman875_fo21aef727586/features/espaces/widgets/common_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:abdelrahman875_fo21aef727586/core/constants/icons.dart';
import 'package:abdelrahman875_fo21aef727586/core/routes/route_name.dart';
import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:abdelrahman875_fo21aef727586/features/widgets/primery_button.dart';

class EspacesScreen extends ConsumerWidget {
  const EspacesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(selectedCartProvider);

    return Scaffold(
      backgroundColor: AppColors.primaryTextColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 34, top: 92, bottom: 33),
            child: Text(
              "Comment allez-vous\nutiliser DeliverApp ?",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 24.h,
                color: AppColors.whiteTextColor,
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(80),
                  topRight: Radius.circular(80),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 54.h),
                  Text(
                    "Je suis",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 24.h,
                      color: AppColors.blackColor,
                    ),
                  ),

                  /// Option 1
                  GestureDetector(
                    onTap: () {
                      ref.read(selectedCartProvider.notifier).state = 0;
                    },
                    child: CommonCartStack(
                      title: "Donneur d’ordre",
                      subTitle:
                      "Je cherche un transporteur pour mes livraisons.",
                      iconPth: AppIcons.verification,
                      isSelected: selectedIndex == 0,
                    ),
                  ),

                  /// Option 2
                  GestureDetector(
                    onTap: () {
                      ref.read(selectedCartProvider.notifier).state = 1;
                    },
                    child: CommonCartStack(
                      title: "Transporteur",
                      subTitle: "Je cherche des livraisons à réaliser.",
                      iconPth: AppIcons.camion,
                      isSelected: selectedIndex == 1,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                      top: 40,
                      left: 17,
                      right: 17,
                      bottom: 30,
                    ),
                    child: PrimaryButton(
                      onTap: () {
                        context.push(RouteName.signInScreen);
                      },
                      title: "S’inscrire",
                      padding: const EdgeInsets.all(16),
                      width: double.infinity,
                      containerColor: AppColors.blackColor,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Déjà un compte ? ",
                          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.normal,
                            fontSize: 14.h,
                            color: AppColors.bodyTextColor,
                          ),
                        ),
                        TextSpan(
                          text: "Se connecter",
                          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.normal,
                            fontSize: 14.h,
                            color: AppColors.blackColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
