import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/const/helpers/space_helpers.dart';
import 'package:konnect/controllers/transaction_controller.dart';
import 'package:konnect/views/chat_view/chat_screen_view.dart';

class ChatListVew extends StatefulWidget {
  const ChatListVew({super.key});

  @override
  State<ChatListVew> createState() => _ChatListVewState();
}

class _ChatListVewState extends State<ChatListVew> {
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
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 80,
                    width: size.width,
                    decoration:
                        BoxDecoration(color: secondaryColor.withOpacity(0.1)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                child: Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(color: Colors.black)),
                                  alignment: Alignment.center,
                                  child: const Icon(
                                    Icons.arrow_back,
                                    size: 22,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Customer Chat",
                                    style: primaryFont.copyWith(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => ChatScreenView(
                            image: "assets/icons/chat/Rectangle 12.png",
                            name: "Christan Mo",
                          ));
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/chat/Rectangle 12.png"),
                        Padding(
                          padding: const EdgeInsets.only(top: 0, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: size.width * 0.7,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Christan Mo",
                                      style: primaryFont.copyWith(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 17),
                                    ),
                                    Text(
                                      "12:00",
                                      style: primaryFont.copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w100,
                                          color: Colors.black45),
                                    )
                                  ],
                                ),
                              ),
                              h10,
                              Text(
                                "Hi julian! See you after work?",
                                style: primaryFont.copyWith(
                                    color: Colors.black54, fontSize: 13),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => ChatScreenView(
                            image: "assets/icons/chat/Rectangle 16.png",
                            name: "Nick Baka",
                          ));
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/chat/Rectangle 16.png"),
                        Padding(
                          padding: const EdgeInsets.only(top: 0, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: size.width * 0.7,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Nick Baka",
                                      style: primaryFont.copyWith(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 17),
                                    ),
                                    Text(
                                      "12:50",
                                      style: primaryFont.copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w100,
                                          color: Colors.black45),
                                    )
                                  ],
                                ),
                              ),
                              h10,
                              Text(
                                "I must tell you my interview this...",
                                style: primaryFont.copyWith(
                                    color: Colors.black54, fontSize: 13),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
