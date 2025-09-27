import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../core/routes/route_name.dart';

class Inscription extends StatefulWidget {
  const Inscription({super.key});

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
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
          color: AppColors.boxColor2,
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
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 32),
                const Center(
                  child: Text(
                    'Inscription',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,
                    color: AppColors.textColor1),

                  ),
                ),
                const SizedBox(height: 4),
                 Center(
                  child: Text(
                    ' Transporteur',

                    style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold,
                      color:AppColors.textColor2,

                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Nom
                 Text('Nom', style: TextStyle(fontSize: 16,
                     color: AppColors.textColor1),
                    ),
                const SizedBox(height: 12),
                customTextField('Hinek', TextInputType.text),
                const SizedBox(height: 16),

                // Prénom
                const Text('Prénom', style: TextStyle(fontSize: 16)),
                const SizedBox(height: 12),
                customTextField('Eric', TextInputType.text),
                const SizedBox(height: 16),

                // Date de naissance
                const Text('Date de naissance', style: TextStyle(fontSize: 16)),
                const SizedBox(height: 12),
                customTextField('01/01/1977', TextInputType.datetime),
                const SizedBox(height: 16),

                // Raison sociale
                const Text('Raison sociale', style: TextStyle(fontSize: 16)),
                const SizedBox(height: 12),
                customTextField('12345678912312', TextInputType.text),
                const SizedBox(height: 16),

                // Vos secteurs
                const Text('Vos secteurs', style: TextStyle(fontSize: 16)),
                const SizedBox(height: 12),
                customTextField('Distribution', TextInputType.text),
                const SizedBox(height: 16),

                // Numéro de téléphone
                const Text('Numéro de téléphone', style: TextStyle(fontSize: 16)),
                const SizedBox(height: 12),
                customTextField('+33 7 21 19 12', TextInputType.phone),
                const SizedBox(height: 16),

                // Pays
                const Text('Pays', style: TextStyle(fontSize: 16)),
                const SizedBox(height: 12),
                customTextField('France', TextInputType.text),
                const SizedBox(height: 16),

                // Adresse
                const Text('Adresse', style: TextStyle(fontSize: 16)),
                const SizedBox(height: 12),
                customTextField(
                  '12 rue des Lilas, Sannois 95110',
                  TextInputType.streetAddress,
                ),
                const SizedBox(height: 16),

                // Nombre d'utilisateurs associés
                const Text(
                  'Nombre d\'utilisateurs associés',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 12),
                customTextField('3 utilisateurs', TextInputType.number),
                const SizedBox(height: 16),

                // E-mail
                const Text('E-mail', style: TextStyle(fontSize: 16)),
                const SizedBox(height: 12),
                customTextField('abcd@gmail.com', TextInputType.emailAddress),
                const SizedBox(height: 16),

                // Mot de passe with eye icon
                const Text('Mot de passe', style: TextStyle(fontSize: 16)),
                const SizedBox(height: 12),
                customTextField(
                  '12345678',
                  TextInputType.visiblePassword,
                  obscure: _obscurePassword,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 20),

                // Submit Button
                Center(
                  child: SizedBox(
                    width: 335,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {
                        context.push(RouteName.trans_Vehicule);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // Optional: rounded corners
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
      ),
    );
  }
}
