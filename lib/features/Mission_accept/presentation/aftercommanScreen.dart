import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rating_and_feedback_collector/rating_and_feedback_collector.dart';
import '../../../core/constants/images.dart';
import '../../../core/routes/route_name.dart';
import '../../../core/theme/src/theme_extension/color_pallete.dart';
import '../../widgets/primery_button.dart';

class AfterCommand extends StatefulWidget {
  const AfterCommand({super.key});

  @override
  State<AfterCommand> createState() => _AfterCommandState();
}

class _AfterCommandState extends State<AfterCommand> {
  double _rating = 0; // Store current rating

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 98.h), // Top spacing
          Center(
            child: Image.asset(
              AppImages.accueil,
              width: 132.w,
              height: 132.h,
              errorBuilder: (context, error, stackTrace) =>
              const Icon(Icons.help_outline, size: 24),
            ),
          ),
          SizedBox(height: 44.h),
          Text(
            "Dernière étape avant la \n validation : évaluez votre \n donneur d’ordre.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 55.h),

          /// Rating Bar Section
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: RatingBar(
              iconSize: 40,
              allowHalfRating: false,
              filledIcon: Icons.star,
              emptyIcon: Icons.star_border,
              filledColor: Colors.amber,
              emptyColor: Colors.grey,
              currentRating: _rating,
              onRatingChanged: (rating) {
                setState(() {
                  _rating = rating;
                });
              },
              // showFeedbackForRatingsLessThan: 4,

            ),
          ),

          Center(
            child: PrimaryButton(
              width: 263.w,
              padding: EdgeInsets.all(16.r),
              containerColor: AppColors.blackColor,
              title: 'Suivant',
              onTap: () {
                context.push(RouteName.mis_termineeScreen);
              },
            ),
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
