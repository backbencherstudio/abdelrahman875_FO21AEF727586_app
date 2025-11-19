import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/constants/icons.dart';
import '../../../../../core/theme/src/theme_extension/color_pallete.dart';

class LocationSearchSection extends StatelessWidget {
  const LocationSearchSection({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.whiteColor,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.borderColor3,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.borderColor3,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.borderColor3,
          ),
        ),

        prefixIcon: Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: SvgPicture.asset(
                  AppIcons.locationSearchingSvg,
                  height: 24.h,
                  width: 24.w,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 12.w),
              Text(
                '|',
                style: style.bodyLarge?.copyWith(
                  color: AppColors.grayText3,
                  fontWeight: FontWeight
                      .w500, // Added font weight for better visibility
                ),
              ),
            ],
          ),
        ),
        hintText: 'Lyon',
      ),
    );
  }
}