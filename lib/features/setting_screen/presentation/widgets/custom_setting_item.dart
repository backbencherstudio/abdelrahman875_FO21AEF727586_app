// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/src/theme_extension/color_pallete.dart';
import '../../riverpod/notification_toggle_provider.dart';

class CustomSettingItem extends ConsumerWidget {
  final String title;
  final String iconPath;
  final bool hasSwitch;

  const CustomSettingItem({
    super.key,
    required this.title,
    required this.iconPath,
    this.hasSwitch = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final style = Theme.of(context).textTheme;

    final isSwitched = hasSwitch ? ref.watch(notificationToggleProvider) : false;

    return Container(
      decoration: BoxDecoration(
        color: AppColors.transparentColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
        child: Row(
          children: [
            Image.asset(iconPath, height: 24.h, width: 24.w),
            SizedBox(width: 12.w),
            Expanded(
              child: Text(
                title,
                style: style.bodyLarge?.copyWith(
                  color: AppColors.blackColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            if (hasSwitch)
              Switch(
                value: isSwitched,
                onChanged: (value) {
                  ref.read(notificationToggleProvider.notifier).state = value;
                },
                activeColor: Colors.grey.shade400,
              ),
          ],
        ),
      ),
    );
  }
}
