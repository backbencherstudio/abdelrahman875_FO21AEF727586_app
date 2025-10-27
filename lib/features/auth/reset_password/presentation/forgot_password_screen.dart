import 'dart:developer';

import 'package:abdelrahman875_fo21aef727586/core/routes/route_name.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/icons.dart';
import '../../../../core/theme/src/theme_extension/color_pallete.dart';
import '../../../../core/utils/utils.dart';
import '../../../creer_une_commande_fret/presentaion/widgets/input_label.dart';
import '../../../widgets/primery_button.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();


  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(height: 20.h),
                GestureDetector(
                  onTap: () {
                    if (context.canPop()) {
                      // ref.read(alreadyHaveAccountProvider.notifier).state = 0;
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
                        'Réinitialiser le mot de passe',
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

                Text(
                  "Entrez l’e-mail associé à votre compte et nous vous enverrons un e-mail avec des instructions pour réinitialiser votre mot de passe.",style: style.bodyMedium?.copyWith(
                  color: AppColors.boxColor2,
                  fontWeight: FontWeight.w400
                ),),
                SizedBox(height: 20.h),

                InputLabel(title: 'Email '),
                SizedBox(height: 8.h),
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: 'randome123@gmail.com',
                  ),
                  validator: (value) {
                    if (EmailValidator.validate(_emailController.text) &&
                        _emailController.text.isNotEmpty) {
                      return null;
                    } else {
                      return 'Adresse e-mail incorrect';
                    }
                  },
                ),

                SizedBox(height: 20.h),

                PrimaryButton(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  containerColor: AppColors.boxColor,
                  title: 'Envoyer',
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      log(_emailController.text);
                      context.push(RouteName.verifyOtpScreen);
                    }
                  },
                ),
                SizedBox(height: 20.h),

                Align(
                  alignment: Alignment.topRight,
                  child: Text('Vous connaissez votre mot de passe ?',style: style.bodyMedium?.copyWith(
                    color: AppColors.boxColor2,
                    fontWeight: FontWeight.w400
                  ),),
                ),

                SizedBox(height: 8.h),

                Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () {
                      context.pop();
                    },
                    child: Text('Se connecter',style: style.bodyMedium?.copyWith(
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w400
                    ),),
                  ),
                ),

                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
