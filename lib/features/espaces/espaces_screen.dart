import 'package:abdelrahman875_fo21aef727586/core/utils/utils.dart';
import 'package:abdelrahman875_fo21aef727586/features/espaces/riverpod/already_have_account_provider.dart';
import 'package:abdelrahman875_fo21aef727586/features/espaces/riverpod/user_select_provider.dart';
import 'package:abdelrahman875_fo21aef727586/features/espaces/widgets/common_cart.dart';
import 'package:abdelrahman875_fo21aef727586/features/espaces/widgets/select_type_dialog.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:abdelrahman875_fo21aef727586/core/constants/icons.dart';
import 'package:abdelrahman875_fo21aef727586/core/routes/route_name.dart';
import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:abdelrahman875_fo21aef727586/features/widgets/primery_button.dart';

class EspacesScreen extends ConsumerStatefulWidget {
  const EspacesScreen({super.key});

  @override
  ConsumerState<EspacesScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends ConsumerState<EspacesScreen> {
  @override
  Widget build(BuildContext context) {
    final selectedIndex = ref.watch(userSelectProvider);
    // final haveAccount = ref.watch(alreadyHaveAccountProvider);
    final style = Theme.of(context).textTheme;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              // SizedBox(height: 280.h),
              SizedBox(
                height: Utils.isTablet(context) ? 300.h : 260.h,
                width: double.infinity,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24.r),
                      bottomRight: Radius.circular(24.r),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      'Comment allez-vous\nutiliser DeliverApp ?',
                      style: style.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: AppColors.whiteTextColor,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: Utils.isTablet(context) ? 320.h : 280.h,
                left: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(80),
                      topRight: Radius.circular(80),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Column(
                      children: [
                        // SizedBox(height: 54.h),
                        Text(
                          "Je suis",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headlineSmall!
                              .copyWith(
                                fontWeight: FontWeight.w600,
                                color: AppColors.blackColor,
                              ),
                        ),
                        SizedBox(height: 30.h),

                        /// Option 1
                        GestureDetector(
                          onTap: () {
                            ref.read(userSelectProvider.notifier).state = 0;
                          },
                          child: CommonCartStack(
                            title: "Donneur d’ordre",
                            subTitle: Utils.isTablet(context)
                                ? "Je cherche un transporteur pour mes livraisons."
                                : "Je cherche un transporteur pour\nmes livraisons.",
                            iconPth: AppIcons.verification,
                            isSelected: selectedIndex == 0,
                          ),
                        ),
                        SizedBox(height: 16.h),

                        /// Option 2
                        GestureDetector(
                          onTap: () {
                            ref.read(userSelectProvider.notifier).state = 1;
                          },
                          child: CommonCartStack(
                            title: "Transporteur",
                            subTitle: "Je cherche des livraisons à réaliser.",
                            iconPth: AppIcons.camion,
                            isSelected: selectedIndex == 1,
                          ),
                        ),

                        SizedBox(height: 20.h),
                        PrimaryButton(
                          onTap: () {
                            if (selectedIndex == 0 || selectedIndex == 1) {
                              context.push(RouteName.signUpScreen);
                            } else {
                              showSelectUserTypeDialog(context);
                            }
                          },
                          title: "S’inscrire",
                          padding: EdgeInsets.all(
                            Utils.isTablet(context) ? 20 : 16.h,
                          ),
                          width: double.infinity,
                          containerColor: AppColors.blackColor,
                        ),
                        SizedBox(height: 16.h),

                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Déjà un compte ? ",
                                style: Theme.of(context).textTheme.bodyMedium!
                                    .copyWith(
                                      fontWeight: FontWeight.normal,
                                      color: AppColors.bodyTextColor,
                                    ),
                              ),
                              TextSpan(
                                text: "Se connecter",
                                style: Theme.of(context).textTheme.bodyMedium!
                                    .copyWith(
                                      fontWeight: FontWeight.normal,
                                      color: AppColors.blackColor,
                                    ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    ref
                                            .read(
                                              alreadyHaveAccountProvider
                                                  .notifier,
                                            )
                                            .state =
                                        1;
                                    context.push(RouteName.signInScreen);
                                  },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
