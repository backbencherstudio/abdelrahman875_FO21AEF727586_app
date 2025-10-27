// ignore_for_file: file_names

import 'dart:developer';

import 'package:abdelrahman875_fo21aef727586/core/constants/icons.dart';
import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:abdelrahman875_fo21aef727586/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../core/routes/route_name.dart';
import '../creer_une_commande_fret/presentaion/widgets/input_label.dart';
import '../widgets/primery_button.dart';

class TransVehicule extends StatefulWidget {
  const TransVehicule({super.key});

  @override
  State<TransVehicule> createState() => _InscriptionState();
}

class _InscriptionState extends State<TransVehicule> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _typeTEController = TextEditingController();
  final TextEditingController _marqueTEController = TextEditingController();
  final TextEditingController _plaqueTEController = TextEditingController();
  final TextEditingController _anneeTEController = TextEditingController();
  final TextEditingController _longueurTEController = TextEditingController();
  final TextEditingController _largeurTEController = TextEditingController();
  final TextEditingController _hauteurTEController = TextEditingController();
  final TextEditingController _volumeTEController = TextEditingController();
  final TextEditingController _capaciteTEController = TextEditingController();
  final TextEditingController _nombreTEController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _typeTEController.dispose();
    _marqueTEController.dispose();
    _plaqueTEController.dispose();
    _anneeTEController.dispose();
    _longueurTEController.dispose();
    _largeurTEController.dispose();
    _hauteurTEController.dispose();
    _volumeTEController.dispose();
    _capaciteTEController.dispose();
    _nombreTEController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 16.h),
                    Text(
                      'Inscription',
                      style: style.headlineSmall?.copyWith(
                        color: AppColors.textColor1,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      'Transporteur',
                      style: style.titleMedium?.copyWith(
                        fontWeight: FontWeight.w400,
                        color: AppColors.textColor2,
                      )
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.containerColor13,
                            borderRadius: BorderRadius.circular(4.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(4.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(AppIcons.trackPng,height: 28.h,width: 28.w,),
                                SizedBox(width: 10.w,),
                                Text('Le vehicule',style: style.bodyLarge?.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.textColor2,
                                ),)
                              ],
                            ),
                          ),
                        ),
                  SizedBox(height: 18.h,),

                  // Type de véhicule
                        InputLabel(title: 'Type de véhicule'),
                        SizedBox(height: 12.h),
                        TextFormField(
                          controller: _typeTEController,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Hinek',
                            hintStyle: style.bodyMedium?.copyWith(
                              color: AppColors.grayText4,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          validator: (value){
                            if(value!.isEmpty){
                              return 'Veuillez saisir le type de véhicule';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 16.h),

                  // Marque / Modèle
                        InputLabel(title: 'Marque / Modèle'),
                        SizedBox(height: 12.h),
                        TextFormField(
                          controller: _marqueTEController,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Eric',
                            hintStyle: style.bodyMedium?.copyWith(
                              color: AppColors.grayText4,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          validator: (value){
                            if(value!.isEmpty){
                              return 'Veuillez saisir la marque / modèle';
                            }
                            return null;
                          }
                        ),
                        SizedBox(height: 16.h),

                  // Plaque d’immatriculation
                        InputLabel(title: 'Plaque d’immatriculation'),
                        SizedBox(height: 12.h),
                        TextFormField(
                          controller: _plaqueTEController,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'ww-767-fr',
                            hintStyle: style.bodyMedium?.copyWith(
                              color: AppColors.grayText4,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          validator: (value){
                            if(value!.isEmpty){
                              return 'Veuillez saisir la plaque d’immatriculation';
                            }
                            return null;
                          }
                        ),
                        SizedBox(height: 16.h),

                  // Année de mise en circulation
                        InputLabel(title: 'Année de mise en circulation'),
                        SizedBox(height: 12.h),
                        TextFormField(
                          controller: _anneeTEController,
                          onTap: ()async{
                            await Utils.selectDate(context, _anneeTEController);
                          },
                          readOnly: true,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: '01/01/1977',
                            hintStyle: style.bodyMedium?.copyWith(
                              color: AppColors.grayText4,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          validator: (value){
                            if(value!.isEmpty){
                              return 'Veuillez saisir l’année de mise en circulation';
                            }
                            return null;
                          }
                        ),
                        SizedBox(height: 16.h),

                  // Dimensions utiles de chargement
                        InputLabel(title: 'Dimensions utiles de chargement'),
                        SizedBox(height: 12.h),
                        TextFormField(
                          controller: _longueurTEController,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Longueur',
                            hintStyle: style.bodyMedium?.copyWith(
                              color: AppColors.grayText4,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          validator: (value){
                            if(value!.isEmpty){
                              return 'Veuillez saisir la longueur';
                            }
                            return null;
                          }
                        ),
                        SizedBox(height: 12.h),
                        TextFormField(
                          controller: _largeurTEController,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Largeur',
                            hintStyle: style.bodyMedium?.copyWith(
                              color: AppColors.grayText4,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          validator: (value){
                            if(value!.isEmpty){
                              return 'Veuillez saisir la largeur';
                            }
                            return null;
                          }
                        ),
                        SizedBox(height: 12.h),
                        TextFormField(
                          controller: _hauteurTEController,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Hauteur',
                            hintStyle: style.bodyMedium?.copyWith(
                              color: AppColors.grayText4,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                            validator: (value){
                              if(value!.isEmpty){
                                return 'Veuillez saisir la hauteur';
                              }
                              return null;
                            }
                        ),
                        SizedBox(height: 16.h),

                  // Volume utile (en m³)
                        InputLabel(title: 'Volume utile (en m³)'),
                        SizedBox(height: 12.h),
                        TextFormField(
                          controller: _volumeTEController,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'm³',
                            hintStyle: style.bodyMedium?.copyWith(
                              color: AppColors.grayText4,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          validator: (value){
                            if(value!.isEmpty){
                              return 'Veuillez saisir le volume utile';
                            }
                            return null;
                          }
                        ),
                        SizedBox(height: 16.h),

                  // Capacité de charge
                        InputLabel(title: 'Capacité de charge'),
                        SizedBox(height: 12.h),
                        TextFormField(
                          controller: _capaciteTEController,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'en kg ou tonnes',
                            hintStyle: style.bodyMedium?.copyWith(
                              color: AppColors.grayText4,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          validator: (value){
                            if(value!.isEmpty){
                              return 'Veuillez saisir la capacité de charge';
                            }
                            return null;
                          }
                        ),
                        SizedBox(height: 16.h),

                  // Nombre de palettes acceptées
                        InputLabel(title: 'Nombre de palettes acceptées'),
                        SizedBox(height: 12.h),
                        TextFormField(
                          controller: _nombreTEController,
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: '1',
                            hintStyle: style.bodyMedium?.copyWith(
                              color: AppColors.grayText4,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          validator: (value){
                            if(value!.isEmpty){
                              return 'Veuillez saisir le nombre de palettes acceptées';
                            }
                            return null;
                          }
                        ),
                        SizedBox(height: 18.h),

                        PrimaryButton(
                          width: double.infinity,
                          // padding: EdgeInsets.symmetric(vertical: 16.h,horizontal: 16.w),
                          containerColor: AppColors.blackColor,
                          title: 'Suivant',
                          onTap: () {
                           if(_formKey.currentState!.validate()){
                             log(_typeTEController.text);
                             log(_marqueTEController.text);
                             log(_plaqueTEController.text);
                             log(_anneeTEController.text);
                             log(_longueurTEController.text);
                             log(_largeurTEController.text);
                             log(_hauteurTEController.text);
                             log(_volumeTEController.text);
                             log(_capaciteTEController.text);
                             log(_nombreTEController.text);
                             context.push(RouteName.inscriptionDoc);
                           }
                          },
                        ),

                        const SizedBox(height: 20),
                      ],
                    ),
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
