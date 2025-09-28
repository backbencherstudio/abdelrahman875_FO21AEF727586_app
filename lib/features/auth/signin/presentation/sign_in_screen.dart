import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:abdelrahman875_fo21aef727586/features/creer_une_commande_fret/presentaion/widgets/input_label.dart';
import 'package:abdelrahman875_fo21aef727586/features/widgets/primery_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/images.dart';
import '../../../../core/routes/route_name.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40.h),
                Center(
                  child: Text(
                    "Se connecter",
                    style: TextStyle(
                      fontSize: 32.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
                SizedBox(height: 60.h),

                // Email Field
                InputLabel(title: 'Email '),
                SizedBox(height: 8.h),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.whiteColor,
                    hintText: 'randome123@gmail.com',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.borderColor4),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.borderColor4),
                    ),
                  ),
                ),

                SizedBox(height: 16.h),

                InputLabel(title: 'Mot de passe '),
                SizedBox(height: 8.h),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.whiteColor,
                    hintText: 'aweue!2',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.borderColor4),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.borderColor4),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.remove_red_eye_outlined,
                        size: 24.r,
                        color: AppColors.borderColor4,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16.h),

                // Forgot password
                Align(
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
                SizedBox(height: 24.h),

                // Sign In Button
                PrimaryButton(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    containerColor: AppColors.blackColor,
                    title: 'Se connecter', onTap: () {
                      context.push(RouteName.donneur);
                }),
                SizedBox(height: 24.h),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Vous n’avez pas de compte?',style: style.bodyMedium?.copyWith(
                      color: AppColors.boxColor2,
                      fontWeight: FontWeight.w400
                    ),),
                    SizedBox(width: 4.w),
                    Text('Créer un compte',style: style.bodyMedium?.copyWith(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w600
                    )),
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
                        style:style.bodyMedium?.copyWith(
                          color: AppColors.textColor,
                          fontWeight: FontWeight.w400
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _socialButtonWithImage(
                      imagePath: AppImages.googleLogo,
                      onTap: () {
                        print("Google Sign-In");
                      },
                    ),
                    SizedBox(width: 14.w), // spacing between buttons
                    _socialButtonWithImage(
                      imagePath: AppImages.apleLogo,
                      onTap: () {
                        print("Apple Sign-In");
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _socialButtonWithImage({
    required String imagePath,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56.h,
        width: 150.w,

        margin: EdgeInsets.symmetric(horizontal: 6.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),

          border: Border.all(color: Colors.grey.shade300),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(8.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imagePath, height: 20.h, fit: BoxFit.contain),
            ],
          ),
        ),
      ),
    );
  }
}
