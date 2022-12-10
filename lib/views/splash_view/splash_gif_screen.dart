import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/views/lading_view/lading_view.dart';
import 'package:konnect/views/lading_view/lets_get_started_screen.dart';

class SplashGifView extends StatefulWidget {
  const SplashGifView({super.key});

  @override
  State<SplashGifView> createState() => _SplashGifViewState();
}

class _SplashGifViewState extends State<SplashGifView> {
  @override
  void initState() {
    super.initState();
    redirectToNextScreen();
  }

  redirectToNextScreen() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offAll(() => const LetsGetStartedView(),duration:const Duration(seconds: 1),curve: Curves.easeInSine,transition: Transition.size);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset("assets/images/Konnect app gif.gif"),
      ),
    );
  }
}
