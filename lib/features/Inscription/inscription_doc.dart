import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../core/routes/route_name.dart';
import '../widgets/primery_button.dart';

class InscriptionDoc extends StatefulWidget {
  const InscriptionDoc({super.key});

  @override
  State<InscriptionDoc> createState() => _InscriptionDocState();
}

class _InscriptionDocState extends State<InscriptionDoc> {
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Scaffold(
      body: Builder(
        builder: (context) {
          return ListView(
            padding: EdgeInsets.all(16.w),
            children: [
              SizedBox(height: 30.h),
              Text(
                'Téléversez les \n documents',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp,
                ),
                semanticsLabel: 'Téléversez les documents',
              ),
              SizedBox(height: 16.h),
              Text(
                'Sélectionnez vos documents pour renforcer la sécurité et améliorer votre expérience.',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.black54,
                  fontSize: 18.sp,
                ),
                semanticsLabel:
                    'Sélectionnez vos documents pour une expérience sécurisée.',
              ),
              SizedBox(height: 30.h),
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
              SizedBox(height: 16.h),
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
              SizedBox(height: 30.h),
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
              SizedBox(height: 30.h),
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
              SizedBox(height: 30.h),
              // Licence Transport Dropdown
              _buildDropdownRow(
                context,
                title: 'Licence Transport',
                subtitle: 'Déposer votre licence.',
                items: const ['Déposer votre licence', 'Format: PDF, JPG, PNG'],
                onFileUpload: () {
                  print('Uploading transport license');
                },
              ),
              SizedBox(height: 30.h),
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
              SizedBox(height: 30.h),
              // Submit Button

              PrimaryButton(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 16.h,horizontal: 16.h),
                containerColor: AppColors.blackColor,
                title: 'Créer mon compte',
                textStyle: style.bodyMedium?.copyWith(
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w600
                ),
                onTap: () {
                  context.push(RouteName.command);
                },
              ),
            ],
          );
        },
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
          padding: EdgeInsets.symmetric(vertical: 6.h), // Reduced extra spacing
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Row
              InkWell(
                onTap: () {
                  setState(() {
                    isOpen = !isOpen;
                  });
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 10.h,
                  ), // Reduced padding
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Row for Icon, Title, and Dropdown Icon
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Left Icon
                          Image.asset(
                            'assets/images/Help.png',
                            width: 32.w,
                            height: 32.h,
                            errorBuilder: (context, error, stackTrace) =>
                                const Icon(Icons.help_outline, size: 32),
                          ),
                          SizedBox(width: 10.w),
                          // Title
                          Expanded(
                            child: Text(
                              title,
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.sp, // Changed to 16
                                  ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          // Right dropdown arrow
                          Icon(
                            isOpen
                                ? Icons.keyboard_arrow_up
                                : Icons.keyboard_arrow_down,
                            size: 28,
                            color: Colors.black87,
                          ),
                        ],
                      ),
                      // Subtitle (always visible)
                      if (subtitle.isNotEmpty)
                        Padding(
                          padding: EdgeInsets.only(left: 42.w, top: 3.h),
                          // Adjusted spacing
                          child: Text(
                            subtitle,
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(
                                  fontSize: 16.sp,
                                  color: AppColors.box_Color,
                                ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              // Expanded Content
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
                      // Upload Icon
                      const Icon(
                        Icons.cloud_upload,
                        size: 50,
                        color: Colors.blue,
                      ),
                      SizedBox(height: 6.h),
                      // Items Text
                      ...items.map(
                        (e) => Padding(
                          padding: EdgeInsets.symmetric(vertical: 3.h),
                          child: Text(
                            e,
                            style: Theme.of(
                              context,
                            ).textTheme.bodyMedium?.copyWith(fontSize: 16.sp),
                            // Changed to 16
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                      SizedBox(height: 14.h),
                      // Add Button
                      PrimaryButton(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(vertical: 16.h,horizontal: 16.w),
                        containerColor: AppColors.blackColor,
                        textStyle: style.bodyMedium?.copyWith(
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.w600
                        ),
                        title: 'Créer mon compte',
                        onTap: () {
                          context.push(RouteName.trans_Vehicule);
                        },
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
