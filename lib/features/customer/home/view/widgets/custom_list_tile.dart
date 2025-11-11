import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/constants/icons.dart';
import '../../../../../core/theme/src/theme_extension/color_pallete.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.date,
    this.color,
    this.dot,
    this.textStyle,
    this.showBorder,
  });

  final String title;
  final String subtitle;
  final String date;
  final Color? color;
  final TextStyle? textStyle;
  final String? dot;
  final bool? showBorder;

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        border: showBorder == true
            ? Border.all(color: AppColors.transparentColor)
            : Border.all(color: AppColors.borderColor3),
        borderRadius: BorderRadius.circular(12.r),
        color: AppColors.containerColor15,
      ),
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(
            color: color ?? AppColors.containerColor5.withAlpha(90),
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
        title: Text(
          title,
          style: style.bodyLarge?.copyWith(
            color: AppColors.textColor1,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                subtitle,
                style:
                    textStyle ??
                    style.bodySmall?.copyWith(
                      color: AppColors.greenText,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              SizedBox(width: 8.w),
              Text(
                dot ?? '',
                style: style.bodySmall?.copyWith(
                  color: AppColors.grayText4,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: 8.w),
              Text(
                date,
                style: style.bodySmall?.copyWith(
                  color: AppColors.grayText4,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        trailing: SvgPicture.asset(
          AppIcons.forwardSvg,
          height: 24.h,
          width: 24.w,
        ),
      ),
    );
  }
}
