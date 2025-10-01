import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/images.dart';
import '../../widgets/common_btn.dart';

class votreCommand extends StatefulWidget {
  const votreCommand({super.key});

  @override
  State<votreCommand> createState() => _votreCommandState();
}

class _votreCommandState extends State<votreCommand> {
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Column(
        
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 98.h), // Top spacing
          Center(
            child: Image.asset(
              AppImages.capture,
              width: 132.w,
              height: 132.h,
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.help_outline, size: 24),
            ),
          ),
          SizedBox(height: 44.h),
          Text(
            "Votre commande \n #CMD456782 est validée !",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 50.h),



          // Subtitle
          Text(
            "Nous recherchons le meilleur \n transporteur pour vous.",
            textAlign: TextAlign.center,

            style: TextStyle(fontSize: 16.sp, color: Colors.grey[700]),
          ),
          SizedBox(height: 20.h),

          Text(
            "Vous recevrez une notification dès que \n nous trouverons un transporteur. ",
            textAlign: TextAlign.center,

            style: TextStyle(fontSize: 16.sp, color: Colors.grey[700]),
          ),
          SizedBox(height: 85.h),

          CommonBtn(title: 'Accueil', onPressed: () {  },),
          SizedBox(height: 100.h),
        ],
      ),
    );
  }
}
