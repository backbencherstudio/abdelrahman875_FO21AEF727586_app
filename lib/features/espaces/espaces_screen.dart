import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EspacesScreen extends StatelessWidget {
  const EspacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryTextColor,
      body: SafeArea(child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 34),
            child: Text("data",style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 24.h,
              color: AppColor.whiteTextColor
            )),
          )

        ],


      )),
    );
  }
}