import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:konnect/controllers/auth_controller.dart';
import 'package:konnect/controllers/language_controller.dart';
import 'package:konnect/controllers/transaction_controller.dart';
import 'package:konnect/views/splash_view/splash_gif_screen.dart';

void main() {
  Get.put(TransactionController());
  Get.put(AuthController());
  Get.put(LanguageController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(392, 850),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            title: 'Konnect',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const SplashGifView(),
          );
        });
  }
}
