import 'dart:developer';

import 'package:abdelrahman875_fo21aef727586/core/constants/icons.dart';
import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routes/route_name.dart';
import '../../../core/utils/utils.dart';

import '../../common_widgets/input_label.dart';
import '../../widgets/primery_button.dart';

class InscriptionTransporteur extends StatefulWidget {
  const InscriptionTransporteur({super.key});

  @override
  State<InscriptionTransporteur> createState() =>
      _InscriptionTransporteurState();
}

class _InscriptionTransporteurState extends State<InscriptionTransporteur> {
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
    _formKey.currentState?.dispose();
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
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
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
                        color: AppColors.textColor2,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 20.h),
                  ],
                ),
              ),

              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Form(
                      key: _formKey,
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
                            validator: (value) {
                              if (value!.isEmpty) {
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
                            validator: (value) {
                              if (value!.isEmpty) {
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
                            onTap: () async {
                              await Utils.selectDate(
                                context,
                                _dateTEController,
                              );
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
                            validator: (value) {
                              if (value!.isEmpty) {
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
                            validator: (value) {
                              if (value!.isEmpty) {
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
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Veuillez entrer vos secteurs';
                              }
                              return null;
                            },
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
                                padding: EdgeInsets.all(8.h),
                                child: Image.asset(
                                  AppIcons.francePng,
                                  height: Utils.isTablet(context)? 18.h : 14.h,
                                  width: Utils.isTablet(context)? 18.w :14.w,
                                ),
                              ),
                              hintStyle: style.bodyLarge?.copyWith(
                                color: AppColors.grayText4,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Veuillez entrer votre numéro de téléphone';
                              }
                              return null;
                            },
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
                                padding: EdgeInsets.all(8.h),
                                child: Image.asset(
                                  AppIcons.francePng,
                                  height: Utils.isTablet(context)? 18.h : 14.h,
                                  width: Utils.isTablet(context)? 18.h : 14.h,
                                ),
                              ),
                              hintStyle: style.bodyLarge?.copyWith(
                                color: AppColors.grayText4,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
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
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Veuillez entrer votre adresse';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 16.h),
                          InputLabel(title: 'Nombre d\'utilisateurs associés'),
                          SizedBox(height: 12.h),
                          TextFormField(
                            controller: _nombreTEController,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: '3 utilisateurs',
                              hintStyle: style.bodyLarge?.copyWith(
                                color: AppColors.grayText4,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Veuillez entrer le nombre d\'utilisateurs associés';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 16.h),
                          PrimaryButton(
                            width: double.infinity,
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
                               context.push(RouteName.transVehicule);
                              if (_formKey.currentState!.validate()) {
                                context.push(RouteName.transVehicule);
                              }
                            },
                          ),

                          const SizedBox(height: 20),
                        ],
                      ),
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
