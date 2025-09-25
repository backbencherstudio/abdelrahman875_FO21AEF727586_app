import 'package:abdelrahman875_fo21aef727586/core/constants/images_constants.dart';
import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:abdelrahman875_fo21aef727586/features/onboading/riverpod/onboad_riverpod.dart';
import 'package:abdelrahman875_fo21aef727586/features/onboading/onboad_screen/widgets/onboading_conent.dart';
import 'package:abdelrahman875_fo21aef727586/features/widgets/common_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  late final PageController _pageController;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final headlineSmall = Theme.of(context).textTheme.headlineSmall;
    // final titleSmall = Theme.of(context).textTheme.titleSmall;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                onPageChanged: (index) {
                  ref.read(onboadingProvider.notifier).indexChange(index);
                },
                itemCount: ref
                    .read(onboadingProvider.notifier)
                    .onboadDataList
                    .length,
                controller: _pageController,
                itemBuilder: (context, index) {
                  final item = ref
                      .read(onboadingProvider.notifier)
                      .onboadDataList;
                  return onboardContent(
                    title: item[index].title,
                    subTitle: item[index].subTitle,
                    imgUrl: item[index].img,
                    pageController: _pageController,
                  );
                },
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 6.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) {
                    bool isSelected = index ==ref
                      .read(onboadingProvider.notifier).index;

                    return AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      margin: EdgeInsets.symmetric(horizontal: 4.w),
                      width: isSelected ? 24.w : 12.w,
                      height: 4.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: isSelected
                            ? AppColor.secondaryColor
                            : AppColor.primaryColor,
                        //shape: BoxShape.circle,
                      ),
                    );
                  }),
                ),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
