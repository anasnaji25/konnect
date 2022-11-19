import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/const/helpers/space_helpers.dart';

class ShareStoreView extends StatefulWidget {
  const ShareStoreView({super.key});

  @override
  State<ShareStoreView> createState() => _ShareStoreViewState();
}

class _ShareStoreViewState extends State<ShareStoreView> {
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
                                    "Share Your Store",
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
                                  "assets/icons/8666690_help_circle_icon.png",
                                  height: 25,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      w10,
                      Image.asset(
                        "assets/icons/share_store/Group 1382.png",
                        height: 85,
                      ),
                      w15,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Business",
                            style: primaryFont.copyWith(
                                fontSize: 26, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Agriculture",
                            style: primaryFont.copyWith(fontSize: 15),
                          ),
                          h10,
                          Row(
                            children: [
                              Icon(
                                Icons.call,
                                color: Colors.black,
                                size: 16,
                              ),
                              w10,
                              Text("9876446683")
                            ],
                          ),
                          h10,
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.black,
                                size: 16,
                              ),
                              w10,
                              Text(
                                "Patel Road,Perambur,\nChennai,600021",
                                style: primaryFont.copyWith(fontSize: 13),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  h30,
                  Image.asset(
                    "assets/icons/share_store/Group 1383.png",
                    height: size.height * 0.4,
                  ),
                  h40,
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "Where do you want to share?",
                          style: primaryFont.copyWith(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  h20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icons/share_store/NoPath - Copy (4).png",
                            height: 55,
                          ),
                          h10,
                          Text(
                            "Whatsapp",
                            style: primaryFont.copyWith(fontSize: 11),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icons/share_store/Group 1384.png",
                            height: 55,
                          ),
                          h10,
                          Text(
                            "SMS",
                            style: primaryFont.copyWith(fontSize: 11),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icons/share_store/Group 1386.png",
                            height: 55,
                          ),
                          h10,
                          Text(
                            "Email",
                            style: primaryFont.copyWith(fontSize: 11),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icons/share_store/Group 1385.png",
                            height: 55,
                          ),
                          h10,
                          Text(
                            "More",
                            style: primaryFont.copyWith(fontSize: 11),
                          )
                        ],
                      ),
                    ],
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
