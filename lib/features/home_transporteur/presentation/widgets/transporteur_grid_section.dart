import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constants/icons.dart';
import '../../../../core/theme/src/theme_extension/color_pallete.dart';

// Model Class for Grid Item
class GridItem {
  final String title;
  final String imagePath;

  GridItem({required this.title, required this.imagePath});
}

// Dummy data
final List<GridItem> gridItems = [
  GridItem(title: 'Missions', imagePath: AppIcons.carPng),
  GridItem(title: 'Tableau de bord', imagePath: AppIcons.growthPng),
  GridItem(title: 'Factures', imagePath: AppIcons.notePng),
];

class TransporteurGridSection extends StatelessWidget {
  const TransporteurGridSection({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 18.w),
      child: Wrap(
        spacing: 24.w,
        runSpacing: 12.h,
        alignment: WrapAlignment.start,
        children: gridItems.map((item) {
          return SizedBox(
            width: (MediaQuery.of(context).size.width - 10.w) / 4, // 4 items per row with spacing
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 60.h,
                  width: 60.w,
                  decoration: BoxDecoration(
                    color: AppColors.containerColor2,
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.r),
                    child: Padding(
                      padding: EdgeInsets.all(14.r),
                      child: Image.asset(
                        item.imagePath,
                        height: 40.h,
                        width: 40.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  item.title,
                  // maxLines: 1,
                  // overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: style.labelSmall?.copyWith(
                    color: AppColors.blackText,
                    fontWeight: FontWeight.w600,
                  ),
                )

              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

