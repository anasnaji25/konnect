import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/controllers/transaction_controller.dart';

class DosAndDontView extends StatefulWidget {
  const DosAndDontView({super.key});

  @override
  State<DosAndDontView> createState() => _DosAndDontViewState();
}

class _DosAndDontViewState extends State<DosAndDontView> {
  final transactionController = Get.find<TransactionController>();

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
                                    "Make your business stand out",
                                    style: primaryFont.copyWith(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "Business with clear pictures or logos are trusted\nmore by customers.",
                                    style: primaryFont.copyWith(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w300),
                                  )
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "Some good examples",
                          style: primaryFont.copyWith(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        "assets/icons/Group 1364.png",
                        height: 90,
                      ),
                      Image.asset(
                        "assets/icons/Group 1365.png",
                        height: 90,
                      ),
                      Image.asset(
                        "assets/icons/Group 1366.png",
                        height: 90,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "Some bad examples",
                          style: primaryFont.copyWith(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        "assets/icons/Group 1368.png",
                        height: 90,
                      ),
                      Image.asset(
                        "assets/icons/Group 1367.png",
                        height: 90,
                      ),
                      Container(
                        height: 90,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar:  Container(
                    height: 70,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30, right: 20),
                          child: InkWell(
                            onTap: () {
                              // Get.to(() => const SignUpView());
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
                                "Okay Got It",
                                style: primaryFont.copyWith(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                        
                      ],
                    ),
                  ),
      ),
    );
  }
}
