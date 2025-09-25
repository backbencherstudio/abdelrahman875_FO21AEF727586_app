import 'package:abdelrahman875_fo21aef727586/core/constants/icons_constants.dart';
import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';


class FloatingHomeButton extends StatelessWidget {
  final VoidCallback onTap;
  final bool isKeyboardOpen;
  final bool isSelected;
  const FloatingHomeButton({
    super.key,
    required this.onTap,
    required this.isKeyboardOpen,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    if (isKeyboardOpen) return const SizedBox.shrink();

    return Transform.translate(
      offset: const Offset(0, 0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 52.w,
          height: 52.w,
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: AppColor.onboadCon,
            shape: BoxShape.circle,
         //  border: Border.all(color: Color(0xFFFFFFFF), width: 8),
            boxShadow: [
              // BoxShadow(
              //   color: const Color(0xFFEDFFD0).withOpacity(.3),
              //   blurRadius: 20,
              //   offset: const Offset(0, 6),
              // ),
            ],
          ),
          child: Center(
            child: SvgPicture.asset(
              AppIcons.scanerIcon,
              width: 24,
              height: 24,
              fit: BoxFit.cover,
              color: AppColor.backgroundColor,
            ),
          ),
        ),
      ),
    );
  }
}
