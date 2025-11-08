import 'dart:developer';

import 'package:abdelrahman875_fo21aef727586/core/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../core/constants/icons.dart';
import '../../../../core/theme/src/theme_extension/color_pallete.dart';
import '../../../../core/utils/utils.dart';
import '../../../widgets/primery_button.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _otpTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    if (context.canPop()) {
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
                        'Vérification',
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

                Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    "Nous vous avons envoyé un code à\nrandom3321@gmail.com",
                    style: style.bodyMedium?.copyWith(
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 20.h),

                PinCodeTextField(
                  appContext: context,
                  controller: _otpTEController,
                  length: 6,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  animationType: AnimationType.slide,
                  backgroundColor: AppColors.whiteColor,
                  enableActiveFill: true,
                  showCursor: false,
                  validator: (value) {
                    if (value == null || value.length < 6) {
                      return 'Veuillez entrer un code à 6 chiffres';
                    }
                    return null;
                  },
                  pinTheme: PinTheme(
                    activeColor: AppColors.greenText,
                    selectedFillColor: AppColors.whiteColor,

                    inactiveColor: AppColors.grayText,
                    inactiveFillColor: Colors.white,
                    errorBorderColor: Colors.red,
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: AppColors.whiteColor,
                  ),
                  animationDuration: const Duration(milliseconds: 300),
                  onCompleted: (v) {
                    if (_formKey.currentState!.validate()) {
                      debugPrint("OTP: $v");
                    }
                  },
                ),
                SizedBox(height: 20.h),

                PrimaryButton(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  containerColor: AppColors.boxColor,
                  title: 'Vérifier',
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      log(_otpTEController.text);
                      context.push(RouteName.newPasswordScreen);
                    }
                  },
                ),
                SizedBox(height: 20.h),

                Center(
                  child: Column(
                    children: [
                      Text('Vous n’avez rien reçu ?',style: style.bodyMedium?.copyWith(
                        color: AppColors.boxColor2,
                        fontWeight: FontWeight.w400,
                      ),),
                      GestureDetector(
                        onTap: (){},
                        child: Text('Renvoyer le code',style: style.bodyMedium?.copyWith(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w400,
                        ),),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
