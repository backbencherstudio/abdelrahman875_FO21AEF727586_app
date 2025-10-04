import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:abdelrahman875_fo21aef727586/features/Inscription_Donneur/riverpod/televersez.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../core/routes/route_name.dart';
import '../widgets/primery_button.dart';

class InscriptionDoc_two extends StatefulWidget {
  const InscriptionDoc_two({super.key});

  @override
  State<InscriptionDoc_two> createState() => _InscriptionDocState();
}

class _InscriptionDocState extends State<InscriptionDoc_two> {
  @override
  Widget build(BuildContext context) {
    final style = Theme
        .of(context)
        .textTheme;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.grayText.withAlpha(70),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {
                        context.pop();
                      },
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Téléversez les\ndocuments',
                      textAlign: TextAlign.center,
                      style: Theme
                          .of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                      ),
                      semanticsLabel: 'Téléversez les documents',
                    ),
                  ),
                  SizedBox(width: 38.w),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Text(
                'Sélectionner vos documents pour renforcer la sécurité et améliorer votre expérience.',
                style: Theme
                    .of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(
                  color: Colors.black54,
                ),
              ),
            ),
            SizedBox(height: 16.h),
            Expanded(
              child: Builder(
                builder: (context) {
                  return ListView(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    children: [
                      // KBIS Dropdown
                      _buildDropdownRow(
                        context,
                        title: 'KBIS (<9 mois)',
                        subtitle: 'Sélectionner un fichier.',
                        items: const [
                          'Sélectionner un fichier',
                          'Format: PDF, JPG, PNG',
                        ],
                        onFileUpload: () {
                          print('Uploading KBIS file');
                        },
                      ),
                      SizedBox(height: 8.h),
                      // RIB Dropdown
                      _buildDropdownRow(
                        context,
                        title: 'RIB',
                        subtitle: 'Déposer votre relevé d’identité bancaire',
                        items: const [
                          'Déposer votre relevé d’identité bancaire',
                          'Format: PDF, JPG, PNG',
                        ],
                        onFileUpload: () {
                          print('Uploading RIB file');
                        },
                      ),
                      SizedBox(height: 8.h),
                      // Carte d’identité Dropdown
                      _buildDropdownRow(
                        context,
                        title: 'Carte d’identité',
                        subtitle: 'Déposer votre carte d’identité',
                        items: const [
                          'Déposer votre carte d’identité',
                          'Format: PDF, JPG, PNG',
                        ],
                        onFileUpload: () {
                          print('Uploading ID card');
                        },
                      ),
                      SizedBox(height: 8.h),
                      // Attestation Urssaf Dropdown
                      _buildDropdownRow(
                        context,
                        title: 'Attestation Urssaf',
                        subtitle: 'Déposer votre attestation.',
                        items: const [
                          'Déposer votre attestation',
                          'Format: PDF, JPG, PNG',
                        ],
                        onFileUpload: () {
                          print('Uploading Urssaf attestation');
                        },
                      ),
                      SizedBox(height: 8.h),
                      // Licence Transport Dropdown
                      _buildDropdownRow(
                        context,
                        title: 'Licence Transport',
                        subtitle: 'Déposer votre licence.',
                        items: const [
                          'Déposer votre licence',
                          'Format: PDF, JPG, PNG',
                        ],
                        onFileUpload: () {
                          print('Uploading transport license');
                        },
                      ),
                      SizedBox(height: 8.h),
                      // Mandat SEPA signé Dropdown
                      _buildDropdownRow(
                        context,
                        title: 'Mandat SEPA signé',
                        subtitle: 'Déposer votre mandat SEPA.',
                        items: const [
                          'Déposer votre mandat SEPA',
                          'Format: PDF, JPG, PNG',
                        ],
                        onFileUpload: () {
                          print('Uploading SEPA mandate');
                        },
                      ),
                      SizedBox(height: 8.h),
                      _buildDropdownRow(
                        context,
                        title: 'Attestation RC PRO',
                        subtitle: 'Déposer votre Attestation RC Pro',
                        items: const [
                          'Déposer votre Attestation RC Pro',
                          'Format: PDF, JPG, PNG',
                        ],
                        onFileUpload: () {
                          print('Uploading SEPA mandate');
                        },
                      ),
                      SizedBox(height: 8.h),
                      _buildDropdownRow(
                        context,
                        title: 'Logo Société ',
                        subtitle: 'Déposer votre logo',
                        items: const [
                          'Déposer votre logo',
                          'Format: PDF, JPG, PNG',
                        ],
                        onFileUpload: () {
                          print('Uploading SEPA mandate');
                        },
                      ),
                      SizedBox(height: 8.h),
                      // Submit Button
                      PrimaryButton(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          vertical: 16.h,
                          horizontal: 16.h,
                        ),
                        containerColor: AppColors.blackColor,
                        title: 'Créer mon compte',
                        textStyle: style.bodyMedium?.copyWith(
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.w600,
                        ),
                        onTap: () {
                          context.push(RouteName.command);
                        },
                      ),

                      const SizedBox(height: 20),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDropdownRow(BuildContext context, {
    required String title,
    required String subtitle,
    required List<String> items,
    required VoidCallback onFileUpload,
  }) {
    final style = Theme
        .of(context)
        .textTheme;
    return Consumer(
      builder: (context, ref, child) {
        // Watch dropdown state
        final isOpen = ref.watch(
          dropdownStateProvider.select((state) =>
          state.isOpenMap[title] ?? false),
        );

        return Padding(
          padding: EdgeInsets.symmetric(vertical: 6.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // === HEADER ROW (Always visible) ===
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/Help.png',
                      width: 32.w,
                      height: 32.h,
                      errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.help_outline, size: 32),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: Text(
                        title,
                        style: style.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        ref.read(dropdownStateProvider.notifier).toggle(title);
                      },
                      child: Icon(
                        isOpen
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down,
                        size: 28,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),

              // === Subtitle only when closed ===
              if (!isOpen && subtitle.isNotEmpty)
                Padding(
                  padding: EdgeInsets.only(left: 52.w, top: 2.h),
                  child: Text(
                    subtitle,
                    style: style.bodyMedium?.copyWith(
                      fontSize: 14.sp,
                      color: AppColors.box_Color,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),

              // === Expanded Dropdown (Visible when open) ===
              if (isOpen)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.cloud_upload,
                          size: 50, color: Colors.blue),
                      SizedBox(height: 6.h),

                      // Subtitle moved inside dropdown as Title
                      Text(
                        subtitle,
                        style: style.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 15.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 6.h),

                      // Other texts
                      ...items.skip(1).map(
                            (e) =>
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 3.h),
                              child: Text(
                                e,
                                style:
                                style.bodyMedium?.copyWith(fontSize: 14.sp),
                                textAlign: TextAlign.start,
                              ),
                            ),
                      ),
                      SizedBox(height: 14.h),

                      // Button
                      Center(
                        child: PrimaryButton(
                          title: 'Ajouter',
                          width: 180.w,
                          padding: EdgeInsets.symmetric(
                            vertical: 12.h,
                            horizontal: 16.w,
                          ),
                          containerColor: AppColors.blackColor,
                          textStyle: style.bodyMedium?.copyWith(
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.w600,
                          ),
                          onTap: onFileUpload,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}