import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customDropdown(String title, List<String> items) {
  bool isOpen = false;

  return StatefulBuilder(
    builder: (context, setState) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/Help.png',
                width: 24.w,
                height: 24.h,
              ),
              SizedBox(width: 8.w),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isOpen = !isOpen;
                  });
                },
                child: Image.asset(
                  'assets/images/dropdown.png',
                  width: 24.w,
                  height: 24.h,
                ),
              ),
            ],
          ),

          /// Dropdown Content
          if (isOpen)
            Padding(
              padding: const EdgeInsets.only(left: 32.0, top: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: items
                    .map((item) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFF9C9C9C),
                    ),
                  ),
                ))
                    .toList(),
              ),
            ),
        ],
      );
    },
  );
}
