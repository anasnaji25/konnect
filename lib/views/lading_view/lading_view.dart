import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/views/lading_view/lets_get_started_screen.dart';

class LandingView extends StatefulWidget {
  const LandingView({super.key});

  @override
  State<LandingView> createState() => _LandingViewState();
}

class _LandingViewState extends State<LandingView> {
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
                Image.asset("assets/icons/Group 1352.png"),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  "Easy to register",
                  style: primaryFont.copyWith(
                      fontSize: 41, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Just enter your details and\nyou are ready to take off.",
                  textAlign: TextAlign.center,
                  style: primaryFont.copyWith(
                      color: Colors.black45,
                      fontSize: 21,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.black)),
                        alignment: Alignment.center,
                        child: Text(
                          "Skip",
                          style: primaryFont.copyWith(fontSize: 15),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.off(() => LetsGetStartedView());
                      },
                      child: Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: LinearGradient(
                                colors: [secondaryColor, primaryColor])),
                        alignment: Alignment.center,
                        child: Text(
                          "Next",
                          style: primaryFont.copyWith(
                              color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
