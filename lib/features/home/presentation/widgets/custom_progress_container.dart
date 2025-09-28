import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_stepper/smart_stepper.dart';
import '../../../../core/theme/src/theme_extension/color_pallete.dart';
import 'custom_list_tile.dart';

class ProgressContainer extends StatelessWidget {
  const ProgressContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.containerColor2,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        children: [
          CustomListTile(title: '#HWDSF776567DS', subtitle: 'Sur la route',dot: '.', date: '24 Juin 2025',),
          // SizedBox(height: 8.h),
          SmartStepper(
            currentStep: 4,
            totalSteps: 5,
            completeLineColor: Colors.blue,
            currentLineColor: Colors.red,
            inactiveLineColor: Colors.grey,
            lineHeight: 1,
            lineWidth: 40,
            lineBorderRadius: 10,
            onStepperTap: (index) {
              print("Tapped step: $index");
            },
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('De'), Text('Destination')],
            ),
          ),
          SizedBox(height: 4.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Ermont, France'), Text('Bordeaux, France')],
            ),
          ),
          SizedBox(height: 8.h),
        ],
      ),
    );
  }
}


