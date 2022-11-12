import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/views/lading_view/lets_get_started_screen.dart';
import 'package:konnect/views/sign_up_view/loading_screen_view.dart';

class OtpVerifyView extends StatefulWidget {
  const OtpVerifyView({super.key});

  @override
  State<OtpVerifyView> createState() => _OtpVerifyViewState();
}

class _OtpVerifyViewState extends State<OtpVerifyView> {
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
                                "OTP",
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
                          "OTP Verification",
                          style: primaryFont.copyWith(
                              fontSize: 24, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        RichText(
                            text: TextSpan(
                                text: "Enter OTP sent to 9876543210",
                                style: primaryFont.copyWith(
                                    fontSize: 16, color: Colors.black87),
                                children: [
                              TextSpan(
                                text: "Change",
                                style: primaryFont.copyWith(
                                    fontSize: 16, color: Colors.blue),
                              )
                            ])),
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
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        width: 200,
                                        child: const TextField(
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration.collapsed(
                                              hintText: "Enter Otp"),
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
                                      text: "Did not receive OTP yet? ",
                                      style: primaryFont.copyWith(
                                          fontSize: 12, color: Colors.black),
                                      children: [
                                    TextSpan(
                                        text: "Resend",
                                        style: primaryFont.copyWith(
                                            fontSize: 12, color: Colors.blue),
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
                              Get.to(()=> const LoadingView());
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
                                "LOGIN",
                                style: primaryFont.copyWith(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                                text: TextSpan(
                                    text: "Don't have an account? ",
                                    style: primaryFont.copyWith(
                                        fontSize: 11, color: Colors.black),
                                    children: [
                                  TextSpan(
                                      text: "Sign Up",
                                      style: primaryFont.copyWith(
                                          fontSize: 11, color: Colors.blue),
                                      onEnter: (val) {
                                        print(val);
                                      })
                                ])),
                          ],
                        ),
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
