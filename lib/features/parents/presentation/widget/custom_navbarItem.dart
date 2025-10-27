// ignore_for_file: file_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavItem extends StatelessWidget {
  final String iconPath;
  final String label;
  final VoidCallback onTap;
  final bool isActive;
  final Color activeColor;
  final Color defaultColor;

  const CustomBottomNavItem({
    super.key,
    required this.iconPath,
    required this.label,
    required this.onTap,
    this.isActive = false,
    this.activeColor = Colors.black,
    this.defaultColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          overlayColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        onPressed: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              iconPath,
              width: 24.w,
              height: 24.h,
              fit: BoxFit.cover,
              color: isActive ? activeColor : Color(0xff777980),
            ),
            SizedBox(height: 4.h),
            Text(
              label,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: isActive ? activeColor : defaultColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
