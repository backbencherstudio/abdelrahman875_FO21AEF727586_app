import 'package:abdelrahman875_fo21aef727586/core/constants/images_constants.dart';
import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
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
                Text(
                  "Email",
                  style: TextStyle(fontSize: 16.sp, color: Colors.black87),
                ),
                SizedBox(height: 8.h),

                Container(
                  width: 335.w,
                  height: 56.h,
                  decoration: BoxDecoration(
                    color: Colors.white, // Same as social button
                    borderRadius: BorderRadius.circular(12.r), // Same rounded corners
                    border: Border.all(color: Colors.grey.shade300),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 6,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: TextField(
                    style: TextStyle(fontSize: 14.sp),
                    decoration: InputDecoration(
                      hintText: "randome123@gmail.com",
                      hintStyle: TextStyle(fontSize: 18.sp),
                      filled: true,
                      fillColor: Colors.white, // Same as button
                      contentPadding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 12.w),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(color: Colors.grey.shade400, width: 1.2),
                      ),
                    ),
                  )

                ),

                SizedBox(height: 16.h),

                // Password Field
                Text(
                  "Mot de passe",
                  style: TextStyle(fontSize: 16.sp, color: Colors.black87),
                ),
                SizedBox(height: 8.h),
                SizedBox(
                  width: 335.w, // Fixed width
                  height: 56.h, // Fixed height
                  child: TextField(
                    obscureText: _obscurePassword,
                    style: TextStyle(fontSize: 16.sp),
                    decoration: InputDecoration(
                      hintText: "aweue!2",
                      hintStyle: TextStyle(fontSize: 16.sp),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 12.w),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscurePassword ? Icons.visibility_off : Icons.visibility,
                          color: Colors.grey,
                          size: 22.sp,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(color: Colors.grey.shade400, width: 1.2),
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
                        color: AppColor.boxColor,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 24.h),

                // Sign In Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.boxColor,
                      padding: EdgeInsets.symmetric(vertical: 14.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    child: Text(
                      "Se connecter",
                      style: TextStyle(color: Colors.white, fontSize: 16.sp),
                    ),
                  ),
                ),
                SizedBox(height: 24.h),


                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Vous n'avez pas de compte ? ",
                      style: TextStyle(
                        fontSize: 15.5.sp,
                        color: const Color(0xFF7A848C),
                      ),
                    ),

                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Créer Un Compte",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp,
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
                        style: TextStyle(fontSize:16.sp),
                      ),
                    ),
                    Expanded(
                      child: Divider(thickness: 1, color: Colors.grey[300]),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                // Inside your Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _socialButtonWithImage(
                      imagePath: ImagesConstants.googleLogo,
                      onTap: () {
                        print("Google Sign-In");
                      },
                    ),
                    SizedBox(width: 14.w), // spacing between buttons
                    _socialButtonWithImage(
                      imagePath: ImagesConstants.apleLogo,
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
