import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../viewmodel/velocity_provider.dart';

class Velocity extends ConsumerWidget {
  const Velocity({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final style = Theme.of(context).textTheme;
    final velocity = ref.watch(velocityProvider); // watch state

    return Container(
      width: 327.w,
      height: 78.h,
      padding: const EdgeInsets.all(10),
      color: AppColors.primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Decrease button
          IconButton(
            icon: const Icon(Icons.remove, color: AppColors.secondaryColor),
            onPressed: () {
               if (velocity > 67) {
                ref.read(velocityProvider.notifier).state = velocity - 1;
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(10),
              side: const BorderSide(
                color: AppColors.secondaryColor,
                width: 2,
              ),
            ),
          ),

          // Show dynamic velocity
          Text(
            "$velocity€", // <-- updated with provider
            style: style.headlineLarge?.copyWith(color: AppColors.textColor3),
          ),

          // Increase button
          IconButton(
            icon: const Icon(Icons.add, color: AppColors.secondaryColor),
            onPressed: () {
              ref.read(velocityProvider.notifier).state = velocity + 1;
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(10),
              side: const BorderSide(
                color: AppColors.secondaryColor,
                width: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
