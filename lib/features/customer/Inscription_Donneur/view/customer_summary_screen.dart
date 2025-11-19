import 'package:abdelrahman875_fo21aef727586/features/widgets/primery_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/icons.dart';
import '../../../../core/routes/route_name.dart';
import '../../../../core/theme/src/theme_extension/color_pallete.dart';
import '../../../widgets/file_container.dart';
import '../../../widgets/summary_details.dart';
import '../../../widgets/summary_title.dart';

class CustomerSummaryScreen extends StatefulWidget {
  const CustomerSummaryScreen({super.key});

  @override
  State<CustomerSummaryScreen> createState() => _CustomerSummaryScreenState();
}

class _CustomerSummaryScreenState extends State<CustomerSummaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              Column(
                children: [
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
                          'Récapitulatif',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headlineSmall
                              ?.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp,
                              ),
                          // semanticsLabel: 'Téléversez les documents',
                        ),
                      ),
                      SizedBox(width: 38.w),
                    ],
                  ),

                  SizedBox(height: 20.h),
                  Text(
                    'Vérifiez les informations et documents téléchargés puis validez votre inscription',
                    style: TextStyle(
                      color: Color(0xff585B5E),
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20.h),

              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10.h,
                    children: [
                      SummaryTitle(title: 'Informations personnelles'),
                      SummaryDetails(
                        title: 'Nom et Prénom :',
                        details: 'HINREK Eric',
                      ),
                      SummaryDetails(
                        title: 'Date de naissance :',
                        details: '01/01/1977',
                      ),
                      SummaryDetails(
                        title: 'Raison sociale :',
                        details: 'TransEric',
                      ),
                      SummaryDetails(
                        title: 'Secteurs : ',
                        details: 'Distribution',
                      ),
                      SummaryDetails(
                        title: 'Téléphone :',
                        details: '33 7 21 19 12 12',
                      ),
                      SummaryDetails(
                        title: 'Adresse :',
                        details: '12 rue des Lilas, Sannois 95110',
                      ),

                      SizedBox(height: 5.h),
                      Divider(color: Color(0xffD9D9D9)),
                      SizedBox(height: 5.h),

                      SummaryTitle(title: 'Informations véhicule'),
                      SummaryDetails(
                        title: 'Type de véhicule :',
                        details: 'Camion benne 3t5',
                      ),
                      SummaryDetails(
                        title: 'Marque / Modèle :',
                        details: 'Volkswagewnw Crafter',
                      ),
                      SummaryDetails(title: 'Plaque :', details: 'W-767-FR'),
                      SummaryDetails(
                        title: 'Mise en circulation :',
                        details: '01/01/2010',
                      ),
                      SummaryDetails(
                        title: 'Dimensions utiles :',
                        details: 'Longueur 3m\nLargeur 2m\nHauteur 1m',
                      ),
                      SummaryDetails(title: 'Volume utile :', details: '3m³'),
                      SummaryDetails(
                        title: 'Capacité de charge :',
                        details: '750kg',
                      ),
                      SummaryDetails(
                        title: 'Nombre de palettes acceptées :',
                        details: '1',
                      ),

                      SizedBox(height: 5.h),
                      Divider(color: Color(0xffD9D9D9)),
                      SizedBox(height: 5.h),

                      SummaryTitle(title: 'Documents téléchargés'),

                      ...List.generate(5, (index) {
                        return FileContainer(fileName: 'Extrait Kbis (pdf)');
                      }),
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(value: false, onChanged: (value) {}),
                          // SizedBox(width: 4.w,),
                          Text(
                            'J’accepte les conditions générales d’utilisation',
                            style: TextStyle(
                              color: AppColors.grayText7,
                              fontWeight: FontWeight.w600,
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),

                      PrimaryButton(
                        title: 'Créer mon compte',
                        containerColor: AppColors.blackColor,
                        width: double.infinity,
                        onTap: () {
                          context.push(RouteName.command);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
