import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stepindicator/flutter_stepindicator.dart';
import '../../../../core/theme/src/theme_extension/color_pallete.dart';
import 'custom_list_tile.dart';

class ProgressContainer extends StatelessWidget {
  const ProgressContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.containerColor15,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        child: Column(
          children: [
            CustomListTile(
              title: '#HWDSF776567DS',
              subtitle: 'Sur la route',
              dot: '.',
              date: '24 Juin 2025',
              showBorder: true,
            ),

            // SizedBox(height: 8.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.r),
              child: FlutterStepIndicator(
                height: 20,
                // disableAutoScroll: false, // Enable or disable automatic scrolling.
                list: [1, 2, 3, 4, 5],
                onChange: (int index) {},
                page: 2, // Specify the current step or page.
                paddingLine: EdgeInsets.symmetric(vertical: 1.0),

                positiveCheck: Checkbox(
                  value: true,
                  onChanged: (value) {},
                  checkColor: AppColors.whiteColor,
                  side: BorderSide(
                    color: AppColors.containerColor5,
                    width: 2.0,
                  ),
                  activeColor: AppColors.greenText,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ), // Optionally, use a custom checkmark widget.
                positiveColor: AppColors
                    .greenText, // Customize the color of positive (active) steps.
                negativeColor: AppColors
                    .grayText, // Customize the color of negative (disabled) steps.
                progressColor: AppColors
                    .containerColor5, // Customize the color of the progress indicator.
                durationScroller: Durations
                    .medium1, // Set the duration for scrolling animations.
                durationCheckBulb: Durations
                    .medium1, // Set the duration for checkmark bulb animations.
                division: 10,
                // Specify the number of divisions for rendering steps.
              ),
            ),
            SizedBox(height: 8.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.r),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('De'), Text('Destination')],
              ),
            ),
            SizedBox(height: 4.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.r),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Ermont, France'), Text('Bordeaux, France')],
              ),
            ),
            SizedBox(height: 8.h),
          ],
        ),
      ),
    );
  }
}
