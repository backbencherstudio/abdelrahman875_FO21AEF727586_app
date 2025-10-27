import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../core/constants/icons.dart';
import '../../core/routes/route_name.dart';
import '../widgets/primery_button.dart';

class InscriptionDoc extends ConsumerStatefulWidget {
  const InscriptionDoc({super.key});

  @override
  ConsumerState<InscriptionDoc> createState() => _InscriptionDocState();
}

class _InscriptionDocState extends ConsumerState<InscriptionDoc> {
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      context.pop();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.grayText.withAlpha(70),
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.r),
                        child: Image.asset(
                          AppIcons.whiteArrowBackPng,
                          width: 24.w,
                          height: 24,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Téléversez les\ndocuments',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineSmall
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

              SizedBox(height: 16.h),
              Text(
                'Sélectionner vos documents pour renforcer la sécurité et améliorer votre expérience.',
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(color: Colors.black54),
              ),
              SizedBox(height: 30.h),

              Expanded(
                child: Builder(
                  builder: (context) {
                    return ListView(
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
                           // print('Uploading KBIS file');
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
                           // print('Uploading RIB file');
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
                            //print('Uploading ID card');
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
                            //print('Uploading Urssaf attestation');
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
                           // print('Uploading transport license');
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
                            //print('Uploading SEPA mandate');
                          },
                        ),
                        SizedBox(height: 8.h),

                        // Submit Button
                        PrimaryButton(
                          width: double.infinity,
                          // padding: EdgeInsets.symmetric(vertical: 16.h,horizontal: 16.h),
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
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDropdownRow(
    BuildContext context, {
    required String title,
    required String subtitle,
    required List<String> items,
    required VoidCallback onFileUpload,
  }) {
    bool isOpen = false;
    return StatefulBuilder(
      builder: (context, setState) {
        final style = Theme.of(context).textTheme;
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 6.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ===== HEADER ROW =====
              InkWell(
                onTap: () {
                  setState(() {
                    isOpen = !isOpen;
                  });
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title Row
                      Row(
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
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.sp,
                                  ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Icon(
                            isOpen
                                ? Icons.keyboard_arrow_up
                                : Icons.keyboard_arrow_down,
                            size: 28,
                            color: Colors.black87,
                          ),
                        ],
                      ),

                      // Subtitle only when closed
                      if (!isOpen && subtitle.isNotEmpty)
                        Padding(
                          padding: EdgeInsets.only(left: 42.w, top: 3.h),
                          child: Text(
                            subtitle,
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(
                                  fontSize: 16.sp,
                                  color: AppColors.boxColor1,
                                ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),

              // ===== EXPANDED CONTENT =====
              if (isOpen)
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.w,
                    right: 10.w,
                    bottom: 10.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.cloud_upload,
                        size: 50,
                        color: Colors.blue,
                      ),
                      SizedBox(height: 6.h),

                      // Subtitle inside dropdown as title
                      Text(
                        subtitle,
                        style: style.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 15.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 6.h),

                      // Other items
                      ...items
                          .skip(1)
                          .map(
                            (e) => Padding(
                              padding: EdgeInsets.symmetric(vertical: 3.h),
                              child: Text(
                                e,
                                style: style.bodyMedium?.copyWith(
                                  fontSize: 16.sp,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ),

                      SizedBox(height: 14.h),

                      // Upload Button
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
