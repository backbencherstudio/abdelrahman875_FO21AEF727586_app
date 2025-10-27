import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
  GridItem(title: 'Envoyer', imagePath: AppIcons.boxPng),
  GridItem(title: 'Suivi', imagePath: AppIcons.routePng),
  GridItem(title: 'Transporteurs', imagePath: AppIcons.transporteuresPng),
  GridItem(title: 'Documents', imagePath: AppIcons.notePng),
];

class GridSection extends StatelessWidget {
  const GridSection({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(8.w),
      itemCount: gridItems.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 4.w,
        mainAxisSpacing: 4.h,
        childAspectRatio: 0.75,
      ),
      itemBuilder: (context, index) {
        final item = gridItems[index];
        return Column(
          mainAxisSize: MainAxisSize.min,
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
              style: style.labelSmall?.copyWith(
                color: AppColors.blackText,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        );
      },
    );
  }
}
