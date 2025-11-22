import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeliveryTypesList extends StatelessWidget {
  const DeliveryTypesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTypeItem('Type A', '30 000 €', Color(0xFF01A601)),
        SizedBox(height: 12.h),
        _buildTypeItem('Type B', '31 500 €', Color(0xffFFD300)),
        SizedBox(height: 12.h),
        _buildTypeItem('Type C', '29 700 €', Color(0xFF0040B8)),
      ],
    );
  }

  Widget _buildTypeItem(String type, String amount, Color color) {
    return Row(
      children: [
        Container(
          width: 16.w,
          height: 16.h,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Text(
            '$type :',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: Color(0xff333333),
            ),
          ),
        ),
        Text(
          amount,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: Color(0xff333333),
          ),
        ),
      ],
    );
  }
}
