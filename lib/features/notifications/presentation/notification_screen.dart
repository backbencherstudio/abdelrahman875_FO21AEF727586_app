import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:abdelrahman875_fo21aef727586/features/notifications/presentation/widgets/custom_notification_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                Icon(
                  Icons.arrow_back_rounded,
                  color: AppColors.blackText,
                  size: 24.h,
                ),
                SizedBox(height: 10.h),
                Text(
                  'Notifications',
                  style: style.headlineSmall?.copyWith(
                    color: AppColors.blackText,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  'Aujourd’hui',
                  style: style.titleSmall?.copyWith(
                    color: AppColors.grayText,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
            
                SizedBox(height: 10.h),
            
                CustomNotificationCard(
                  timeAgo: 'Il y a 5h',
                  title: 'Créez votre compte Stripe pour recevoir les paiements',
                  cardColor: AppColors.containerColor16,
                  showButton: true,
                  buttonText: 'Continuer',
                  onButtonTap: () {
                    print('Button pressed!');
                  },
                ),
            
                ...List.generate(10, (index){
                  return CustomNotificationCard(
                    timeAgo: 'Il y a 5h',
                    title: 'Créez votre compte Stripe pour recevoir les paiements',
                    cardColor: AppColors.containerColor16,
                    showButton: true,
                    buttonText: 'Continuer',
                    onButtonTap: () {
                      print('Button pressed!');
                    },
                  );
                })
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}


