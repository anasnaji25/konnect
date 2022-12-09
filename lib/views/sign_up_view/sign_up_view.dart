import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/views/lading_view/lets_get_started_screen.dart';
import 'package:konnect/views/sign_up_view/loading_online_offline_view.dart';
import 'package:konnect/widgets/sign_up_widgets/choose_pan_card_bottom_sheet.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool isAgreed = true;
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 30),
                            child: Container(
                              height: 45,
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
                                        Container(
                                          width: 200,
                                          child: const TextField(
                                            keyboardType: TextInputType.number,
                                            decoration:
                                                InputDecoration.collapsed(
                                                    hintText: "Name as per ID"),
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
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 30),
                            child: Container(
                              height: 45,
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
                                        Container(
                                          width: 200,
                                          child: const TextField(
                                            keyboardType: TextInputType.number,
                                            decoration:
                                                InputDecoration.collapsed(
                                                    hintText:
                                                        "Enter Mobile Number"),
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
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 30),
                            child: Container(
                              height: 45,
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
                                        Container(
                                          width: 200,
                                          child: const TextField(
                                            keyboardType: TextInputType.number,
                                            decoration:
                                                InputDecoration.collapsed(
                                                    hintText: "Email ID"),
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
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 30),
                            child: Container(
                              height: 45,
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
                                        Container(
                                          width: 250,
                                          child: const TextField(
                                            keyboardType: TextInputType.number,
                                            decoration:
                                                InputDecoration.collapsed(
                                                    hintText: "Aadhar No"),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Icon(
                                      Icons.cloud_upload,
                                      color: Colors.grey,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                RichText(
                                    text: TextSpan(
                                        text: "",
                                        style: primaryFont.copyWith(
                                            fontSize: 10, color: Colors.black),
                                        children: [
                                      TextSpan(
                                          text: "Aadhar verification",
                                          style: primaryFont.copyWith(
                                              fontSize: 10,
                                              color: Colors.green),
                                          onEnter: (val) {
                                            print(val);
                                          })
                                    ])),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 30),
                            child: InkWell(
                              onTap: () {
                                choosePanCardType(size, context);
                              },
                              child: Container(
                                height: 45,
                                width: size.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(color: Colors.black)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 250,
                                            child: TextField(
                                              readOnly: true,
                                              onTap: () {
                                                choosePanCardType(
                                                    size, context);
                                              },
                                              keyboardType:
                                                  TextInputType.number,
                                              decoration: InputDecoration.collapsed(
                                                  hintText:
                                                      "PAN card classification"),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Colors.grey,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 30),
                            child: Container(
                              height: 45,
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
                                        Container(
                                          width: 250,
                                          child: const TextField(
                                            keyboardType: TextInputType.number,
                                            decoration:
                                                InputDecoration.collapsed(
                                                    hintText: "Store Name"),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 30),
                            child: Container(
                              height: 45,
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
                                        Container(
                                          width: 250,
                                          child: const TextField(
                                            keyboardType: TextInputType.number,
                                            decoration:
                                                InputDecoration.collapsed(
                                                    hintText: "Address"),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 30),
                            child: Container(
                              height: 45,
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
                                        Container(
                                          width: 250,
                                          child: const TextField(
                                            keyboardType: TextInputType.number,
                                            decoration:
                                                InputDecoration.collapsed(
                                                    hintText: "GST Details"),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Icon(
                                      Icons.cloud_upload,
                                      color: Colors.grey,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 20),
                            child: InkWell(
                              onTap: () {
                                // Get.to(() => OtpVerifySignUpView());
                                _showMyOTPDialoge(size);
                              },
                              child: Container(
                                height: 40,
                                width: size.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    gradient: LinearGradient(colors: [
                                      secondaryColor,
                                      primaryColor
                                    ])),
                                alignment: Alignment.center,
                                child: Text(
                                  "Sign up".toUpperCase(),
                                  style: primaryFont.copyWith(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                  text: "Have an Account Already? ",
                                  style: primaryFont.copyWith(
                                      fontSize: 10, color: Colors.black),
                                  children: [
                                    TextSpan(
                                        text: "Login",
                                        style: primaryFont.copyWith(
                                            fontSize: 10, color: Colors.blue),
                                        onEnter: (val) {
                                          print(val);
                                        }),
                                  ])),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 15,
                                width: 15,
                                child: Checkbox(
                                    value: isAgreed,
                                    onChanged: (val) {
                                      setState(() {
                                        isAgreed = val!;
                                      });
                                    }),
                              ),
                              const SizedBox(
                                width: 10,
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
                                                fontSize: 12,
                                                color: Colors.blue),
                                            onEnter: (val) {
                                              print(val);
                                            }),
                                        TextSpan(
                                          text: "use and",
                                          style: primaryFont.copyWith(
                                              fontSize: 12,
                                              color: Colors.black),
                                        ),
                                        TextSpan(
                                          text: "\nprivacy policy",
                                          style: primaryFont.copyWith(
                                              fontSize: 12, color: Colors.blue),
                                        )
                                      ])),
                            ],
                          ),
                        ],
                      ),
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

  Future<void> _showMyOTPDialoge(var size) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Container(
          height: 300,
          child: AlertDialog(
            scrollable: true,
            contentPadding: const EdgeInsets.all(12),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "OTP Verification",
                        style: primaryFont.copyWith(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: "Enter OTP sent to 9876543210",
                              style: primaryFont.copyWith(
                                  fontSize: 13, color: Colors.black87),
                              children: [
                            TextSpan(
                              text: " Change",
                              style: primaryFont.copyWith(
                                  fontSize: 13, color: Colors.blue),
                            )
                          ])),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
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
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      onTap: () {
                        Get.to(() => const LoadingOnlineOfflineView());
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
                          "Done",
                          style: primaryFont.copyWith(
                              color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
