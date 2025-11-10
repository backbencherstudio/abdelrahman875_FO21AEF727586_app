import 'dart:developer';
import 'package:abdelrahman875_fo21aef727586/core/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/icons.dart';
import '../../../../core/theme/src/theme_extension/color_pallete.dart';
import '../../../../core/utils/utils.dart';
import '../../../widgets/primery_button.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  final TextEditingController _newPasswordTEController =
      TextEditingController();
  final TextEditingController _confirmPasswordTEController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    _newPasswordTEController.dispose();
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
                        'Créer un nouveau mot de passe',
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
                  "Entrez un nouveau mot de passe et essayez de ne pas l'oublier.",
                  style: style.bodyMedium?.copyWith(
                    color: AppColors.boxColor2,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 20.h),

                TextFormField(
                  controller: _newPasswordTEController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  obscureText: true,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(hintText: 'Nouveau mot de passe'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez entrer un mot de passe';
                    } else if (value.length < 6) {
                      return 'Le mot de passe doit contenir au moins 6 caractères';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 8.h),
                TextFormField(
                  controller: _confirmPasswordTEController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  obscureText: true,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    hintText: 'Entrez à nouveau le nouveau mot de passe',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez confirmer le mot de passe';
                    } else if (value != _newPasswordTEController.text) {
                      return 'Les mots de passe ne correspondent pas';
                    }
                    return null;
                  },
                ),

                SizedBox(height: 20.h),

                PrimaryButton(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  containerColor: AppColors.boxColor,
                  title: 'Confirmer',
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      log(_newPasswordTEController.text);
                      log(_confirmPasswordTEController.text);
                      context.push(RouteName.verifyOtpScreen);
                    }
                  },
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
