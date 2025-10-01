import 'package:abdelrahman875_fo21aef727586/core/constants/icons.dart';
import 'package:abdelrahman875_fo21aef727586/core/routes/route_name.dart';
import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:abdelrahman875_fo21aef727586/features/espaces/widgets/common_cart.dart';
import 'package:abdelrahman875_fo21aef727586/features/widgets/primery_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class EspacesScreen extends StatelessWidget {
  const EspacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryTextColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 34, top: 92, bottom: 33),
              child: Text(
                "Comment allez-vous\nutiliser DeliverApp ?",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 24.h,
                  color: AppColors.whiteTextColor,
                ),
              ),
            ),
            Expanded(
              child: Container(
                // height: 719.h,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(80),
                    topRight: Radius.circular(80),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 54.h),

                    Text(
                      "Je suis",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 24.h,
                        color: AppColors.blackColor,
                      ),
                    ),
                    CommonCart(
                      title: "Client",
                      subTitle: "I am looking for a carrier for my deliveries.",
                      iconPth: AppIcons.verification,
                    ),
                    CommonCart(
                      title: "Transporteur",
                      subTitle: "Je cherche des livraisons à réaliser.",
                      iconPth: AppIcons.camion,
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
                          context.push(RouteName.signInScreen);
                        },
                        title: "S’inscrire",
                        padding: EdgeInsets.all(16),
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
    );
  }
}
