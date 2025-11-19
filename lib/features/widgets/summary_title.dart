import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SummaryTitle extends StatelessWidget {
  const SummaryTitle({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Color(0xff353535),
        fontSize: 12.sp,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
