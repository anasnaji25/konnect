import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/views/sign_in_view.dart/sign_in_view.dart';
import 'package:konnect/views/sign_up_view/sign_up_view.dart';

class LetsGetStartedView extends StatefulWidget {
  const LetsGetStartedView({super.key});

  @override
  State<LetsGetStartedView> createState() => _LetsGetStartedViewState();
}

class _LetsGetStartedViewState extends State<LetsGetStartedView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [secondaryColor, primaryColor])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Container(
            height: size.height,
            width: size.width,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Image.asset("assets/icons/logoo.png"),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  "Let's Get Started",
                  style: primaryFont.copyWith(
                      fontSize: 41, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Sign Up Now And Enjoy\nSeamiess Payment Experience",
                  textAlign: TextAlign.center,
                  style: primaryFont.copyWith(
                      color: Colors.black45,
                      fontSize: 21,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 70,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 20),
                  child: InkWell(
                    onTap: () {
                      Get.to(() => const SignUpView());
                    },
                    child: Container(
                      height: 40,
                      width: size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                              colors: [secondaryColor, primaryColor])),
                      alignment: Alignment.center,
                      child: Text(
                        "Create Account",
                        style: primaryFont.copyWith(
                            color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 20),
                  child: InkWell(
                    onTap: () {
                      Get.to(() => const SignInView());
                    },
                    child: Container(
                      height: 40,
                      width: size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.black)),
                      alignment: Alignment.center,
                      child: Text(
                        "Sign In",
                        style: primaryFont.copyWith(fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
