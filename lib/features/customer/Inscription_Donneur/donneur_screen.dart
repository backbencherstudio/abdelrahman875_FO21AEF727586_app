// ignore_for_file: file_names

import 'dart:developer';
import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:abdelrahman875_fo21aef727586/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/icons.dart';
import '../../../../core/routes/route_name.dart';
import '../../creer_une_commande_fret/presentaion/widgets/input_label.dart';
import '../../widgets/primery_button.dart';


class Donneur extends StatefulWidget {
  const Donneur({super.key});

  @override
  State<Donneur> createState() => _InscriptionState();
}

class _InscriptionState extends State<Donneur> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nomTEController = TextEditingController();
  final TextEditingController _premonTEController = TextEditingController();
  final TextEditingController _dateTEController = TextEditingController();
  final TextEditingController _raisonTEController = TextEditingController();
  final TextEditingController _vosTEController = TextEditingController();
  final TextEditingController _numeroTEController = TextEditingController();
  final TextEditingController _payTEController = TextEditingController();
  final TextEditingController _adresseTEController = TextEditingController();
  final TextEditingController _nombreTEController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _nomTEController.dispose();
    _premonTEController.dispose();
    _dateTEController.dispose();
    _raisonTEController.dispose();
    _vosTEController.dispose();
    _numeroTEController.dispose();
    _payTEController.dispose();
    _adresseTEController.dispose();
    _nombreTEController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // const SizedBox(height: 20),
                Text(
                  'Inscription',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textColor1,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  ' Donneur d’ordre',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textColor2,
                  ),
                ),
                const SizedBox(height: 20),

                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal:16.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InputLabel(title: 'Nom'),
                          SizedBox(height: 12.h),
                          TextFormField(
                            controller: _nomTEController,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'Hinek',
                              hintStyle: style.bodyLarge?.copyWith(
                                color: AppColors.grayText4,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            validator: (value){
                              if(value!.isEmpty){
                                return 'Veuillez entrer votre nom';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 16.h),

                          InputLabel(title: 'Prénom'),
                          SizedBox(height: 12.h),
                          TextFormField(
                            controller: _premonTEController,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'Eric',
                              hintStyle: style.bodyLarge?.copyWith(
                                color: AppColors.grayText4,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            validator: (value){
                              if(value!.isEmpty){
                                return 'Veuillez entrer votre prénom';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 16.h),
                          InputLabel(title: 'Date de naissance'),
                          SizedBox(height: 12.h),
                          TextFormField(
                            controller: _dateTEController,
                            readOnly: true,
                            onTap: () async{
                              await Utils.selectDate(context, _dateTEController);
                            },
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: '01/01/1977',
                              hintStyle: style.bodyLarge?.copyWith(
                                color: AppColors.grayText4,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            validator: (value){
                              if(value!.isEmpty){
                                return 'Veuillez entrer votre date de naissance';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 16.h),
                          InputLabel(title: 'Raison sociale'),
                          SizedBox(height: 12.h),
                          TextFormField(
                            controller: _raisonTEController,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: '12345678912312',
                              hintStyle: style.bodyLarge?.copyWith(
                                color: AppColors.grayText4,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            validator: (value){
                              if(value!.isEmpty){
                                return 'Veuillez entrer votre raison sociale';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 16.h),
                          InputLabel(title: 'Vos secteurs'),
                          SizedBox(height: 12.h),
                          TextFormField(
                            controller: _vosTEController,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'Distribution',
                              hintStyle: style.bodyLarge?.copyWith(
                                color: AppColors.grayText4,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            validator: (value){
                              if(value!.isEmpty){
                                return 'Veuillez entrer vos secteurs';
                              }
                              return null;
                            }
                          ),
                          SizedBox(height: 16.h),
                          InputLabel(title: 'Numéro de téléphone'),
                          SizedBox(height: 12.h),
                          TextFormField(
                            controller: _numeroTEController,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              hintText: '+33 7 21 19 12',
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(AppIcons.francePng,height: 14.h,width: 14.w),
                              ),
                              hintStyle: style.bodyLarge?.copyWith(
                                color: AppColors.grayText4,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            validator: (value){
                              if(value!.isEmpty){
                                return 'Veuillez entrer votre numéro de téléphone';
                              }
                              return null;
                            }
                          ),
                          SizedBox(height: 16.h),
                          InputLabel(title: 'Pays'),
                          SizedBox(height: 12.h),
                          TextFormField(
                            controller: _payTEController,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'France',
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(AppIcons.francePng,height: 14.h,width: 14.w),
                              ),
                              hintStyle: style.bodyLarge?.copyWith(
                                color: AppColors.grayText4,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            validator: (value){
                              if(value!.isEmpty){
                                return 'Veuillez entrer votre pays';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 16.h),
                          InputLabel(title: 'Adresse'),
                          SizedBox(height: 12.h),
                          TextFormField(
                            controller: _adresseTEController,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: '12 rue des Lilas, Sannois 95110',
                              hintStyle: style.bodyLarge?.copyWith(
                                color: AppColors.grayText4,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            validator: (value){
                              if(value!.isEmpty){
                                return 'Veuillez entrer votre adresse';
                              }
                              return null;
                            }
                          ),
                          SizedBox(height: 16.h),
                          InputLabel(title: 'Nombre d\'utilisateurs associés'),
                          SizedBox(height: 12.h),
                          TextFormField(
                            controller: _nombreTEController,
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: '3 utilisateurs',
                              hintStyle: style.bodyLarge?.copyWith(
                                color: AppColors.grayText4,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            validator: (value){
                              if(value!.isEmpty){
                                return 'Veuillez entrer le nombre d\'utilisateurs associés';
                              }
                              return null;
                            }
                          ),
                          SizedBox(height: 16.h),
                          PrimaryButton(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(vertical: 16.h,horizontal: 16.w),
                            containerColor: AppColors.blackColor,
                            title: 'Suivant',
                            onTap: () {
                              log(_nomTEController.text);
                              log(_premonTEController.text);
                              log(_dateTEController.text);
                              log(_raisonTEController.text);
                              log(_vosTEController.text);
                              log(_numeroTEController.text);
                              log(_payTEController.text);
                              log(_adresseTEController.text);
                              log(_nombreTEController.text);
                               context.push(RouteName.inscriptionDocTwo);
                              if(_formKey.currentState!.validate()){
                                context.push(RouteName.inscriptionDocTwo);
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
      ),
    );
  }
}
