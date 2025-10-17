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

  static const double deviceWidth = 390.0;
  static const double deviceHeight = 840.0;

  /// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(deviceWidth, deviceHeight),
      minTextAdapt: true,
      ensureScreenSize: true,
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Posse',
          debugShowCheckedModeBanner: false,
         theme: AppTheme.lightTheme,
          //darkTheme: AppTheme.darkTheme,
          routerConfig: RouteConfig().goRouter,
        );
      },
    );
  }
}
