import 'package:abdelrahman875_fo21aef727586/features/settings/view/widgets/delivery_start_card.dart';
import 'package:abdelrahman875_fo21aef727586/features/settings/view/widgets/delivery_type_list.dart';
import 'package:abdelrahman875_fo21aef727586/features/settings/view/widgets/multiple_color_progress.dart';
import 'package:abdelrahman875_fo21aef727586/features/settings/view/widgets/satisfaction_score_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:abdelrahman875_fo21aef727586/features/settings/view/widgets/time_frame_button.dart';
import 'package:abdelrahman875_fo21aef727586/features/widgets/custom_header_title.dart';
import '../viewmodel/select_time_frame_provider.dart';

class StatisticsDashboardScreen extends ConsumerWidget {
  const StatisticsDashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedTimeFrame = ref.watch(selectedTimeFrameProvider);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomHeaderTitle(title: 'Tableau de bord', showTick: false),
                SizedBox(height: 20.h),
            
                // Time Frame Selector
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TimeFrameButton(
                      isSelected: selectedTimeFrame == 'Semaine',
                      title: 'Semaine',
                      onTap: () =>
                          ref.read(selectedTimeFrameProvider.notifier).state =
                              'Semaine',
                    ),
                    TimeFrameButton(
                      isSelected: selectedTimeFrame == 'Mois',
                      title: 'Mois',
                      onTap: () =>
                          ref.read(selectedTimeFrameProvider.notifier).state =
                              'Mois',
                    ),
                    TimeFrameButton(
                      isSelected: selectedTimeFrame == 'Année',
                      title: 'Année',
                      onTap: () =>
                          ref.read(selectedTimeFrameProvider.notifier).state =
                              'Année',
                    ),
                    TimeFrameButton(
                      isSelected: selectedTimeFrame == 'Définir',
                      title: 'Définir',
                      onTap: () =>
                          ref.read(selectedTimeFrameProvider.notifier).state =
                              'Définir',
                    ),
                  ],
                ),
            
                SizedBox(height: 20.h),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.w,
                    mainAxisSpacing: 10.h,
                    childAspectRatio: 1.5,
                  ),
                  itemBuilder: (context, index) => DeliveryStartCard(),
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    MultiColorProgress(),
                    SizedBox(width: 20.w),
                    Expanded(child: DeliveryTypesList())
                  ],
                ),
                SizedBox(height: 20.h),
            
                Column(
                  children: [
                    SatisfactionScoreCard(title: 'Score de satisfaction',),
                    SizedBox(height: 10.h),
                    SatisfactionScoreCard(title:'Coût total des livraisons',score: '10500 €',showStar: false),
                    SizedBox(height: 10.h),
                    SatisfactionScoreCard(title:'Dépenses',score:'5900 €',showStar: false),
                  ],
                )
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}