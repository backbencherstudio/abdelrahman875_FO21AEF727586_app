import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/route_name.dart';
import '../../../../core/theme/src/theme_extension/color_pallete.dart';
import '../../../../core/utils/utils.dart';
import '../../../widgets/primery_button.dart';
import '../../riverpod/selected_index_provider.dart';
import 'input_label.dart';

class LivraisonSection extends StatefulWidget {
  const LivraisonSection({super.key});

  @override
  State<LivraisonSection> createState() => _LivraisonSectionState();
}

class _LivraisonSectionState extends State<LivraisonSection> {

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _lieuTEController = TextEditingController();
  final TextEditingController _adresseTEController = TextEditingController();
  final TextEditingController _villeTEController = TextEditingController();
  final TextEditingController _codePostalTEController = TextEditingController();
  final TextEditingController _numeroTEController = TextEditingController();
  final TextEditingController _dateTEController = TextEditingController();
  final TextEditingController _horaireTEController = TextEditingController();
  final TextEditingController _instructionsTEController = TextEditingController();
  final TextEditingController _nomTEController = TextEditingController();
  final TextEditingController _messageTEController = TextEditingController();
  final TextEditingController _distanceTEController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InputLabel(title: 'Lieu de Livraison'),
          SizedBox(height: 12.h),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: _lieuTEController,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.boxColor2.withAlpha(15),
              hintText: 'Toulouse',
              hintStyle: style.bodyMedium?.copyWith(
                color: AppColors.grayText4,
                fontWeight: FontWeight.w400,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Veuillez entrer un lieu de livraison';
              }
              return null;
            }
          ),
          SizedBox(height: 16.h),

          InputLabel(title: 'Adresse'),
          SizedBox(height: 12.h),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: _adresseTEController,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.boxColor2.withAlpha(15),
              hintText: '12 rue des Lilas',
              hintStyle: style.bodyMedium?.copyWith(
                color: AppColors.grayText4,
                fontWeight: FontWeight.w400,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Veuillez entrer une adresse';
              }
              return null;
            }
          ),
          SizedBox(height: 16.h),

          InputLabel(title: 'Ville'),
          SizedBox(height: 12.h),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: _villeTEController,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.boxColor2.withAlpha(15),
              hintText: 'Toulouse',
              hintStyle: style.bodyMedium?.copyWith(
                color: AppColors.grayText4,
                fontWeight: FontWeight.w400,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Veuillez entrer une ville';
              }
              return null;
              }
          ),
          SizedBox(height: 16.h),

          InputLabel(title: 'Code Postale'),
          SizedBox(height: 12.h),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: _codePostalTEController,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.boxColor2.withAlpha(15),
              hintText: '69000',
              hintStyle: style.bodyMedium?.copyWith(
                color: AppColors.grayText4,
                fontWeight: FontWeight.w400,
              ),
            ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Veuillez entrer un code postal';
                }else  if(double.tryParse(value) == null){
                  return 'Veuillez entrer un code postal valide';
                }
                return null;
              }
          ),
          SizedBox(height: 16.h),

          InputLabel(title: 'Numéro de téléphone - Destinataire '),
          SizedBox(height: 12.h),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: _numeroTEController,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.boxColor2.withAlpha(15),
              hintText: '+33 6 59 97 12 13',
              hintStyle: style.bodyMedium?.copyWith(
                color: AppColors.grayText4,
                fontWeight: FontWeight.w400,
              ),
            ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Veuillez entrer un numéro de téléphone';
                }else if(double.tryParse(value) == null){
                  return 'Veuillez entrer un numéro de téléphone valide';
                } else {
                  return null;
                }
              }
          ),
          SizedBox(height: 16.h),

          InputLabel(title: 'Date de Livraison'),
          SizedBox(height: 12.h),
          TextFormField(
            controller: _dateTEController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            textInputAction: TextInputAction.next,
            // keyboardType: TextInputType.datetime,
            readOnly: true,
            onTap: (){
              Utils.selectDate(context, _dateTEController);
            },
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.boxColor2.withAlpha(15),
              hintText: '18 septembre 2025',
              hintStyle: style.bodyMedium?.copyWith(
                color: AppColors.grayText4,
                fontWeight: FontWeight.w400,
              ),
              suffixIcon: Icon(
                Icons.calendar_month,
                color: AppColors.grayText4,
                size: 24.r,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Veuillez entrer une date de chargement';
              }else {
                return null;
              }
            }
          ),
          SizedBox(height: 16.h),

          InputLabel(title: 'Horaire de Livraison'),
          SizedBox(height: 12.h),
          TextFormField(
            controller: _horaireTEController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.boxColor2.withAlpha(15),
              hintText: '11h20',
              hintStyle: style.bodyMedium?.copyWith(
                color: AppColors.grayText4,
                fontWeight: FontWeight.w400,
              ),
              suffixIcon: Icon(
                Icons.access_time,
                color: AppColors.grayText4,
                size: 24.r,
              ),
            ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Veuillez entrer un horaire de chargement';
                }else {
                  return null;
                }
              }
          ),
          SizedBox(height: 16.h),

          InputLabel(title: 'Instructions'),
          SizedBox(height: 12.h),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: _instructionsTEController,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.boxColor2.withAlpha(15),
              hintText: 'Ne pas jeter le colis.',
              hintStyle: style.bodyMedium?.copyWith(
                color: AppColors.grayText4,
                fontWeight: FontWeight.w400,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Veuillez entrer des instructions';
              }
              return null;
            }
          ),
          SizedBox(height: 16.h),

          InputLabel(title: 'Nom du Destinataire'),
          SizedBox(height: 12.h),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: _nomTEController,
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.boxColor2.withAlpha(15),
              hintText: 'UPS',
              hintStyle: style.bodyMedium?.copyWith(
                color: AppColors.grayText4,
                fontWeight: FontWeight.w400,
              ),
            ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Veuillez entrer un nom de personel de chargement';
                }else {
                  return null;
                }
              }
          ),
          SizedBox(height: 16.h),
          InputLabel(title: 'Message'),
          SizedBox(height: 12.h),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: _messageTEController,
            maxLines: 2,
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.boxColor2.withAlpha(15),
              hintText: 'Merci de sonner avant d’entrer.',
              hintStyle: style.bodyMedium?.copyWith(
                color: AppColors.grayText4,
                fontWeight: FontWeight.w400,
              ),
            ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Veuillez entrer un message';
                }else {
                  return null;
                }
              }
          ),
          SizedBox(height: 16.h),
          InputLabel(title: 'Distance total en km'),
          SizedBox(height: 12.h),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: _distanceTEController,
            maxLines: 2,
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.boxColor2.withAlpha(15),
              hintText: 'Km',
              hintStyle: style.bodyMedium?.copyWith(
                color: AppColors.grayText4,
                fontWeight: FontWeight.w400,
              ),
            ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Veuillez entrer une distance';
                }else {
                  return null;
                }
              }
          ),
          SizedBox(height: 40.h),
          Consumer(
            builder: (context,ref,_) {
              final index = ref.watch(selectedIndexProvider);
              return PrimaryButton(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 12.h),
                containerColor: AppColors.blackColor,
                title: 'Suivant',
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    if(index <= 3){
                      final a = ref.read(selectedIndexProvider.notifier).state = index + 1;
                      debugPrint(a.toString());
                    }
                    context.push(RouteName.command5);
                  }
                },
              );
            }
          ),

          SizedBox(height: 60.h),
        ],
      ),
    );
  }
}
