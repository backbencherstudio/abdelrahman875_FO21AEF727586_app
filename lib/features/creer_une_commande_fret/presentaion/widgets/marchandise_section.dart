import 'package:abdelrahman875_fo21aef727586/core/constants/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theme/src/theme_extension/color_pallete.dart';
import '../../../widgets/primery_button.dart';
import '../../riverpod/select_container_provider.dart';
import '../../riverpod/selected_index_provider.dart';
import 'input_label.dart';

class MarchandiseSection extends ConsumerStatefulWidget {
  MarchandiseSection({super.key});

  @override
  ConsumerState<MarchandiseSection> createState() => _MarchandiseSectionState();
}

class _MarchandiseSectionState extends ConsumerState<MarchandiseSection> {
  final TextEditingController _autreTEController = TextEditingController();
  final TextEditingController _longueurTEController = TextEditingController();
  final TextEditingController _largueurTEController = TextEditingController();
  final TextEditingController _hauteurTEController = TextEditingController();
  final TextEditingController _metrageTEController = TextEditingController();
  final TextEditingController _valumeTEController = TextEditingController();
  final TextEditingController _poidsTEController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  dispose() {
    super.dispose();
    _autreTEController.dispose();
    _longueurTEController.dispose();
    _largueurTEController.dispose();
    _hauteurTEController.dispose();
    _metrageTEController.dispose();
    _valumeTEController.dispose();
    _poidsTEController.dispose();
    _formKey.currentState?.dispose();
  }

  String? selectedValue;

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

  ];

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InputLabel(title: 'Type de marchandises'),
          SizedBox(height: 12.h),
          DropdownButtonFormField<String>(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            value: selectedValue,
            decoration: const InputDecoration(),
            hint: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Text(
                'Choisissez le type de marchandises',
                style: style.bodyMedium?.copyWith(
                  color: AppColors.grayText4,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            items: [
              {'label': 'Marchandises générales', 'color': Colors.green},
              {'label': 'Produits alimentaires et agricoles', 'color': Colors.yellow},
              {'label': 'Produits médicaux et sensibles', 'color': Colors.blue},
              {'label': 'Matières dangereuses et déchets', 'color': Colors.red},
              {'label': 'Matériaux, machines et véhicules', 'color': Colors.orange},
              {'label': 'Événementiel et divers', 'color': Colors.purple},
            ].map((item) {
              return DropdownMenuItem<String>(
                value: item['label'] as String, // ✅ fix the type issue here
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Row(
                    children: [
                      Container(
                        height: 24.h,
                        width: 24.w,
                        decoration: BoxDecoration(
                          color: item['color'] as Color, // also cast color
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: AppColors.borderColor3,
                            width: 1,
                          ),
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        item['label'] as String,
                        style: style.bodyMedium?.copyWith(
                          color: AppColors.blackText,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                selectedValue = value;
              });
            },
            validator: (value){
              if(value == null){
                return 'Veuillez sélectionner un type de marchandises';
              }
              return null;
            },
          ),


          SizedBox(height: 16.h),

          InputLabel(title: 'Température requise'),
          SizedBox(height: 12.h),

          Consumer(
            builder: (context, ref, _) {
              final selectedIndexes = ref.watch(selectedContainerProvider);
              final showAutre = ref.watch(showAutreFieldProvider);

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     GestureDetector(
                       onTap: (){
                         ref.read(showAutreFieldProvider.notifier).state = false;
                         ref.read(selectedContainerProvider.notifier).state = 0;
                       },
                       child: Column(
                         children: [
                           Container(
                             height: 90.h,
                             width: 90.w,
                             decoration: BoxDecoration(
                               color: selectedIndexes == 0 ? AppColors.blackColor : AppColors.boxColor2.withAlpha(15),
                               borderRadius: BorderRadius.circular(12.r),
                               border: Border.all(
                                 color: selectedIndexes == 0 ? AppColors.blackColor : AppColors.borderColor3,
                                 width: 1,
                               ),
                             ),
                             child: Padding(
                               padding: const EdgeInsets.all(4.0),
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Image.asset( AppIcons.alimentsSvg, height: 40.h, width: 40.w, color: selectedIndexes == 0 ? AppColors.whiteColor : AppColors.blackText,),
                                   SizedBox(height: 8.h),
                                   Text(
                                     textAlign: TextAlign.center,
                                     '+0°C et +4°C',style: style.labelSmall?.copyWith(
                                     color: selectedIndexes == 0 ? AppColors.whiteColor : AppColors.blackText,
                                     fontWeight: FontWeight.w400
                                   ),),
                                 ]
                               ),
                             ),
                           ),
                           SizedBox(height: 8.h),
                           Text('Produits frais',style: style.bodyMedium?.copyWith(
                             color: AppColors.blackText,
                             fontWeight: FontWeight.w400
                           ),)
                         ],
                       ),
                     ),
                     GestureDetector(
                       onTap: (){
                         ref.read(showAutreFieldProvider.notifier).state = false;
                         ref.read(selectedContainerProvider.notifier).state = 1;
                       },
                       child: Column(
                         children: [
                           Container(
                             height: 90.h,
                             width: 90.w,
                             decoration: BoxDecoration(
                               color: selectedIndexes == 1 ? AppColors.blackColor : AppColors.boxColor2.withAlpha(15),
                               borderRadius: BorderRadius.circular(12.r),
                               border: Border.all(
                                 color: selectedIndexes == 1 ? AppColors.blackColor : AppColors.borderColor3,
                                 width: 1,
                               ),
                             ),
                             child: Padding(
                               padding: const EdgeInsets.all(4.0),
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Image.asset( AppIcons.coolBoxPng, height: 40.h, width: 40.w, color:  selectedIndexes == 1 ? AppColors.whiteColor : AppColors.blackColor ),
                                   SizedBox(height: 8.h),
                                   Text(
                                     textAlign: TextAlign.center,
                                     '-25°C à -18°C',style: style.labelSmall?.copyWith(
                                     color: selectedIndexes == 1 ? AppColors.whiteColor : AppColors.blackText,
                                     fontWeight: FontWeight.w400
                                   ),),
                                 ]
                               ),
                             ),
                           ),
                           SizedBox(height: 8.h),
                           Text('Produits surgelés ',style: style.bodyMedium?.copyWith(
                             color: AppColors.blackText,
                             fontWeight: FontWeight.w400
                           ),)
                         ],
                       ),
                     ),
                     GestureDetector(
                       onTap: (){
                         ref.read(showAutreFieldProvider.notifier).state = !showAutre;
                         ref.read(selectedContainerProvider.notifier).state = 2;
                       },
                       child: Column(
                         children: [
                           Container(
                             height: 90.h,
                             width: 90.w,
                             decoration: BoxDecoration(
                               color: selectedIndexes == 2 ? AppColors.blackColor : AppColors.boxColor2.withAlpha(15),
                               borderRadius: BorderRadius.circular(12.r),
                               border: Border.all(
                                 color: AppColors.borderColor3,
                                 width: 1,
                               ),
                             ),
                             child: Center(
                               child: Icon(Icons.add,size: 40.r,color: selectedIndexes == 2 ? AppColors.whiteColor : AppColors.blackText),
                             ),
                           ),
                           SizedBox(height: 8.h),
                           Text('Autre',style: style.bodyMedium?.copyWith(
                             color: AppColors.blackText,
                             fontWeight: FontWeight.w400
                           ),)
                         ],
                       ),
                     ),
                   ],
                 ),

                  SizedBox(height: 12.h),

                  // Show TextFormField only when Autre is tapped
                  if (showAutre)
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Autre',
                        hintStyle: style.bodyMedium?.copyWith(
                          color: AppColors.grayText4,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return 'Veuillez entrer un type de marchandises';
                        }
                        return null;
                      },
                    ),
                ],
              );
            },
          ),

          SizedBox(height: 12.h),
          InputLabel(title: 'Dimensions du colis'),
          SizedBox(height: 12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Longueur ( mètres )',
                    hintStyle: style.bodyMedium?.copyWith(
                      color: AppColors.grayText4,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return 'Veuillez entrer la longueur du colis';
                    } else{
                      if(double.tryParse(value) == null){
                        return 'Veuillez entrer un nombre valide pour la longueur';
                      }
                      return null;
                    }
                  },
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Largueur ( mètres )',
                    hintStyle: style.bodyMedium?.copyWith(
                      color: AppColors.grayText4,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return 'Veuillez entrer la largeur du colis';
                      } else{
                        if(double.tryParse(value) == null){
                          return 'Veuillez entrer un nombre valide pour la largeur';
                        }
                        return null;
                      }
                    }
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
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Hauteur ( mètres )',
                    hintStyle: style.bodyMedium?.copyWith(
                      color: AppColors.grayText4,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return 'Veuillez entrer la hauteur du colis';
                      } else{
                        if(double.tryParse(value) == null){
                          return 'Veuillez entrer un nombre valide pour la hauteur';
                        }
                        return null;
                      }
                    }
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Metrage',
                    hintStyle: style.bodyMedium?.copyWith(
                      color: AppColors.grayText4,
                      fontWeight: FontWeight.w400,
                    ),
                    suffixIcon: Icon(
                      Icons.keyboard_arrow_down_sharp,
                      size: 24.r,
                      color: AppColors.grayText4,
                    ),
                  ),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return 'Veuillez entrer le métrage du colis';
                      } else{
                        if(double.tryParse(value) == null){
                          return 'Veuillez entrer un nombre valide pour le métrage';
                        }
                        return null;
                      }
                    }
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              textInputAction: TextInputAction.next,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.boxColor2.withAlpha(15),
              hintText: 'Valume ( m3 )',
              hintStyle: style.bodyMedium?.copyWith(
                color: AppColors.grayText4,
                fontWeight: FontWeight.w400,
              ),
            ),
            validator: (value){
              if(value == null || value.isEmpty){
                return 'Veuillez entrer le valume du colis';
              } else{
                if(double.tryParse(value) == null){
                  return 'Veuillez entrer un nombre valide pour le valume';
                }
                return null;
              }
            }
          ),
          SizedBox(height: 16.h),

          InputLabel(title: 'Poids du colis ( kg )'),
          SizedBox(height: 12.h),
          TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              textInputAction: TextInputAction.done,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.boxColor2.withAlpha(15),
              hintText: '7 Kg',
              hintStyle: style.bodyMedium?.copyWith(
                color: AppColors.grayText4,
                fontWeight: FontWeight.w400,
              ),
            ),
            validator: (value){
              if(value == null || value.isEmpty){
                return 'Veuillez entrer le poids du colis';
              } else{
                if(double.tryParse(value) == null){
                  return 'Veuillez entrer un nombre valide pour le poids';
                }
                return null;
              }
            }
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
                 if(_formKey.currentState!.validate()){
                   if (index == 1) {
                     ref.read(selectedIndexProvider.notifier).state = 2;
                   } else {
                     ref.read(selectedIndexProvider.notifier).state = 1;
                   }
                 }
                },
              );
            },
          ),

          SizedBox(height: 60.h),
        ],
      ),
    );
  }
}
