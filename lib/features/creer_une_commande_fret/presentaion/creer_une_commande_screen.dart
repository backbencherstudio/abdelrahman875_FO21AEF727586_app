import 'package:abdelrahman875_fo21aef727586/core/constants/icons.dart';
import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:abdelrahman875_fo21aef727586/features/creer_une_commande_fret/presentaion/widgets/custom_circular_container.dart';
import 'package:abdelrahman875_fo21aef727586/features/creer_une_commande_fret/presentaion/widgets/input_label.dart';
import 'package:abdelrahman875_fo21aef727586/features/widgets/common_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/primery_button.dart';
import '../riverpod/selected_index_provider.dart';

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
                child: Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.blackText,
                  size: 24.r,
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

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomCircularContainer(
                            title: 'Fret',
                            image: Image.asset(
                              AppIcons.shipPng,
                              height: 50,
                              width: 50,
                            ),
                          ),
                          SizedBox(width: 100.w),
                          CustomCircularContainer(
                            title: 'Express',
                            color: AppColors.whiteColor,
                            borderColor: AppColors.borderColor3,
                            image: Image.asset(
                              AppIcons.carShipPng,
                              height: 50,
                              width: 50,
                            ),
                          ),
                        ],
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

                      InputLabel(title: 'Lieu de Chargement'),
                      SizedBox(height: 12.h),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.boxColor2.withAlpha(15),
                          hintText: 'Lyon',
                          hintStyle: style.bodyLarge?.copyWith(
                            color: AppColors.grayText4,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h),

                      InputLabel(title: 'Adresse'),
                      SizedBox(height: 12.h),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.boxColor2.withAlpha(15),
                          hintText: '12 rue des Lilas',
                          hintStyle: style.bodyLarge?.copyWith(
                            color: AppColors.grayText4,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h),

                      InputLabel(title: 'Ville'),
                      SizedBox(height: 12.h),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.boxColor2.withAlpha(15),
                          hintText: 'Lyon',
                          hintStyle: style.bodyLarge?.copyWith(
                            color: AppColors.grayText4,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h),

                      InputLabel(title: 'Code Postale'),
                      SizedBox(height: 12.h),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.boxColor2.withAlpha(15),
                          hintText: '69000',
                          hintStyle: style.bodyLarge?.copyWith(
                            color: AppColors.grayText4,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h),

                      InputLabel(title: 'Mon Numéro de téléphone'),
                      SizedBox(height: 12.h),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.boxColor2.withAlpha(15),
                          hintText: '+33 6 59 97 12 13',
                          hintStyle: style.bodyLarge?.copyWith(
                            color: AppColors.grayText4,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h),

                      InputLabel(title: 'Date de Chargement'),
                      SizedBox(height: 12.h),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.boxColor2.withAlpha(15),
                          hintText: '12 septembre 2025',
                          hintStyle: style.bodyLarge?.copyWith(
                            color: AppColors.grayText4,
                            fontWeight: FontWeight.w400,
                          ),
                          suffixIcon: Icon(
                            Icons.calendar_month,
                            color: AppColors.grayText4,
                            size: 24.r,
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h),

                      InputLabel(title: 'Horaire de Chargement'),
                      SizedBox(height: 12.h),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.boxColor2.withAlpha(15),
                          hintText: '13h20',
                          hintStyle: style.bodyLarge?.copyWith(
                            color: AppColors.grayText4,
                            fontWeight: FontWeight.w400,
                          ),
                          suffixIcon: Icon(
                            Icons.access_time,
                            color: AppColors.grayText4,
                            size: 24.r,
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h),

                      InputLabel(title: 'Instructions'),
                      SizedBox(height: 12.h),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.boxColor2.withAlpha(15),
                          hintText: 'Ne pas jeter le colis.',
                          hintStyle: style.bodyLarge?.copyWith(
                            color: AppColors.grayText4,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h),

                      InputLabel(title: 'Nom du personel Chargement'),
                      SizedBox(height: 12.h),
                      TextFormField(
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.boxColor2.withAlpha(15),
                          hintText: 'UPS',
                          hintStyle: style.bodyLarge?.copyWith(
                            color: AppColors.grayText4,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height: 40.h),
                      
                      PrimaryButton(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(vertical: 12.h),
                          containerColor: AppColors.blackColor,
                          title: 'Suivant', onTap: (){})
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
