import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/views/lading_view/lets_get_started_screen.dart';
import 'package:konnect/views/sign_in_view.dart/otp_verification_view.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [secondaryColor, primaryColor],
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Container(
            height: size.height,
            width: size.width,
            color: const Color(0xff5533DE0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                child: const Icon(
                                  Icons.arrow_back_ios_outlined,
                                  color: Colors.white,
                                  size: 26,
                                ),
                              ),
                            ),
                            Image.asset(
                              "assets/icons/Group 6.png",
                              fit: BoxFit.cover,
                              width: size.width * 0.6,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Text(
                                "Sign In",
                                style: primaryFont.copyWith(
                                    color: Colors.white,
                                    fontSize: 23,
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Welcome Back",
                          style: primaryFont.copyWith(
                              fontSize: 24, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Login to username register email id\nand mobile number to login.",
                          textAlign: TextAlign.center,
                          style: primaryFont.copyWith(
                              fontSize: 16, color: Colors.black87),
                        ),
                        const SizedBox(
                          height: 120,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: Container(
                            height: 50,
                            width: size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Colors.black)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.public,
                                        color: Colors.black54,
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        "India +91",
                                        style: primaryFont.copyWith(
                                            color: Colors.black54),
                                      )
                                    ],
                                  ),
                                  Icon(Icons.keyboard_arrow_down_rounded)
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: Container(
                            height: 50,
                            width: size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Colors.black)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.phone_android,
                                        color: Colors.black54,
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Container(
                                        width: 200,
                                        child: const TextField(
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration.collapsed(
                                              hintText: "Enter Mobile Number"),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Row(
                            children: [
                              RichText(
                                  text: TextSpan(
                                      text: "Don\'t have an account? ",
                                      style: primaryFont.copyWith(
                                          fontSize: 10, color: Colors.black),
                                      children: [
                                    TextSpan(
                                        text: "Sign Up",
                                        style: primaryFont.copyWith(
                                            fontSize: 10, color: Colors.green),
                                        onEnter: (val) {
                                          print(val);
                                        })
                                  ])),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30, right: 20),
                          child: InkWell(
                            onTap: () {
                              Get.to(() => const OtpVerifyView());
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
                                "Next",
                                style: primaryFont.copyWith(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 0.5,
                                color: Colors.grey.withOpacity(0.5),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 2, right: 2),
                              child: Text(
                                "Or",
                                style: primaryFont.copyWith(
                                    color: Colors.grey, fontSize: 14),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 0.5,
                                color: Colors.grey.withOpacity(0.5),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30, right: 20),
                          child: InkWell(
                            onTap: () {
                              // Get.off(() => const SignInView());
                            },
                            child: Container(
                              height: 40,
                              width: size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(color: Colors.black)),
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/icons/google-icon.png",
                                    height: 20,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Login With Google",
                                    style: primaryFont.copyWith(fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                text: "By continuing you agree to our ",
                                style: primaryFont.copyWith(
                                    fontSize: 12, color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: "terms of ",
                                      style: primaryFont.copyWith(
                                          fontSize: 12, color: Colors.blue),
                                      onEnter: (val) {
                                        print(val);
                                      }),
                                  TextSpan(
                                    text: "use and",
                                    style: primaryFont.copyWith(
                                        fontSize: 12, color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: "\nprivacy policy",
                                    style: primaryFont.copyWith(
                                        fontSize: 12, color: Colors.blue),
                                  )
                                ])),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
