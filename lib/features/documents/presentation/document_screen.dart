import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:abdelrahman875_fo21aef727586/features/documents/presentation/widgets/custom_document_card.dart';
import 'package:abdelrahman875_fo21aef727586/features/widgets/primery_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../riverpod/document_toggle_provider.dart';

class DocumentScreen extends ConsumerWidget {
  const DocumentScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final style = Theme.of(context).textTheme;
    final selectedIndex = ref.watch(documentToggleProvider);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(height: 20.h),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_rounded,
                    color: AppColors.blackText,
                    size: 24.h,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  'Documents',
                  style: style.headlineSmall?.copyWith(
                    color: AppColors.blackText,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 10.h),

                Row(
                  children: [
                    // --- Mes factures button ---
                    Expanded(
                      child: PrimaryButton(
                        title: 'Mes factures',
                        padding: EdgeInsets.symmetric(vertical: 4.h),
                        containerColor: selectedIndex == 0
                            ? AppColors.blackColor
                            : AppColors.whiteColor,
                        border: Border.all(color: AppColors.primaryColor),
                        textStyle: style.bodyMedium?.copyWith(
                          color: selectedIndex == 0
                              ? AppColors.whiteColor
                              : AppColors.blackText,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w700,
                        ),
                        width: double.infinity,
                        onTap: () {
                          ref.read(documentToggleProvider.notifier).state = 0;
                        },
                      ),
                    ),
                    SizedBox(width: 10.w),

                    // --- Mes documents button ---
                    Expanded(
                      child: PrimaryButton(
                        title: 'Mes documents',
                        padding: EdgeInsets.symmetric(vertical: 4.h),
                        containerColor: selectedIndex == 1
                            ? AppColors.blackColor
                            : AppColors.whiteColor,
                        border: Border.all(color: AppColors.primaryColor),
                        textStyle: style.bodyMedium?.copyWith(
                          color: selectedIndex == 1
                              ? AppColors.whiteColor
                              : AppColors.blackText,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w700,
                        ),
                        width: double.infinity,
                        onTap: () {
                          ref.read(documentToggleProvider.notifier).state = 1;
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                if (selectedIndex == 0)
                  ...List.generate(
                    10,
                    (index) => Padding(
                      padding: EdgeInsets.only(bottom: 8.h),
                      child: CustomDocumentCard(
                        invoiceNumber: 'Facture N*F-20250500287',
                        orderNumber: 'Commande #CMD456782',
                        date: '12/05/2023',
                        transportInfo: 'Transporteur 32122',
                        location: 'Paris',
                        cardColor: AppColors.containerColor16,
                        onSaveTap: () {},
                      ),
                    ),
                  )
                else
                  ...List.generate(
                    4,
                    (index) => Padding(
                      padding: EdgeInsets.only(bottom: 8.h),
                      child: CustomDocumentCard(
                        invoiceNumber: 'Facture N*F-20250500287',
                        orderNumber: 'Commande #CMD456782',
                        date: '18/05/2023',
                        transportInfo: 'Transporteur 98765',
                        location: 'Lyon',
                        cardColor: AppColors.containerColor16,
                        onSaveTap: () {},
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
