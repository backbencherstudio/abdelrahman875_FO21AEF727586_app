import 'package:abdelrahman875_fo21aef727586/core/constants/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theme/src/theme_extension/color_pallete.dart';
import '../../../widgets/primery_button.dart';
import '../../riverpod/select_container_provider.dart';
import '../../riverpod/selected_index_provider.dart';
import 'input_label.dart';

class MarchandiseSection extends StatelessWidget {
  MarchandiseSection({super.key});

  final List<Map<String, dynamic>> items = [
    {
      'icon': AppIcons.alimentsSvg,
      'temp': '+0°C et +7°C',
      'label': 'Produits frais',
    },
    {
      'icon': AppIcons.alimentsSvg,
      'temp': '0°C et -7°C',
      'label': 'Produits surgelés',
    },
    {
      'icon': AppIcons.alimentsSvg,
      'temp': '0°C et -7°C',
      'label': 'Produits surgelés',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InputLabel(title: 'Type de marchandises'),
        SizedBox(height: 12.h),
        TextFormField(
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.boxColor2.withAlpha(15),
            hintText: 'Produits frais',
            hintStyle: style.bodyLarge?.copyWith(
              color: AppColors.grayText4,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(height: 16.h),

        InputLabel(title: 'Température requise'),
        SizedBox(height: 12.h),

        Consumer(
          builder: (context, ref, _) {
            final selectedIndex = ref.watch(selectedContainerProvider);

            return SizedBox(
              height: 130.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length + 1,
                itemBuilder: (context, index) {
                  final isAddNew = index == items.length;
                  final isSelected = selectedIndex == index;

                  return Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: GestureDetector(
                      onTap: () {
                        if (!isAddNew) {
                          ref.read(selectedContainerProvider.notifier).state =
                              index;
                        } else {
                          // handle add new
                        }
                      },
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(
                                color: isSelected
                                    ? AppColors.borderColor2
                                    : AppColors.borderColor3,
                                width: 1,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 8.w,
                                vertical: 10.h,
                              ),
                              child: isAddNew
                                  ? Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 8.w,
                                        vertical: 10.h,
                                      ),
                                      child: Icon(
                                        Icons.add,
                                        size: 42.h,
                                        color: AppColors.borderColor3,
                                      ),
                                    )
                                  : Column(
                                      children: [
                                        Image.asset(
                                          items[index]['icon'],
                                          height: 42.h,
                                          width: 42.w,
                                        ),
                                        SizedBox(height: 8.h),
                                        Text(
                                          items[index]['temp'],
                                          style: style.bodySmall?.copyWith(
                                            color: AppColors.blackText,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            isAddNew ? 'Autre' : items[index]['label'],
                            style: style.bodyMedium?.copyWith(
                              color: AppColors.blackText,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
        SizedBox(height: 12.h),
        TextFormField(
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            hintText: 'Autre',
            hintStyle: style.bodyLarge?.copyWith(
              color: AppColors.grayText4,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(height: 16.h),

        InputLabel(title: 'Dimensions du colis'),
        SizedBox(height: 12.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Longueur ( mètres )',
                  hintStyle: style.bodyLarge?.copyWith(
                    color: AppColors.grayText4,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(width: 8.w),
            Expanded(
              child: TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Largueur ( mètres )',
                  hintStyle: style.bodyLarge?.copyWith(
                    color: AppColors.grayText4,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: 12.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Hauteur ( mètres )',
                  hintStyle: style.bodyLarge?.copyWith(
                    color: AppColors.grayText4,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(width: 8.w),
            Expanded(
              child: TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Metrage',
                  hintStyle: style.bodyLarge?.copyWith(
                    color: AppColors.grayText4,
                    fontWeight: FontWeight.w400,
                  ),
                  suffixIcon: Icon(
                    Icons.keyboard_arrow_down_sharp,
                    size: 24.r,
                    color: AppColors.grayText4,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 12.h),
        TextFormField(
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.boxColor2.withAlpha(15),
            hintText: 'Valume ( m3 )',
            hintStyle: style.bodyLarge?.copyWith(
              color: AppColors.grayText4,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(height: 16.h),

        InputLabel(title: 'Poids du colis ( kg )'),
        SizedBox(height: 12.h),
        TextFormField(
          textInputAction: TextInputAction.done,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.boxColor2.withAlpha(15),
            hintText: '7 Kg',
            hintStyle: style.bodyLarge?.copyWith(
              color: AppColors.grayText4,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),

        SizedBox(height: 40.h),
        Consumer(
          builder: (context, ref, _) {
            final index = ref.watch(selectedIndexProvider);
            return PrimaryButton(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 12.h),
              containerColor: AppColors.blackColor,
              title: 'Suivant',
              onTap: () {
                if (index == 1) {
                  ref.read(selectedIndexProvider.notifier).state = 2;
                } else {
                  ref.read(selectedIndexProvider.notifier).state = 1;
                }
              },
            );
          },
        ),

        SizedBox(height: 60.h),
      ],
    );
  }
}
