import 'package:abdelrahman875_fo21aef727586/core/constants/images.dart';
import 'package:abdelrahman875_fo21aef727586/core/routes/route_name.dart';
import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:abdelrahman875_fo21aef727586/features/customer/track_delivery_map/view/widgets/time_line.dart';
import 'package:abdelrahman875_fo21aef727586/features/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/icons.dart';

class TrackDeliveryMapScreen extends StatefulWidget {
  const TrackDeliveryMapScreen({super.key});

  @override
  State<TrackDeliveryMapScreen> createState() => _TrackDeliveryMapScreenState();
}

class _TrackDeliveryMapScreenState extends State<TrackDeliveryMapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(AppImages.mapPng, fit: BoxFit.cover),

            Positioned(
              top: 20.h,
              left: 20.w,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_outlined,
                  size: 30.h,
                  color: AppColors.whiteColor,
                ),
              ),
            ),

            DraggableScrollableSheet(
              initialChildSize: 0.4,
              minChildSize: 0.3,
              maxChildSize: 0.85,
              expand: false,
              builder: (context, scrollController) {
                final style = Theme.of(context).textTheme;
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.5),
                        blurRadius: 10,
                        offset: const Offset(0, -3),
                      ),
                    ],
                  ),
                  child: SafeArea(
                    top: false,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // 🔹 Small handle bar
                        Center(
                          child: Container(
                            height: 5.h,
                            width: 50.w,
                            margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                          ),
                        ),

                        // 🔹 Scrollable content inside
                        Expanded(
                          child: ListView(
                            controller: scrollController,
                            physics: const BouncingScrollPhysics(),
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: AppColors.containerColor5
                                              .withAlpha(90),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(12.r),
                                          child: SvgPicture.asset(
                                            AppIcons.boxShapeSvg,
                                            height: 20.h,
                                            width: 20.w,
                                          ),
                                        ),
                                      ),

                                      SizedBox(width: 10.w),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '#HWDSF776567DS',
                                            style: style.bodyLarge?.copyWith(
                                              color: AppColors.textColor1,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            'Transporteur 321',
                                            style: style.bodySmall?.copyWith(
                                              color: AppColors.grayText,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),

                                      SizedBox(width: 10.w),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: AppColors.whiteColor,
                                          border: Border.all(
                                            color: Color(0xffA2C8D1),
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            10.r,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(8.r),
                                          child: Image.asset(
                                            AppIcons.shareIconPng,
                                            height: 24.h,
                                            width: 24.h,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10.w),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: AppColors.whiteColor,
                                          border: Border.all(
                                            color: Color(0xffA2C8D1),
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            10.r,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(8.r),
                                          child: Text(
                                            'Facture',
                                            style: style.bodyMedium?.copyWith(
                                              color: AppColors.textColor1,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 20.h),

                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'De',
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                color: Color(0xff696767),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(height: 10.h),
                                            Text(
                                              'Ermont, France',
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                color: Color(0xff4B4B4B),
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(height: 10.h),
                                            Text(
                                              '2 rue de l’Avenir, Ermont,\n95110, France',
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                color: Color(0xff736F6F),
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'À',
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                color: Color(0xff696767),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(height: 10.h),
                                            Text(
                                              'Lyon, France',
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                color: Color(0xff4B4B4B),
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(height: 10.h),
                                            Text(
                                              '12 rue de Maurice, Lyon,\n69000, France',
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                color: Color(0xff736F6F),
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),

                                  CustomDivider(),

                                  GestureDetector(
                                    onTap: () {
                                      context.push(
                                        RouteName.proofOfShipmentScreen,
                                      );
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xffCAE6FF),
                                        borderRadius: BorderRadius.circular(
                                          8.r,
                                        ),
                                      ),
                                      child: ListTile(
                                        leading: SvgPicture.asset(
                                          AppIcons.carSvg,
                                          height: 24.h,
                                          width: 24.w,
                                        ),
                                        title: Text(
                                          'Preuve d’expédition',
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                        trailing: Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          size: 24.h,
                                          color: AppColors.grayText,
                                        ),
                                      ),
                                    ),
                                  ),

                                  SizedBox(height: 10.h),
                                  GestureDetector(
                                    onTap: () {
                                      context.push(RouteName.deliveriesCompletedScreen);
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xffE5E5E5),
                                        borderRadius: BorderRadius.circular(
                                          8.r,
                                        ),
                                      ),
                                      child: ListTile(
                                        leading: Image.asset(
                                          AppIcons.manIconPng,
                                          height: 24.h,
                                          width: 24.w,
                                        ),
                                        title: Text(
                                          'Preuve de livraison',
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                        trailing: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Image.asset(
                                              AppIcons.expressDeliveryPng,
                                              height: 24.h,
                                              width: 24.w,
                                            ),
                                            SizedBox(width: 10.w),
                                            Icon(
                                              Icons.arrow_forward_ios_outlined,
                                              size: 24.h,
                                              color: AppColors.grayText,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),

                                  SizedBox(height: 20.h),
                                  ListTile(
                                    leading: Image.asset(
                                      AppIcons.boxPng,
                                      height: 24.h,
                                      width: 24.w,
                                    ),
                                    title: Text(
                                      'Le colis',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),

                                  SizedBox(height: 16.h),
                                  Row(
                                    children: [
                                      Text(
                                        'Marchandise : ',
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          color: Color(0xff353535),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        'Type A - Marchandises générales',
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          color: Color(0xff01A601),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 16.h),

                                  Container(
                                    decoration: BoxDecoration(
                                      color: AppColors.whiteColor,
                                      borderRadius: BorderRadius.circular(8.r),
                                      border: Border.all(
                                        color: AppColors.grayText,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(10.r),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Longueur : 2m',
                                                  style: TextStyle(
                                                    fontSize: 14.sp,
                                                    color: Color(0xff353535),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                Text(
                                                  'Largeur : 4,5m',
                                                  style: TextStyle(
                                                    fontSize: 14.sp,
                                                    color: Color(0xff353535),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                Text(
                                                  'Poids : 50kg',
                                                  style: TextStyle(
                                                    fontSize: 14.sp,
                                                    color: Color(0xff353535),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),

                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Hauteur : 0,5m',
                                                  style: TextStyle(
                                                    fontSize: 14.sp,
                                                    color: Color(0xff353535),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                Text(
                                                  'Métrage : 2.3m3',
                                                  style: TextStyle(
                                                    fontSize: 14.sp,
                                                    color: Color(0xff353535),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  SizedBox(height: 16.h),

                                  Container(
                                    decoration: BoxDecoration(
                                      color: AppColors.whiteColor,
                                      borderRadius: BorderRadius.circular(8.r),
                                      border: Border.all(
                                        color: AppColors.grayText,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(10.r),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Tarif :',
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: Color(0xff353535),
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            '350 €',
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: Color(0xff76889A),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 16.h),
                                  Text(
                                    'Historique',
                                    style: style.bodyMedium?.copyWith(
                                      color: Color(0xff4B4B4B),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                  SizedBox(height: 16.h),
                                  ...List.generate(3, (index) {
                                    return Padding(
                                      padding: EdgeInsets.only(
                                        bottom: index == 2
                                            ? 0
                                            : 30.h, // 👈 no padding after last item
                                      ),
                                      child: const TimeLine(),
                                    );
                                  }),
                                  SizedBox(height: 16.h),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        AppIcons.alertPng,
                                        height: 24.h,
                                        width: 24.w,
                                      ),
                                      SizedBox(width: 10.w),
                                      Text(
                                        'Signaler un problème',
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          color: Color(0xffC61A1A),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 16.h),

                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xff727272),
                                        borderRadius: BorderRadius.circular(
                                          8.r,
                                        ),
                                      ),
                                      child: ListTile(
                                        leading: Image.asset(
                                          AppIcons.phonePng,
                                          height: 24.h,
                                          width: 24.w,
                                        ),
                                        title: Text(
                                          'Contacter le transporteur',
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  SizedBox(height: 10.h),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xff727272),
                                        borderRadius: BorderRadius.circular(
                                          8.r,
                                        ),
                                      ),
                                      child: ListTile(
                                        leading: Image.asset(
                                          AppIcons.phonePng,
                                          height: 24.h,
                                          width: 24.w,
                                        ),
                                        title: Text(
                                          'Contacter le destinataire',
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  SizedBox(height: 20.h),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
