import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/const/helpers/space_helpers.dart';
import 'package:konnect/const/helpers/text_field_style_helpers.dart';
import 'package:konnect/controllers/transaction_controller.dart';

class TellUsAboutBuisniessView extends StatefulWidget {
  const TellUsAboutBuisniessView({super.key});

  @override
  State<TellUsAboutBuisniessView> createState() =>
      _TellUsAboutBuisniessViewState();
}

class _TellUsAboutBuisniessViewState extends State<TellUsAboutBuisniessView> {
  var monthController = TextEditingController();
  var yearController = TextEditingController();

  @override
  void initState() {
    super.initState();
    monthController.text = "Month";
    yearController.text = "Year";
  }

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
                                    "Tell your customers more\nabout your buisness",
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
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "Sharing links helps viewers stay connected\nwith you and your latest updates",
                          style: primaryFont.copyWith(
                              fontSize: 14, fontWeight: FontWeight.w100),
                        ),
                      ),
                    ],
                  ),
                  h15,
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "When was your business established?",
                          style: primaryFont.copyWith(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  h10,
                  Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 50,
                                child: TextField(
                                  readOnly: true,
                                  controller: monthController,
                                  decoration: InputDecoration(
                                      isDense: true,
                                      suffixIcon: Container(
                                        width: 20,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: const [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 7),
                                              child: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: const BorderSide(
                                              color: Colors.black)),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: const BorderSide(
                                              color: Colors.black))),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 50,
                                child: TextField(
                                  readOnly: true,
                                  controller: yearController,
                                  decoration: InputDecoration(
                                      hintText: "",
                                      isDense: true,
                                      suffixIcon: Container(
                                        width: 20,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: const [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 7),
                                              child: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: const BorderSide(
                                              color: Colors.black)),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: const BorderSide(
                                              color: Colors.black))),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                    ],
                  ),
                  h15,
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "Sharing links helps viewers stay connected\nwith you and your latest updates",
                          style: primaryFont.copyWith(
                              fontSize: 14, fontWeight: FontWeight.w100),
                        ),
                      ),
                    ],
                  ),
                  h15,
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "Description",
                          style: primaryFont.copyWith(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  h10,
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: TextField(
                      maxLines: 3,
                      decoration: InputDecoration(
                        hintText: "Enter Description about the store",
                        enabledBorder: enabledBorder,
                        focusedBorder: focusedBorder,
                      ),
                    ),
                  ),
                  h15,
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "Known For",
                          style: primaryFont.copyWith(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  h10,
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter what is your store famous for",
                        enabledBorder: enabledBorder,
                        focusedBorder: focusedBorder,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 120,
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 20),
                child: InkWell(
                  onTap: () {
                    // Get.to(() => const PreviewYourOfferView());
                    Get.back();
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
                      "SAVE",
                      style: primaryFont.copyWith(
                          color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 20),
                child: InkWell(
                  onTap: () {
                    // Get.to(() => const SignInView());
                    Get.back();
                  },
                  child: Container(
                    height: 40,
                    width: size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.black)),
                    alignment: Alignment.center,
                    child: Text(
                      "Cancel",
                      style: primaryFont.copyWith(fontSize: 15),
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
