// ignore_for_file: unused_result

import 'dart:developer';
import 'dart:io';
import 'package:abdelrahman875_fo21aef727586/features/customer/Inscription_Donneur/viewmodel/televersez.dart';
import 'package:path/path.dart' as p;
import 'package:abdelrahman875_fo21aef727586/core/constants/icons.dart';
import 'package:abdelrahman875_fo21aef727586/core/constants/images.dart';
import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:file_picker/file_picker.dart';
import '../../../../../core/routes/route_name.dart';
import '../../../widgets/primery_button.dart';
import '../viewmodel/file_provider_inscription_doc.dart';

class InscriptionDocTwo extends ConsumerStatefulWidget {
  const InscriptionDocTwo({super.key});

  @override
  ConsumerState<InscriptionDocTwo> createState() => _InscriptionDocState();
}

class _InscriptionDocState extends ConsumerState<InscriptionDocTwo> {
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
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
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Text(
                'Sélectionner vos documents pour renforcer la sécurité et améliorer votre expérience.',
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(color: Colors.black54),
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
                        onFileUpload: () async {
                          // log("Rib");
                          File? file = await onFileUpload();
                          if (file != null) {
                            ref
                                .read(fileProviderInspectionDoc.notifier)
                                .addFile(key: 'KBIS (<9 mois)', file: file);
                            ref.read(fileAutoShowProvide.notifier).state = true;
                            autoFileShow('KBIS (<9 mois)');
                          }
                        },
                      ),
                      // SizedBox(height: 8.h),
                      // // RIB Dropdown
                      // _buildDropdownRow(
                      //   context,
                      //   title: 'RIB',
                      //   subtitle: 'Déposer votre relevé d’identité bancaire',
                      //   items: const [
                      //     'Déposer votre relevé d’identité bancaire',
                      //     'Format: PDF, JPG, PNG',
                      //   ],
                      //   onFileUpload: () async {
                      //     log("Rib");
                      //     File? file = await onFileUpload();
                      //     if (file != null) {
                      //       ref
                      //           .read(fileProviderInspectionDoc.notifier)
                      //           .addFile(key: 'RIB', file: file);
                      //       ref.read(fileAutoShowProvide.notifier).state = true;
                      //       autoFileShow('RIB');
                      //     }
                      //   },
                      // ),
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
                        onFileUpload: () async {
                          File? file = await onFileUpload();
                          if (file != null) {
                            ref
                                .read(fileProviderInspectionDoc.notifier)
                                .addFile(key: 'Carte d’identité', file: file);
                            ref.read(fileAutoShowProvide.notifier).state = true;
                            autoFileShow('Carte d’identité');
                          }
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
                        onFileUpload: () async {
                          File? file = await onFileUpload();
                          if (file != null) {
                            ref
                                .read(fileProviderInspectionDoc.notifier)
                                .addFile(key: 'Attestation Urssaf', file: file);
                            ref.read(fileAutoShowProvide.notifier).state = true;
                            autoFileShow('Attestation Urssaf');
                          }
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
                        onFileUpload: () async {
                          File? file = await onFileUpload();
                          if (file != null) {
                            ref
                                .read(fileProviderInspectionDoc.notifier)
                                .addFile(key: 'Licence Transport', file: file);
                            ref.read(fileAutoShowProvide.notifier).state = true;
                            autoFileShow('Licence Transport');
                          }
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
                        onFileUpload: () async {
                          File? file = await onFileUpload();
                          if (file != null) {
                            ref
                                .read(fileProviderInspectionDoc.notifier)
                                .addFile(key: 'Mandat SEPA signé', file: file);
                            ref.read(fileAutoShowProvide.notifier).state = true;
                            autoFileShow('Mandat SEPA signé');
                          }
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
                        onFileUpload: () async {
                          File? file = await onFileUpload();
                          if (file != null) {
                            ref
                                .read(fileProviderInspectionDoc.notifier)
                                .addFile(key: 'Attestation RC PRO', file: file);
                            ref.read(fileAutoShowProvide.notifier).state = true;
                            autoFileShow('Attestation RC PRO');
                          }
                        },
                      ),
                      SizedBox(height: 8.h),
                      _buildDropdownRow(
                        context,
                        title: 'Logo Société',
                        subtitle: 'Déposer votre logo',
                        items: const [
                          'Déposer votre logo',
                          'Format: PDF, JPG, PNG',
                        ],
                        onFileUpload: () async {
                          File? file = await onFileUpload();
                          if (file != null) {
                            ref
                                .read(fileProviderInspectionDoc.notifier)
                                .addFile(key: 'Logo Société', file: file);
                            ref.read(fileAutoShowProvide.notifier).state = true;
                            autoFileShow('Logo Société');
                          }
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
                        title: 'Suivant',
                        textStyle: style.bodyMedium?.copyWith(
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.w600,
                        ),
                        onTap: () {
                          context.push(RouteName.customerSummaryScreen);
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

  Widget _buildDropdownRow(
    BuildContext context, {
    required String title,
    required String subtitle,
    required List<String> items,
    required VoidCallback onFileUpload,
  }) {
    final style = Theme.of(context).textTheme;
    final fileState = ref.watch(fileProviderInspectionDoc);
    final fileExists = fileState.files[title]?.path != null;

    final file = fileState.files[title];
    final fileName = file != null ? p.basename(file.path) : "Aucun fichier";

    return Consumer(
      builder: (context, ref, child) {
        final isOpen = ref.watch(
          dropdownStateProvider.select(
            (state) => state.isOpenMap[title] ?? false,
          ),
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
                      fileExists ? AppImages.checkCircle : AppImages.question,
                      width: 32.h,
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
                        if (fileExists) {
                          ref.read(fileAutoShowProvide.notifier).state = true;
                          Future.delayed(Duration(seconds: 3), () {
                            ref.read(fileAutoShowProvide.notifier).state =
                                false;
                            ref
                                .read(dropdownStateProvider.notifier)
                                .toggle(title);
                          });
                        }
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
              if (fileExists && ref.watch(fileAutoShowProvide) && isOpen)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Card(
                    // decoration: BoxDecoration(),
                    // height: 29.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Image.asset(AppIcons.fileIcon,color: Color(0xff23538F),),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Text(
                            fileName,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 14.sp),
                          ),
                        ),

                        IconButton(
                          icon: Icon(
                            Icons.delete_outline_sharp,
                            color: AppColors.containerColor3,
                          ),
                          onPressed: () {
                            ref
                                .read(fileProviderInspectionDoc.notifier)
                                .removeFile(title);
                          },
                        ),
                      ],
                    ),
                  ),
                ),

              // === Subtitle only when closed ===
              if (!isOpen && subtitle.isNotEmpty && !fileExists)
                Padding(
                  padding: EdgeInsets.only(left: 52.w, top: 2.h),
                  child: Text(
                    subtitle,
                    style: style.bodyMedium?.copyWith(
                      fontSize: 14.sp,
                      color: AppColors.boxColor1,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),

              // === Expanded Dropdown (Visible when open) ===
              if (isOpen && !fileExists)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.cloud_upload,
                        size: 50,
                        color: Colors.blue,
                      ),
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
                      ...items
                          .skip(1)
                          .map(
                            (e) => Padding(
                              padding: EdgeInsets.symmetric(vertical: 3.h),
                              child: Text(
                                e,
                                style: style.bodyMedium?.copyWith(
                                  fontSize: 14.sp,
                                ),
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

  Future<File?> onFileUpload() async {
    try {
      log("Opening file picker...");

      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf', 'doc', 'docx', 'jpg', 'png'], // optional
      );

      if (result != null && result.files.single.path != null) {
        File file = File(result.files.single.path!);
        log("File selected: ${file.path}");
        return file;
      } else {
        log("File selection canceled.");
        return null;
      }
    } catch (e) {
      log("Error while picking file: $e");
    }
    return null;
  }

  Future<void> autoFileShow(String title) async {
    ref.read(fileAutoShowProvide.notifier).state = true;
    Future.delayed(Duration(seconds: 3), () {
      ref.read(fileAutoShowProvide.notifier).state = false;
      ref.read(dropdownStateProvider.notifier).toggle(title);
    });
  }
}
