import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/src/theme_extension/color_pallete.dart';
import '../../../widgets/primery_button.dart';
import '../../riverpod/selected_index_provider.dart';
import 'input_label.dart';

class Chargement extends StatelessWidget {
  const Chargement({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InputLabel(title: 'Lieu de Chargement'),
        SizedBox(height: 12.h),
        TextFormField(
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
        ),
        SizedBox(height: 16.h),

        InputLabel(title: 'Adresse'),
        SizedBox(height: 12.h),
        TextFormField(
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
        ),
        SizedBox(height: 16.h),

        InputLabel(title: 'Ville'),
        SizedBox(height: 12.h),
        TextFormField(
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
        ),
        SizedBox(height: 16.h),

        InputLabel(title: 'Code Postale'),
        SizedBox(height: 12.h),
        TextFormField(
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
        ),
        SizedBox(height: 16.h),

        InputLabel(title: 'Mon Numéro de téléphone'),
        SizedBox(height: 12.h),
        TextFormField(
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
        ),
        SizedBox(height: 16.h),

        InputLabel(title: 'Date de Chargement'),
        SizedBox(height: 12.h),
        TextFormField(
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.datetime,
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
        ),
        SizedBox(height: 16.h),

        InputLabel(title: 'Horaire de Chargement'),
        SizedBox(height: 12.h),
        TextFormField(
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
        ),
        SizedBox(height: 16.h),

        InputLabel(title: 'Instructions'),
        SizedBox(height: 12.h),
        TextFormField(
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
        ),
        SizedBox(height: 16.h),

        InputLabel(title: 'Nom du personel Chargement'),
        SizedBox(height: 12.h),
        TextFormField(
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
              },
            );
          }
        ),

        SizedBox(height: 60.h),
      ],
    );
  }
}
