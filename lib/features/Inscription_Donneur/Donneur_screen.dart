import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../core/routes/route_name.dart';
import '../creer_une_commande_fret/presentaion/widgets/input_label.dart';
import '../widgets/primery_button.dart';

class Donneur extends StatefulWidget {
  const Donneur({super.key});

  @override
  State<Donneur> createState() => _InscriptionState();
}

class _InscriptionState extends State<Donneur> {
  final _formKey = GlobalKey<FormState>();
  bool _obscurePassword = true;

  // Reusable TextFormField with single container border
  Widget customTextField(
    String hint,
    TextInputType type, {
    bool obscure = false,
    Widget? suffixIcon,
  }) {
    return Container(
      width: double.infinity, // Make container fill parent width
      height: 56.h,
      padding: const EdgeInsets.symmetric(horizontal: 12), // Inner padding
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.boxColor2, width: 1.2),
      ),
      child: TextFormField(obscureText: obscure, keyboardType: type),
    );
  }

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.white, // Full background white
      body: Form(
        key: _formKey,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              const Center(
                child: Text(
                  'Inscription',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textColor1,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              Center(
                child: Text(
                  ' Donneur d’ordre',

                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textColor2,
                  ),
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
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Hinek',
                            hintStyle: style.bodyLarge?.copyWith(
                              color: AppColors.grayText4,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 16.h),

                        InputLabel(title: 'Prénom'),
                        SizedBox(height: 12.h),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Eric',
                            hintStyle: style.bodyLarge?.copyWith(
                              color: AppColors.grayText4,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 16.h),
                        InputLabel(title: 'Date de naissance'),
                        SizedBox(height: 12.h),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: '01/01/1977',
                            hintStyle: style.bodyLarge?.copyWith(
                              color: AppColors.grayText4,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 16.h),
                        InputLabel(title: 'Raison sociale'),
                        SizedBox(height: 12.h),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: '12345678912312',
                            hintStyle: style.bodyLarge?.copyWith(
                              color: AppColors.grayText4,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 16.h),
                        InputLabel(title: 'Vos secteurs'),
                        SizedBox(height: 12.h),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Distribution',
                            hintStyle: style.bodyLarge?.copyWith(
                              color: AppColors.grayText4,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 16.h),
                        InputLabel(title: 'Numéro de téléphone'),
                        SizedBox(height: 12.h),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: '+33 7 21 19 12',
                            hintStyle: style.bodyLarge?.copyWith(
                              color: AppColors.grayText4,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 16.h),
                        InputLabel(title: 'Pays'),
                        SizedBox(height: 12.h),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'France',
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
                            hintText: '12 rue des Lilas, Sannois 95110',
                            hintStyle: style.bodyLarge?.copyWith(
                              color: AppColors.grayText4,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 16.h),
                        InputLabel(title: 'Nombre d\'utilisateurs associés'),
                        SizedBox(height: 12.h),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: '3 utilisateurs',
                            hintStyle: style.bodyLarge?.copyWith(
                              color: AppColors.grayText4,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 16.h),
                        InputLabel(title: 'E-mail'),
                        SizedBox(height: 12.h),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'abcd@gmail.com',
                            hintStyle: style.bodyLarge?.copyWith(
                              color: AppColors.grayText4,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 16.h),
                        InputLabel(title: 'Mot de passe'),
                        SizedBox(height: 12.h),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          keyboardType:
                              TextInputType.visiblePassword, // Correct placement
                          obscureText: _obscurePassword, // Correct property
                          decoration: InputDecoration(
                            hintText: '12345678',
                            hintStyle: style.bodyLarge?.copyWith(
                              color: AppColors.grayText4,
                              fontWeight: FontWeight.w400,
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscurePassword
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscurePassword = !_obscurePassword;
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 16.h),
                        PrimaryButton(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(vertical: 16.h,horizontal: 16.w),
                          containerColor: AppColors.blackColor,
                          title: ' Suivant',
                          onTap: () {
                            context.push(RouteName.inscriptionDoc_two);
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
