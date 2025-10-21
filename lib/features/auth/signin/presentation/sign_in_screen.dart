import 'dart:developer';

import 'package:abdelrahman875_fo21aef727586/core/constants/icons.dart';
import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:abdelrahman875_fo21aef727586/features/auth/signin/presentation/widgets/icon_button_container.dart';
import 'package:abdelrahman875_fo21aef727586/features/creer_une_commande_fret/presentaion/widgets/input_label.dart';
import 'package:abdelrahman875_fo21aef727586/features/espaces/riverpod/already_have_account_provider.dart';
import 'package:abdelrahman875_fo21aef727586/features/widgets/primery_button.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/images.dart';
import '../../../../core/routes/route_name.dart';
import '../../../../core/utils/utils.dart';
import '../../../espaces/riverpod/user_select_provider.dart';
import '../riverpod/sign_in_provider.dart';

class SignInScreen extends ConsumerStatefulWidget {
  const SignInScreen({super.key});

  @override
  ConsumerState<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends ConsumerState<SignInScreen> {
  bool _obscurePassword = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final selectedIndex = ref.watch(userSelectProvider);
    final haveAccount = ref.watch(alreadyHaveAccountProvider);
    final obscureText = ref.watch(obscureTextProvider);
    final checkBox = ref.watch(checkBoxProvider);
    final style = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.h),
                  GestureDetector(
                    onTap: () {
                      if (context.canPop()) {
                        ref.read(alreadyHaveAccountProvider.notifier).state = 0;
                        context.pop();
                      }
                    },
                    child: SvgPicture.asset(
                      AppIcons.arrowBackSvg,
                      height: Utils.isTablet(context) ? 30.h : 24.h,
                      width: Utils.isTablet(context) ? 30.w : 24.w,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Center(
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          AppIcons.carSvg,
                          height: Utils.isTablet(context) ? 45.h : 35.h,
                          width: Utils.isTablet(context) ? 85.h : 75.w,
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          "DeliverApp",
                          style: style.headlineLarge?.copyWith(
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          haveAccount == 0 ? 'S’inscrire' : 'Se connecter',
                          style: style.headlineSmall?.copyWith(
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Divider(thickness: 1, color: AppColors.borderColor6),
                  if (haveAccount == 1) SizedBox(height: 20.h),

                  haveAccount == 0
                      ? Container()
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: PrimaryButton(
                                title: 'Donneur d’ordre',
                                // width: 162.w,
                                containerColor: AppColors.blackColor,
                                padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 8.h),
                                textStyle: style.bodyLarge?.copyWith(
                                  color: AppColors.whiteColor,
                                  fontWeight: FontWeight.w500,
                                ),
                                onTap: () {},
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Expanded(
                              child: PrimaryButton(
                                title: 'Transporteur',
                                // width: 162.w,
                                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                                containerColor: AppColors.whiteColor,
                                textStyle: style.bodyLarge?.copyWith(
                                  color: AppColors.blackColor,
                                  fontWeight: FontWeight.w500,
                                ),
                                onTap: () {},
                              ),
                            ),
                          ],
                        ),
                  SizedBox(height: 20.h),
                  // Email Field
                  InputLabel(title: 'Email '),
                  SizedBox(height: 8.h),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: 'randome123@gmail.com',
                    ),
                    validator: (value) {
                      if (EmailValidator.validate(emailController.text) &&
                          emailController.text.isNotEmpty) {
                        return null;
                      } else {
                        return 'Adresse e-mail incorrect';
                      }
                    },
                  ),

                  SizedBox(height: 16.h),

                  InputLabel(title: 'Mot de passe'),
                  SizedBox(height: 8.h),
                  TextFormField(
                    obscureText: obscureText,
                    controller: passwordController,
                    decoration: InputDecoration(
                      hintText: 'aweue!2',
                      suffixIcon: IconButton(
                        onPressed: () {
                          ref.read(obscureTextProvider.notifier).state =
                          !ref.read(obscureTextProvider);
                        },
                        icon: Icon(
                          obscureText ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                          size: Utils.isTablet(context) ? 34.h : 24.h,
                          color: AppColors.grayText,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isNotEmpty && value.length >= 8) {
                        return null;
                      } else {
                        return 'Mot de passe incorrect';
                      }
                    },
                  ),

                  if (haveAccount == 1) SizedBox(height: 10.h),

                  // Forgot password
                  haveAccount == 0
                      ? Container()
                      : Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Mot de passe oublié ?",
                              style: style.bodyMedium?.copyWith(
                                color: AppColors.boxColor,
                                fontWeight: FontWeight.w500,
                              )

                              // TextStyle(
                              //   color: AppColors.boxColor,
                              //   fontSize: 14.sp,
                              // ),
                            ),
                          ),
                        ),
                  // if (selectedIndex == 0)
                  SizedBox(height: 20.h),

                  // Sign In Button
                  PrimaryButton(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    containerColor: AppColors.boxColor,
                    title: haveAccount == 0 ? 'S’inscrire' : 'Se connecter',
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        log(emailController.text);
                        log(passwordController.text);
                        if (selectedIndex == 0) {
                          context.push(RouteName.donneur);
                        } else {
                          context.push(RouteName.inscriptionScreen);
                        }
                      }
                    },
                  ),
                  SizedBox(height: 24.h),

                  if (haveAccount == 0)
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                          value: ref.watch(checkBoxProvider),
                          onChanged: (value) {
                            ref.read(checkBoxProvider.notifier).state = value ?? false;
                          },
                        ),
                        // SizedBox(width: 4.w,),
                        Text(
                          'J’accepte les conditions générales d’utilisation',
                          style: style.bodySmall?.copyWith(
                            color: AppColors.grayText7,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        haveAccount == 0
                            ? 'Vous avez déjà compte ?'
                            : 'Vous n’avez pas de compte?',
                        style: style.bodyMedium?.copyWith(
                          color: AppColors.boxColor2,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 4.w),
                      GestureDetector(
                        onTap: () {
                          ref.read(alreadyHaveAccountProvider.notifier).state =
                              0;
                          context.push(RouteName.espacesScreen);
                        },
                        child: Text(
                          haveAccount == 0
                              ? ' Se connecter'
                              : 'Créer un compte',
                          style: style.bodyMedium?.copyWith(
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 24.h),

                  Row(
                    children: [
                      Expanded(
                        child: Divider(thickness: 1, color: Colors.grey[300]),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        child: Text(
                          haveAccount == 0
                              ? 'S’inscrire avec'
                              : "Se connecter avec",
                          style: style.bodyMedium?.copyWith(
                            color: AppColors.textColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(thickness: 1, color: Colors.grey[300]),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButtonContainer(
                        iconPath: AppImages.googlePng,
                        label: 'Google',
                        onTap: () {
                          // Your tap logic here
                        },
                      ),
                      SizedBox(width: 10.w),
                      IconButtonContainer(
                        iconPath: AppImages.appleLogo,
                        label: 'Apple',
                        onTap: () {
                          // Your tap logic here
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
