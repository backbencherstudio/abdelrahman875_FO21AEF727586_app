import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/route_name.dart';
import '../../../../core/theme/src/theme_extension/color_pallete.dart';
import '../../../widgets/primery_button.dart';
import '../../riverpod/selected_index_provider.dart';
import 'input_label.dart';

class LivraisonSection extends StatelessWidget {
  const LivraisonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InputLabel(title: 'Lieu de Livraison'),
        SizedBox(height: 12.h),
        TextFormField(
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.boxColor2.withAlpha(15),
            hintText: 'Toulouse',
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
            filled: true,
            fillColor: AppColors.boxColor2.withAlpha(15),
            hintText: '12 rue des Lilas',
            hintStyle: style.bodyLarge?.copyWith(
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
            hintText: 'Toulouse',
            hintStyle: style.bodyLarge?.copyWith(
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
            hintStyle: style.bodyLarge?.copyWith(
              color: AppColors.grayText4,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(height: 16.h),

        InputLabel(title: 'Numéro de téléphone - Destinataire '),
        SizedBox(height: 12.h),
        TextFormField(
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.boxColor2.withAlpha(15),
            hintText: '+33 6 59 97 12 13',
            hintStyle: style.bodyLarge?.copyWith(
              color: AppColors.grayText4,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(height: 16.h),

        InputLabel(title: 'Date de Livraison'),
        SizedBox(height: 12.h),
        TextFormField(
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.datetime,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.boxColor2.withAlpha(15),
            hintText: '18 septembre 2025',
            hintStyle: style.bodyLarge?.copyWith(
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

        InputLabel(title: 'Horaire de Livraison'),
        SizedBox(height: 12.h),
        TextFormField(
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.boxColor2.withAlpha(15),
            hintText: '11h20',
            hintStyle: style.bodyLarge?.copyWith(
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
            hintStyle: style.bodyLarge?.copyWith(
              color: AppColors.grayText4,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(height: 16.h),

        InputLabel(title: 'Nom du Destinataire'),
        SizedBox(height: 12.h),
        TextFormField(
          textInputAction: TextInputAction.done,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.boxColor2.withAlpha(15),
            hintText: 'UPS',
            hintStyle: style.bodyLarge?.copyWith(
              color: AppColors.grayText4,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(height: 16.h),
        InputLabel(title: 'Message'),
        SizedBox(height: 12.h),
        TextFormField(
          maxLines: 2,
          textInputAction: TextInputAction.done,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.boxColor2.withAlpha(15),
            hintText: 'Merci de sonner avant d’entrer.',
            hintStyle: style.bodyLarge?.copyWith(
              color: AppColors.grayText4,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(height: 16.h),
        InputLabel(title: 'Distance total en km'),
        SizedBox(height: 12.h),
        TextFormField(
          maxLines: 2,
          textInputAction: TextInputAction.done,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.boxColor2.withAlpha(15),
            hintText: 'Km',
            hintStyle: style.bodyLarge?.copyWith(
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
                if(index <= 3){
                  final a = ref.read(selectedIndexProvider.notifier).state = index + 1;
                  debugPrint(a.toString());
                }
                context.push(RouteName.command5);
              },
            );
          }
        ),

        SizedBox(height: 60.h),
      ],
    );
  }
}
