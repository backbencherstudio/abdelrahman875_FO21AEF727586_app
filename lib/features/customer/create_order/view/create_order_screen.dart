import 'package:abdelrahman875_fo21aef727586/core/constants/icons.dart';
import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:abdelrahman875_fo21aef727586/features/customer/create_order/view/widgets/charement_section.dart';
import 'package:abdelrahman875_fo21aef727586/features/customer/create_order/view/widgets/custom_circular_container.dart';
import 'package:abdelrahman875_fo21aef727586/features/customer/create_order/view/widgets/livraison_section.dart';
import 'package:abdelrahman875_fo21aef727586/features/customer/create_order/view/widgets/marchandise_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/primery_button.dart';
import '../viewmodel/selected_index_provider.dart';
import '../viewmodel/toggle_freight_express_provider.dart';

class CreateOrderScreen extends StatefulWidget {
  const CreateOrderScreen({super.key});

  @override
  State<CreateOrderScreen> createState() => _CreateOrderScreenState();
}

final List<String> titles = ['Chargement', 'Marchandise', 'Livraison'];

class _CreateOrderScreenState extends State<CreateOrderScreen> {
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
              SizedBox(height: 12.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        Image.asset(AppIcons.arrowBackPng, width: 24.w,),
                        SizedBox(width: 2.w,),
                        Text('Retour',style: style.bodyLarge?.copyWith(
                          color: AppColors.containerColor7,
                          fontWeight: FontWeight.w600,
                        ),)
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Text('Annuler',style: style.bodyLarge?.copyWith(
                      color: AppColors.containerColor7,
                      fontWeight: FontWeight.w600,
                    ),),
                  )
                ],
              ),


              SizedBox(height: 24.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Programmer une livraison',
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
                                title: 'Express +30%',
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
                                    padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 6.h),
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
                                      fontWeight: FontWeight.w600,
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
