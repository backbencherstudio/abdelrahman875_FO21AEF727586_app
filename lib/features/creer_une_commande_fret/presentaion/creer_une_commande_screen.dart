import 'package:abdelrahman875_fo21aef727586/core/constants/icons.dart';
import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:abdelrahman875_fo21aef727586/features/creer_une_commande_fret/presentaion/widgets/charement_section.dart';
import 'package:abdelrahman875_fo21aef727586/features/creer_une_commande_fret/presentaion/widgets/custom_circular_container.dart';
import 'package:abdelrahman875_fo21aef727586/features/creer_une_commande_fret/presentaion/widgets/livraison_section.dart';
import 'package:abdelrahman875_fo21aef727586/features/creer_une_commande_fret/presentaion/widgets/marchandise_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/primery_button.dart';
import '../riverpod/selected_index_provider.dart';
import '../riverpod/toggle_freight_express_provider.dart';

class CreerUneCommandeScreen extends StatefulWidget {
  const CreerUneCommandeScreen({super.key});

  @override
  State<CreerUneCommandeScreen> createState() => _CreerUneCommandeScreenState();
}

final List<String> titles = ['Chargement', 'Marchandise', 'Livraison'];

class _CreerUneCommandeScreenState extends State<CreerUneCommandeScreen> {
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.r),
                child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.blackText,
                    size: 24.r,
                  ),
                ),
              ),

              SizedBox(height: 32.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Créer une commande',
                        style: style.headlineSmall?.copyWith(
                          color: AppColors.blackText,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 12.h),
                      Text(
                        'Choisissez le type d’envoi adapté à vos colis.',
                        style: style.titleSmall?.copyWith(
                          color: AppColors.grayText,
                          fontWeight: FontWeight.w400,
                        ),
                      ),

                      SizedBox(height: 12.h),

                      Consumer(
                        builder: (context, ref, _) {
                          final selectedIndex = ref.watch(
                            selectedFreightExpressProvider,
                          );
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomCircularContainer(
                                title: 'Fret',
                                image: Image.asset(
                                  AppIcons.shipPng,
                                  height: 50,
                                  width: 50,
                                ),
                                color: selectedIndex == 0
                                    ? AppColors.containerColor6
                                    : AppColors.whiteColor,
                                borderColor: selectedIndex == 0
                                    ? AppColors.borderColor2.withAlpha(100)
                                    : AppColors.borderColor3,
                                onTap: () {
                                  ref
                                          .read(
                                            selectedFreightExpressProvider
                                                .notifier,
                                          )
                                          .state =
                                      0;
                                },
                              ),
                              SizedBox(width: 100.w),
                              CustomCircularContainer(
                                title: 'Express',
                                image: Image.asset(
                                  AppIcons.carShipPng,
                                  height: 50,
                                  width: 50,
                                ),
                                color: selectedIndex == 1
                                    ? AppColors.containerColor6
                                    : AppColors.whiteColor,
                                borderColor: selectedIndex == 1
                                    ? AppColors.borderColor2.withAlpha(100)
                                    : AppColors.borderColor3,
                                onTap: () {
                                  ref
                                          .read(
                                            selectedFreightExpressProvider
                                                .notifier,
                                          )
                                          .state =
                                      1;
                                },
                              ),
                            ],
                          );
                        },
                      ),

                      SizedBox(height: 40.h),
                      Consumer(
                        builder: (context, ref, _) {
                          final selectedIndex = ref.watch(
                            selectedIndexProvider,
                          );
                          return Row(
                            children: List.generate(titles.length, (index) {
                              final isSelected = selectedIndex == index;
                              return Row(
                                children: [
                                  PrimaryButton(
                                    title: titles[index],
                                    onTap: () =>
                                        ref
                                                .read(
                                                  selectedIndexProvider
                                                      .notifier,
                                                )
                                                .state =
                                            index,
                                    containerColor: isSelected
                                        ? AppColors.containerColor7
                                        : AppColors.transparentColor,
                                    textStyle: style.bodyMedium?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: isSelected
                                          ? AppColors.whiteColor
                                          : AppColors.grayText4,
                                    ),
                                  ),
                                  if (index < titles.length - 1)
                                    SizedBox(width: 8.w),
                                ],
                              );
                            }),
                          );
                        },
                      ),
                      SizedBox(height: 24.h),
                      Consumer(
                        builder: (_, ref, _) {
                          final index = ref.watch(selectedIndexProvider);
                          if (index == 0) {
                            return Chargement();
                          } else if (index == 1) {
                            return MarchandiseSection();
                          } else {
                            return LivraisonSection();
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
