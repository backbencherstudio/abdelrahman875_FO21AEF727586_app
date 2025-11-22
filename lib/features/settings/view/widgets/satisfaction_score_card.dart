import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SatisfactionScoreCard extends StatelessWidget {
  const SatisfactionScoreCard({
    super.key,
    this.score = '4.8',
    this.showStar = true,
    required this.title,
  });

  final String score;
  final String title;
  final bool showStar;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffE2E2E2),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff1B5664),
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  score,
                  style: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff1B5664),
                  ),
                ),
                if (showStar) ...[
                  SizedBox(width: 4.w),
                 Icon(Icons.star,size: 24.sp,color: Color(0xffFFD300),),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}
