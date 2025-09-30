import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../core/routes/route_name.dart';
import '../creer_une_commande_fret/presentaion/widgets/input_label.dart';
import '../widgets/primery_button.dart';
import 'inscription_doc.dart';





class Trans_Vehicule extends StatefulWidget {
  const Trans_Vehicule({super.key});

  @override
  State<Trans_Vehicule> createState() => _InscriptionState();
}

class _InscriptionState extends State<Trans_Vehicule> {
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

      child: TextFormField(obscureText: obscure, keyboardType: type),
    );
  }
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.white, // Full background white
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32),
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
                  ' Transporteur - Vehicule',

                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textColor2,
                  ),
                ),
              ),
              const SizedBox(height: 20),
// Type de véhicule
              InputLabel(title: 'Type de véhicule'),
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

// Marque / Modèle
              InputLabel(title: 'Marque / Modèle'),
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

// Plaque d’immatriculation
              InputLabel(title: 'Plaque d’immatriculation'),
              SizedBox(height: 12.h),
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'ww-767-fr',
                  hintStyle: style.bodyLarge?.copyWith(
                    color: AppColors.grayText4,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 16.h),

// Année de mise en circulation
              InputLabel(title: 'Année de mise en circulation'),
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

// Dimensions utiles de chargement
              InputLabel(title: 'Dimensions utiles de chargement (Longueur)'),
              SizedBox(height: 12.h),
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Longueur',
                  hintStyle: style.bodyLarge?.copyWith(
                    color: AppColors.grayText4,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 12.h),
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Largeur',
                  hintStyle: style.bodyLarge?.copyWith(
                    color: AppColors.grayText4,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 12.h),
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Hauteur',
                  hintStyle: style.bodyLarge?.copyWith(
                    color: AppColors.grayText4,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 16.h),

// Volume utile (en m³)
              InputLabel(title: 'Volume utile (en m³)'),
              SizedBox(height: 12.h),
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'm³',
                  hintStyle: style.bodyLarge?.copyWith(
                    color: AppColors.grayText4,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 16.h),

// Capacité de charge
              InputLabel(title: 'Capacité de charge'),
              SizedBox(height: 12.h),
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'en kg ou tonnes',
                  hintStyle: style.bodyLarge?.copyWith(
                    color: AppColors.grayText4,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 16.h),

// Nombre de palettes acceptées
              InputLabel(title: 'Nombre de palettes acceptées'),
              SizedBox(height: 12.h),
              TextFormField(
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: '1',
                  hintStyle: style.bodyLarge?.copyWith(
                    color: AppColors.grayText4,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 101.h),

              const SizedBox(height: 101),

              PrimaryButton(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 12.h),
                containerColor: AppColors.blackColor,
                title: 'Suivant',
                onTap: () {
                  context.push(RouteName.inscriptionDoc);
                },
              ),


              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
