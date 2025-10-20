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
                height: 260.h,
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
                      style: style.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 24.sp,
                        color: AppColors.whiteTextColor,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 280.h,
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
                  child: Column(

                    children: [
                      // SizedBox(height: 54.h),
                      Text(
                        "Je suis",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 24.h,
                          color: AppColors.blackColor,
                        ),
                      ),

                      /// Option 1
                      GestureDetector(
                        onTap: () {
                          ref.read(userSelectProvider.notifier).state = 0;
                        },
                        child: CommonCartStack(
                          title: "Donneur d’ordre",
                          subTitle:
                              "Je cherche un transporteur pour\nmes livraisons.",
                          iconPth: AppIcons.verification,
                          isSelected: selectedIndex == 0,
                        ),
                      ),

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

                      Padding(
                        padding: const EdgeInsets.only(
                          top: 40,
                          left: 17,
                          right: 17,
                          bottom: 30,
                        ),
                        child: PrimaryButton(
                          onTap: () {
                            // final selectedIndex = ref.read(userSelectProvider);
                            // if (selectedIndex == 0) {
                            //   context.push(RouteName.donneur);
                            // } else if (selectedIndex == 1) {
                            //   context.push(RouteName.inscriptionScreen);
                            // } else {
                            //   context.push(RouteName.signInScreen);
                            // }
                            // context.push(RouteName.signInScreen);
                            if(selectedIndex == 0 || selectedIndex == 1){
                              context.push(RouteName.signInScreen);
                            }else {
                              showSelectUserTypeDialog(context);
                            }
                          },
                          title: "S’inscrire",
                          padding: const EdgeInsets.all(16),
                          width: double.infinity,
                          containerColor: AppColors.blackColor,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Déjà un compte ? ",
                              style: Theme.of(context).textTheme.bodySmall!
                                  .copyWith(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.h,
                                    color: AppColors.bodyTextColor,
                                  ),
                            ),
                            TextSpan(
                              text: "Se connecter",
                              style: Theme.of(context).textTheme.bodySmall!
                                  .copyWith(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.h,
                                    color: AppColors.blackColor,
                                  ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  ref.read(alreadyHaveAccountProvider.notifier).state = 1;
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
            ],
          ),
        ),
      ),
    );
  }
}
