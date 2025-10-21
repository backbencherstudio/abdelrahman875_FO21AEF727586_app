import 'package:abdelrahman875_fo21aef727586/bootstrap.dart';
import 'package:abdelrahman875_fo21aef727586/core/routes/route_config.dart';
import 'package:abdelrahman875_fo21aef727586/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async{
  bootstrap();
   runApp(ProviderScope(child:  MyApp()));
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ),
  );// Wrap the app with ProviderScope
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return ScreenUtilInit(
      designSize: width >600?Size(800,1280) : Size( 390, 840),
      minTextAdapt: true,
      ensureScreenSize: true,
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Posse',
          debugShowCheckedModeBanner: false,
         theme: AppTheme.lightTheme(context),
          //darkTheme: AppTheme.darkTheme,
          routerConfig: RouteConfig.goRouter,
        );
      },
    );
  }
}
