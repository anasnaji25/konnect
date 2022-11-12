import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/controllers/transaction_controller.dart';
import 'package:konnect/views/splash_view/splash_screen_view.dart';

void main() {
  Get.put(TransactionController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Konnect',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashView(),
      // home: LandingView(),
    );
  }
}
