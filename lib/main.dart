import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/views/lading_view/lading_view.dart';
import 'package:konnect/views/splash_view/splash_screen_view.dart';

void main() {
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
      // home: SplashView(),
      home: LandingView(),
    );
  }
}
