import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/views/lading_view/lets_get_started_screen.dart';
import 'package:konnect/views/sign_up_view/otp_verification_sign_up.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
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
                        
                        Stack(
                          children: [
                              Image.asset(
                              "assets/icons/Group 6.png",
                              fit: BoxFit.cover,
                              width: size.width * 0.65,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: Text(
                                      "Create Account",
                                      style: primaryFont.copyWith(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )
                                ],
                              ),
                            ),
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
                          "Welcome :)",
                          style: primaryFont.copyWith(
                              fontSize: 24, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Create a new account your number and\nemail will be used id communication with Log in.",
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
                                        child: TextField(
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
                                      text: "Already have an account? ",
                                      style: primaryFont.copyWith(
                                          fontSize: 10, color: Colors.black),
                                      children: [
                                    TextSpan(
                                        text: "Login",
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
                            onTap: (){
                              Get.to(()=> OtpVerifySignUpView());
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
                              // Get.off(() => const SignUpView());
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
