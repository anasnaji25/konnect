import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/const/helpers/space_helpers.dart';
import 'package:konnect/const/helpers/text_field_style_helpers.dart';
import 'package:konnect/controllers/transaction_controller.dart';
import 'package:konnect/views/payment_link_view/payment_link_created_view.dart';

class CreateNewLinkView extends StatefulWidget {
  const CreateNewLinkView({super.key});

  @override
  State<CreateNewLinkView> createState() => _CreateNewLinkViewState();
}

class _CreateNewLinkViewState extends State<CreateNewLinkView> {
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
                                    "Create new link",
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
                  Container(
                    height: 63,
                    width: size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  height: 58,
                                  width: 58,
                                  decoration: BoxDecoration(
                                      color: primaryColor,
                                      borderRadius: BorderRadius.circular(7)),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "RA",
                                    style: primaryFont.copyWith(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Raja Ana",
                                    style: primaryFont.copyWith(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15),
                                  ),
                                  h5,
                                  Text(
                                    "+91 9847563262",
                                    style: primaryFont.copyWith(
                                        fontWeight: FontWeight.w100,
                                        fontSize: 13),
                                  )
                                ],
                              )
                            ],
                          ),
                          Text(
                            "CHANGE",
                            style: primaryFont.copyWith(color: Colors.green),
                          )
                        ],
                      ),
                    ),
                  ),
                  h15,
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "₹ Enter Amount",
                          enabledBorder: enabledBorder,
                          focusedBorder: focusedBorder),
                    ),
                  ),
                  h15,
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Add description (optional)",
                          enabledBorder: enabledBorder,
                          focusedBorder: focusedBorder),
                    ),
                  ),
                  h30,
                  Container(
                    height: 55,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: primaryColor),
                    alignment: Alignment.center,
                    child: Text(
                      "Generate link".toUpperCase(),
                      style: primaryFont.copyWith(
                          color: Colors.white, fontSize: 18),
                    ),
                  ),
                  h30,
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 63,
                              width: size.width,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Container(
                                            height: 58,
                                            width: 58,
                                            child: Image.asset(
                                                "assets/icons/pay_link/Group 1393.png"),
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "+91 9847563262",
                                              style: primaryFont.copyWith(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 15),
                                            ),
                                            h5,
                                            Text(
                                              "Raja ana",
                                              style: primaryFont.copyWith(
                                                  fontWeight: FontWeight.w100,
                                                  fontSize: 12),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "PENDING",
                                          style: primaryFont.copyWith(
                                              color: Colors.blue, fontSize: 13),
                                        ),
                                        Text(
                                          "Valid till 5 Nov 5:30",
                                          style: primaryFont.copyWith(
                                              fontSize: 11),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const Divider(
                              thickness: 1.5,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "ID:IT78974888647DSF8787",
                                    style: primaryFont.copyWith(
                                        color: Colors.black45, fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "₹1",
                                    style: primaryFont.copyWith(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Total bill amount for 04 Nov 2022",
                                    style: primaryFont.copyWith(
                                        color: Colors.black45, fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                            h15,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 55,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromARGB(255, 72, 177, 75)),
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                                  child: const Icon(Icons.share,color: Colors.green,),
                                        ),
                                        w30,
                                        Text(
                                          "Share link".toUpperCase(),
                                          style: primaryFont.copyWith(
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                         w30,
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
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
      ),
    );
  }
}
