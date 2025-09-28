import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await ScreenUtil.ensureScreenSize();
  // setPathUrlStrategy();
  // Stripe.publishableKey = StripeKey().stripePublicKey;
  // Initialize Hive and register adapter
  // await Hive.initFlutter();
  // Hive.registerAdapter(UserAdapter());
  // await SharedPreferencesAsync;
  // await HiveService.init();
  // await Firebase.initializeApp();
  // any other init
}
