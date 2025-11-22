import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/src/theme_extension/color_pallete.dart';

class MultiColorProgress extends StatelessWidget {
  const MultiColorProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CustomPaint(
          size: Size(137.w, 137.h),
          painter: _MultiColorProgressPainter(),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '1500',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.blackColor,
              ),
            ),
            Text(
              'Produits',
              style: TextStyle(fontSize: 16.sp, color: AppColors.blackColor),
            ),
          ],
        ),
      ],
    );
  }
}

class _MultiColorProgressPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double strokeWidth = 20.w;
    double radius = size.width / 2 - strokeWidth / 2;
    final rect = Rect.fromCircle(
      center: Offset(size.width / 2, size.height / 2),
      radius: radius,
    );

    double startAngle = -3.14159 / 2; // 12 o'clock
    final angles = [1 / 3, 1 / 3, 1 / 3]; // percent values
    final colors = [Color(0xffFFD300), Color(0xFF01A601), Color(0xFF0040B8)];

    for (int i = 0; i < 3; i++) {
      final sweepAngle = angles[i] * 2 * 3.14159;
      final paint = Paint()
        ..color = colors[i]
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth
        ..strokeCap = StrokeCap.round;
      canvas.drawArc(rect, startAngle, sweepAngle, false, paint);
      startAngle += sweepAngle;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
