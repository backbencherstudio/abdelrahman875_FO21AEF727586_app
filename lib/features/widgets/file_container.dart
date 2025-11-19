import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/icons.dart';

class FileContainer extends StatelessWidget {
  const FileContainer({super.key, required this.fileName});
  final String fileName;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffF9F9F9),
        borderRadius: BorderRadius.circular(5),
      ),
      child: ListTile(
        leading: Image.asset(AppIcons.fileIcon, height: 24.h, width: 24.h),
        title: Text(
          fileName,
          style: TextStyle(
            color: Color(0xff353535),
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: Icon(
          Icons.delete_outline,
          size: 20.h,
          color: Color(0xff1E1E1E),
        ),
      ),
    );
  }
}
