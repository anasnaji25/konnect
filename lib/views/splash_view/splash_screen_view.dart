import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/views/lading_view/lading_view.dart';
import 'package:konnect/views/lading_view/lets_get_started_screen.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
     redirectToNextScreen() ;
  }

  redirectToNextScreen() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offAll(() => LetsGetStartedView());
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [secondaryColor, primaryColor])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/icons/splash_effect2.png"),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  child: Image.asset("assets/icons/logo (2).png"),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Konnect",
                  style: TextStyle(
                      fontFamily: "Copperplate Gothic",
                      color: Colors.white,
                      fontSize: 46,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  "For Business",
                  style: TextStyle(
                      fontFamily: "Copperplate Gothic",
                      color: Colors.white,
                      fontSize: 46,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Image.asset("assets/icons/splash_effect1.png"),
          ],
        ),
      ),
    );
  }
}
