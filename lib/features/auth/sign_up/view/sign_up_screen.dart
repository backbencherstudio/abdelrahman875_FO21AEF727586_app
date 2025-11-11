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
import '../../signin/riverpod/sign_in_provider.dart';


class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({super.key});

  @override
  ConsumerState<SignUpScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends ConsumerState<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final selectedIndex = ref.watch(userSelectProvider);
    // final haveAccount = ref.watch(alreadyHaveAccountProvider);
    final obscureText = ref.watch(obscureTextProvider);
   // final checkBox = ref.watch(checkBoxProvider);
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
                  // SizedBox(height: 20.h),
                  GestureDetector(
                    onTap: () {
                      if (context.canPop()) {
                        ref.read(alreadyHaveAccountProvider.notifier).state = 0;
                        context.pop();
                      }
                    },
                    child: Image.asset(
                      AppIcons.arrowBackPng,
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
                          'S’inscrire',
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

                  SizedBox(height: 20.h),

                  // Sign In Button
                  PrimaryButton(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    containerColor: AppColors.boxColor,
                    title:'S’inscrire',
                    onTap: () {
                      if (selectedIndex == 0) {
                        context.push(RouteName.donneur);
                      } else {
                        context.push(RouteName.inscriptionScreen);
                      }

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
                         'Vous avez déjà compte ?',
                        style: style.bodyMedium?.copyWith(
                          color: AppColors.boxColor2,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 4.w),
                      GestureDetector(
                        onTap: () {
                          // if (haveAccount == 0) {
                          //   // User is on Sign Up screen → go to Sign In
                          //   ref.read(alreadyHaveAccountProvider.notifier).state = 1;
                          // } else {
                          //   // User is on Sign In screen → go to Sign Up
                          //   ref.read(alreadyHaveAccountProvider.notifier).state = 0;
                          // }

                          context.push(RouteName.espacesScreen);
                        },
                        child: Text(
                          ' Se connecter',
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
                           'S’inscrire avec',
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
