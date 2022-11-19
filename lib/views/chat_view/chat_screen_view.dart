import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/const/helpers/space_helpers.dart';
import 'package:konnect/controllers/transaction_controller.dart';

class ChatScreenView extends StatefulWidget {
  String name;
  String image;

  ChatScreenView({super.key, required this.image, required this.name});

  @override
  State<ChatScreenView> createState() => _ChatScreenViewState();
}

class _ChatScreenViewState extends State<ChatScreenView> {
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
        resizeToAvoidBottomInset: false,
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
                    height: 60,
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
                                    widget.name,
                                    style: primaryFont.copyWith(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Image.asset(
                                  widget.image,
                                  height: 50,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        widget.image,
                        height: 60,
                      ),
                      w5,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: chatFromColor,
                                borderRadius: BorderRadius.circular(10)),
                            alignment: Alignment.center,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: Text(
                                "Hi Ankur! What's Up?",
                                style: primaryFont,
                              ),
                            ),
                          ),
                          Text(
                            "Yesterday 14:26 PM",
                            style: primaryFont.copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.w100,
                                color: Colors.black45),
                          )
                        ],
                      )
                    ],
                  ),
                  h15,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: chatToColor,
                                borderRadius: BorderRadius.circular(10)),
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, top: 7, bottom: 7),
                              child: Text(
                                "Oh, hello! All Perfectly fine i'm just\nheading out for something",
                                textAlign: TextAlign.start,
                                style:
                                    primaryFont.copyWith(color: Colors.white),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "Yesterday 14:26 PM",
                                style: primaryFont.copyWith(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w100,
                                    color: Colors.black45),
                              ),
                              w5,
                              const Icon(
                                Icons.visibility_outlined,
                                color: Colors.blue,
                                size: 12,
                              ),
                              w5,
                            ],
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/icons/chat/Rectangle 11.png",
                        height: 60,
                      ),
                      w5,
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
            child: Container(
              height: 60,
              width: size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: chatFromColor),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.blue,
                    ),
                  ),
                  w10,
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration.collapsed(
                          hintText: "Type Your Message",
                          hintStyle: primaryFont.copyWith(fontSize: 12)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/icons/chat/Group 1390.png",
                      height: 55,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
