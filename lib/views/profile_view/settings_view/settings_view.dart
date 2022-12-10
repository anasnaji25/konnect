import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:konnect/controllers/language_controller.dart';
import 'package:konnect/views/profile_view/settings_view/change_language_view.dart';

import '../../../const/app_colors.dart';
import '../../../const/app_fonts.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  bool isSwitched1 = false;
  bool isSwitched2 = false;
  bool isSwitched3 = false;
  bool isCheked = false;

  final languageController = Get.find<LanguageController>();

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
            child: Column(children: [
              Container(
                height: 60,
                width: size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    appbarColor1,
                    appbarColor2,
                  ]),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child:
                                const Icon(Icons.arrow_circle_left_outlined)),
                        Text(
                          "Settings",
                          style: primaryFont.copyWith(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      ]),
                      Row(
                        children: [
                          Image(
                            image: AssetImage("assets/icons/question.png"),
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 15, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Image(
                              height: 25,
                              width: 25,
                              image: AssetImage(
                                  "assets/icons/profile/8674847_ic_fluent_local_language_regular_icon.png")),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "My Language",
                          style: primaryFont.copyWith(
                              color: Color(0xff413B3B),
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChangeLanguageView()),
                            );
                          },
                          child: Text(
                            "English",
                            style: primaryFont.copyWith(
                                color: lightblue,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                child: Divider(
                  color: greyColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 25, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(
                            height: 25,
                            width: 25,
                            image: AssetImage(
                                "assets/icons/profile/9004698_mobile_phone_smartphone_device_technology_icon.png")),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Lock Screen Notification",
                              style: primaryFont.copyWith(
                                  color: Color(0xff413B3B),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Get payment alerts on the lock screen ",
                              style: primaryFont.copyWith(
                                  color: Color(0xff413B3B),
                                  fontSize: 8,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Center(
                          child: Switch(
                            value: isSwitched1,
                            onChanged: (value) {
                              setState(() {
                                isSwitched1 = value;
                                print(isSwitched1);
                              });
                            },
                            inactiveThumbColor: Color(0xffAAA2A2),
                            inactiveTrackColor: Color(0xffE4E4E4),
                            activeTrackColor: Color(0xff01D1E1),
                            activeColor: Color(0xff078E98),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                child: Divider(
                  color: greyColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 25, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(
                            height: 25,
                            width: 25,
                            image: AssetImage(
                                "assets/icons/profile/Layer 34.png")),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Voice Notification",
                              style: primaryFont.copyWith(
                                  color: Color(0xff413B3B),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return SizedBox(
                                        height: 400,
                                        child: Obx(
                                          () => Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10,
                                                    right: 10,
                                                    top: 10),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Voice Notification",
                                                        style: primaryFont
                                                            .copyWith(
                                                                color: Color(
                                                                    0xff413B3B),
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600),
                                                      ),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text(
                                                        "Get real-alerts for transactions with voice",
                                                        style: primaryFont
                                                            .copyWith(
                                                                color: Color(
                                                                    0xff413B3B),
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                      ),
                                                      Text(
                                                        "Notifications now! No more waiting for SMS alerts.",
                                                        style: primaryFont
                                                            .copyWith(
                                                                color: Color(
                                                                    0xff413B3B),
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 15,
                                                                right: 15,
                                                                top: 10),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              "English",
                                                              style: primaryFont.copyWith(
                                                                  color: Color(
                                                                      0xff413B3B),
                                                                  fontSize: 19,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                            ),
                                                            Checkbox(
                                                                tristate: false,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10)),
                                                                activeColor:
                                                                    lightblue,
                                                                value: languageController
                                                                        .voiceLangIndex
                                                                        .value ==
                                                                    0,
                                                                onChanged:
                                                                    (value) {
                                                                  languageController
                                                                      .voiceLangIndex(
                                                                          0);
                                                                }),
                                                          ],
                                                        ),
                                                      ),
                                                      Divider(
                                                        color: greyColor,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 15,
                                                                right: 15,
                                                                top: 0),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              "हिन्दी",
                                                              style: primaryFont.copyWith(
                                                                  color: const Color(
                                                                      0xff413B3B),
                                                                  fontSize: 19,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                            ),
                                                            Checkbox(
                                                                tristate: false,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20)),
                                                                activeColor:
                                                                    lightblue,
                                                                value: languageController
                                                                        .voiceLangIndex
                                                                        .value ==
                                                                    1,
                                                                onChanged:
                                                                    (value) {
                                                                  languageController
                                                                      .voiceLangIndex(
                                                                          1);
                                                                }),
                                                          ],
                                                        ),
                                                      ),
                                                      Divider(
                                                        color: greyColor,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 15,
                                                                right: 15,
                                                                top: 0),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              "मराठी",
                                                              style: primaryFont.copyWith(
                                                                  color: Color(
                                                                      0xff413B3B),
                                                                  fontSize: 19,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                            ),
                                                            Checkbox(
                                                                tristate: true,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10)),
                                                                activeColor:
                                                                    lightblue,
                                                                value: languageController
                                                                        .voiceLangIndex
                                                                        .value ==
                                                                    2,
                                                                onChanged:
                                                                    (value) {
                                                                  languageController
                                                                      .voiceLangIndex(
                                                                          2);
                                                                }),
                                                          ],
                                                        ),
                                                      ),
                                                      Divider(
                                                        color: greyColor,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 15,
                                                                right: 15,
                                                                top: 0),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              "தமிழ்",
                                                              style: primaryFont.copyWith(
                                                                  color: const Color(
                                                                      0xff413B3B),
                                                                  fontSize: 19,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                            ),
                                                            Checkbox(
                                                                tristate: false,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10)),
                                                                activeColor:
                                                                    lightblue,
                                                                value: languageController
                                                                        .voiceLangIndex
                                                                        .value ==
                                                                    4,
                                                                onChanged:
                                                                    (value) {
                                                                  languageController
                                                                      .voiceLangIndex(
                                                                          4);
                                                                }),
                                                          ],
                                                        ),
                                                      ),
                                                    ]),
                                              ),
                                              Column(
                                                children: [
                                                  InkWell(
                                                    onTap: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                SettingsView()),
                                                      );
                                                    },
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 0,
                                                              right: 0),
                                                      child: Container(
                                                        height: 50,
                                                        width: size.width,
                                                        child: Center(
                                                            child: Text(
                                                          "DONE",
                                                          style: primaryFont
                                                              .copyWith(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 17,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                        )),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: primaryColor,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    });
                              },
                              child: Text(
                                "English",
                                style: primaryFont.copyWith(
                                    color: lightblue,
                                    fontSize: 9,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Center(
                          child: Switch(
                            value: isSwitched2,
                            onChanged: (value) {
                              setState(() {
                                isSwitched2 = value;
                                print(isSwitched2);
                              });
                            },
                            inactiveThumbColor: Color(0xffAAA2A2),
                            inactiveTrackColor: Color(0xffE4E4E4),
                            activeTrackColor: Color(0xff01D1E1),
                            activeColor: Color(0xff078E98),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                child: Divider(
                  color: greyColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 25, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(
                            height: 25,
                            width: 25,
                            image: AssetImage(
                                "assets/icons/profile/6588773_bell_chat_communication_message_notification_icon.png")),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Transaction SMS",
                              style: primaryFont.copyWith(
                                  color: Color(0xff413B3B),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Opt into get SMS for each payment ",
                              style: primaryFont.copyWith(
                                  color: Color(0xff413B3B),
                                  fontSize: 8,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Center(
                          child: Switch(
                            value: isSwitched3,
                            onChanged: (value) {
                              setState(() {
                                isSwitched3 = value;
                                print(isSwitched3);
                              });
                            },
                            inactiveThumbColor: Color(0xffAAA2A2),
                            inactiveTrackColor: Color(0xffE4E4E4),
                            activeTrackColor: Color(0xff01D1E1),
                            activeColor: Color(0xff078E98),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                child: Divider(
                  color: greyColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 15, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Image(
                              height: 25,
                              width: 25,
                              image:
                                  AssetImage("assets/icons/profile/icons.png")),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Logout",
                          style: primaryFont.copyWith(
                              color: Color(0xff413B3B),
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                child: Divider(
                  color: greyColor,
                ),
              ),
            ]),
          )),
        ));
  }
}
