import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../core/routes/route_name.dart';
import 'inscription_doc.dart';





class Trans_Vehicule extends StatefulWidget {
  const Trans_Vehicule({super.key});

  @override
  State<Trans_Vehicule> createState() => _InscriptionState();
}

class _InscriptionState extends State<Trans_Vehicule> {
  final _formKey = GlobalKey<FormState>();
  bool _obscurePassword = true;

  InputDecoration customInputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      filled: false,
      border: InputBorder.none,
      enabledBorder: InputBorder.none,
      focusedBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
    );
  }

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
        border: Border.all(
          color: AppColor.boxColor2,
          width: 1.2,
        ),
      ),
      child: TextFormField(
        obscureText: obscure,
        keyboardType: type,
        decoration: customInputDecoration(hint).copyWith(suffixIcon: suffixIcon),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
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
                    color: AppColor.textColor1,
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
                    color: AppColor.textColor2,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Nom
              Text(
                'Type de véhicule',
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500, color: AppColor.textColor1),
              ),
              const SizedBox(height: 12),
              customTextField('Hinek', TextInputType.text),
              const SizedBox(height: 16),

              // Prénom
              const Text('Marque / Modèle', style: TextStyle(fontSize: 16)),
              const SizedBox(height: 12),
              customTextField('Eric', TextInputType.text),
              const SizedBox(height: 16),

              // Date de naissance
              const Text(
                'Plaque d’immatriculation ',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 12),
              customTextField('ww-767-fr', TextInputType.datetime),
              const SizedBox(height: 16),

              // Année de mise en circulation
              const Text(
                'Année de mise en circulation',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 12),
              customTextField('01/01/1977', TextInputType.text),
              const SizedBox(height: 16),

              // Dimensions utiles de chargement
              const Text(
                'Dimensions utiles de chargement',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 12),
              customTextField('Longueur', TextInputType.text),

              const SizedBox(height: 12),
              customTextField('Largeur', TextInputType.text),
              const SizedBox(height: 12),
              customTextField('Hauteur', TextInputType.text),

              const SizedBox(height: 16),

              // Volume utile (en m³)
              const Text(
                'Volume utile (en m³)',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 12),
              customTextField('m³', TextInputType.text),

              const SizedBox(height: 16),

              // E-mail
              const Text('Capacité de charge', style: TextStyle(fontSize: 16)),
              const SizedBox(height: 12),
              customTextField('en kg ou tonnes', TextInputType.emailAddress),
              const SizedBox(height: 16),

              // Mot de passe with eye icon
              const Text(
                'Nombre de palettes acceptées',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 12),
              customTextField('1', TextInputType.emailAddress),

              const SizedBox(height: 101),

              // Submit Button
              Center(
                child: SizedBox(
                  width: 335,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {
                      context.push(RouteName.inscriptionDoc);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          12,
                        ), // Optional: rounded corners
                      ),
                    ),
                    child: const Text(
                      'Suivant',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16, // Optional: custom text size
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
