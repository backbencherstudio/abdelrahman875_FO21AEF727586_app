import 'dart:developer';

import 'package:abdelrahman875_fo21aef727586/core/constants/icons.dart';
import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:abdelrahman875_fo21aef727586/features/auth/signin/presentation/widgets/icon_button_container.dart';
import 'package:abdelrahman875_fo21aef727586/features/creer_une_commande_fret/presentaion/widgets/input_label.dart';
import 'package:abdelrahman875_fo21aef727586/features/widgets/primery_button.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/images.dart';
import '../../../../core/routes/route_name.dart';
import '../../../espaces/riverpod/user_select_provider.dart';

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
                  GestureDetector(
                    onTap: (){
                      if (context.canPop()){
                        context.pop();
                      }
                    },
                    child: SvgPicture.asset(
                      AppIcons.arrowBackSvg,
                      height: 24.h,
                      width: 24.w,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Center(
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          AppIcons.carSvg,
                          height: 35.h,
                          width: 75.w,
                        ),
                        Text(
                          "DeliverApp",
                          style: TextStyle(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.blackColor,
                          ),
                        ),
                        SizedBox(height: 25.h),
                        Text(
                          selectedIndex == 0 ? 'S’inscrire' : 'Se connecter',
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
                  if (selectedIndex == 1)  SizedBox(height: 20.h),

                  selectedIndex == 0
                      ? Container()
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            PrimaryButton(
                              title: 'Donneur d’ordre',
                              width: 162.w,
                              containerColor: AppColors.blackColor,
                              textStyle: style.bodyLarge?.copyWith(
                                color: AppColors.whiteColor,
                                fontWeight: FontWeight.w500,
                              ),
                              onTap: () {},
                            ),
                            SizedBox(width: 10.w),
                            PrimaryButton(
                              title: 'Transporteur',
                              width: 162.w,
                              containerColor: AppColors.whiteColor,
                              textStyle: style.bodyLarge?.copyWith(
                                color: AppColors.blackColor,
                                fontWeight: FontWeight.w500,
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                 SizedBox(height: 20.h),
                  // Email Field
                  InputLabel(title: 'Email '),
                  SizedBox(height: 8.h),
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(hintText: 'randome123@gmail.com'),
                    validator: (value){
                      if(EmailValidator.validate(emailController.text) && emailController.text.isNotEmpty){
                        return null;
                      }else{
                        return 'Email non valide';
                      }
                    },
                  ),

                  SizedBox(height: 16.h),

                  InputLabel(title: 'Mot de passe '),
                  SizedBox(height: 8.h),
                  TextFormField(
                    obscureText: _obscurePassword,
                    controller: passwordController,
                    decoration: InputDecoration(
                      hintText: 'aweue!2',
                      suffixIcon: IconButton(
                        onPressed: () {

                        },
                        icon: _obscurePassword ? Icon(
                          Icons.visibility_off_outlined,
                          size: 24.r,
                          color: AppColors.borderColor4,
                        ) : Icon(Icons.remove_red_eye_outlined),
                      ),
                    ),
                    validator: (value){
                      if(value!.length < 6){
                        return 'Mot de passe trop court';
                      }else{
                        return null;
                      }
                    },
                  ),
              if (selectedIndex == 1)
                SizedBox(height: 10.h),

                  // Forgot password
                  selectedIndex == 0
                      ? Container()
                      : Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Mot de passe oublié ?",
                              style: TextStyle(
                                color: AppColors.boxColor,
                                fontSize: 14.sp,
                              ),
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
                    title: selectedIndex == 0 ? 'S’inscrire' : 'Se connecter',
                    onTap: () {
                     if (formKey.currentState!.validate()){
                       log(emailController.text);
                       log(passwordController.text);
                       context.push(RouteName.donneur);
                     }
                    },
                  ),
                  SizedBox(height: 24.h),

                  if(selectedIndex == 0) Row(
                    children: [
                      Checkbox(value: false, onChanged: (value){}),
                      // SizedBox(width: 4.w,),
                      Text('J’accepte les conditions générales d’utilisation',style: style.bodySmall?.copyWith(
                        color: AppColors.grayText7,
                        fontWeight: FontWeight.w400,
                      ),)
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Vous n’avez pas de compte?',
                        style: style.bodyMedium?.copyWith(
                          color: AppColors.boxColor2,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 4.w),
                      GestureDetector(
                        onTap: (){
                          context.push(RouteName.espacesScreen);
                        },
                        child: Text(
                          'Créer un compte',
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
                          "Se connecter avec",
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
                  )

                ],
              )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
