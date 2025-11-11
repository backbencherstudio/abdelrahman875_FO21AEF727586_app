import 'package:abdelrahman875_fo21aef727586/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/src/theme_extension/color_pallete.dart';
import '../../../../widgets/primery_button.dart';
import '../../viewmodel/selected_index_provider.dart';
import '../../../../common_widgets/input_label.dart';

class Chargement extends StatefulWidget {
  const Chargement({super.key});

  @override
  State<Chargement> createState() => _ChargementState();
}

class _ChargementState extends State<Chargement> {
  final TextEditingController _lieuTEController = TextEditingController();
  final TextEditingController _adresseTEController = TextEditingController();
  final TextEditingController _villeTEController = TextEditingController();
  final TextEditingController _codePostalTEController = TextEditingController();
  final TextEditingController _monTEController = TextEditingController();
  final TextEditingController _dateTEController = TextEditingController();
  final TextEditingController _hoursTEController = TextEditingController();
  final TextEditingController _instructionsTEController = TextEditingController();
  final TextEditingController _nomTEController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    _lieuTEController.dispose();
    _adresseTEController.dispose();
    _villeTEController.dispose();
    _codePostalTEController.dispose();
    _monTEController.dispose();
    _dateTEController.dispose();
    _hoursTEController.dispose();
    _instructionsTEController.dispose();
    _nomTEController.dispose();
    _formKey.currentState?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InputLabel(title: 'Lieu de Chargement'),
          SizedBox(height: 12.h),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.boxColor2.withAlpha(15),
              hintText: 'Lyon',
              hintStyle: style.bodyMedium?.copyWith(
                color: AppColors.grayText4,
                fontWeight: FontWeight.w400,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Veuillez entrer un lieu de chargement';
              }else {
                return null;
              }
            }
          ),
          SizedBox(height: 16.h),

          InputLabel(title: 'Adresse'),
          SizedBox(height: 12.h),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
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
              }else {
                return null;
              }
            }
          ),
          SizedBox(height: 16.h),

          InputLabel(title: 'Ville'),
          SizedBox(height: 12.h),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.boxColor2.withAlpha(15),
              hintText: 'Lyon',
              hintStyle: style.bodyMedium?.copyWith(
                color: AppColors.grayText4,
                fontWeight: FontWeight.w400,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Veuillez entrer une ville';
              }else {
                return null;
              }
            }
          ),
          SizedBox(height: 16.h),

          InputLabel(title: 'Code Postale'),
          SizedBox(height: 12.h),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
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

          InputLabel(title: 'Mon Numéro de téléphone'),
          SizedBox(height: 12.h),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
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

          InputLabel(title: 'Date de Chargement'),
          SizedBox(height: 12.h),
          TextFormField(
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
              hintText: '12 septembre 2025',
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

          InputLabel(title: 'Horaire de Chargement'),
          SizedBox(height: 12.h),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.boxColor2.withAlpha(15),
              hintText: '13h20',
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
              }else {
                return null;
              }
            }
          ),
          SizedBox(height: 16.h),

          InputLabel(title: 'Nom du personel Chargement'),
          SizedBox(height: 12.h),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
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
                  ref.read(selectedIndexProvider.notifier).state = index + 1;
                  if (_formKey.currentState!.validate()) {
                    ref.read(selectedIndexProvider.notifier).state = index + 1;
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
