import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/const/helpers/space_helpers.dart';
import 'package:konnect/const/helpers/text_field_style_helpers.dart';
import 'package:konnect/controllers/transaction_controller.dart';

class TypeofServicesYouOffer extends StatefulWidget {
  const TypeofServicesYouOffer({super.key});

  @override
  State<TypeofServicesYouOffer> createState() => _TypeofServicesYouOfferState();
}

class _TypeofServicesYouOfferState extends State<TypeofServicesYouOffer> {
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
                                    "Select the type of services\nyou offer",
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
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Text(
                            "Select your preferred mode of services for you\nbusiness."),
                      ),
                    ],
                  ),
                  h15,
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                      height: 70,
                      width: size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Store Pickup",
                                  style: primaryFont.copyWith(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600),
                                ),
                                h10,
                                Text(
                                  "Customer will pick items from store",
                                  style: primaryFont.copyWith(
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.black)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  h15,
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                      width: size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, top: 10, bottom: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Home Delivery",
                                  style: primaryFont.copyWith(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600),
                                ),
                                h10,
                                Text(
                                  "The store will be responsible to deliver\nitems to customer",
                                  style: primaryFont.copyWith(fontSize: 12),
                                ),
                                h15,
                                Text(
                                  "1.How many kms would you like to service\nfrom your business location?",
                                  style: primaryFont.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                                h15,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 35,
                                      width: 130,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          border:
                                              Border.all(color: Colors.black)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            height: 15,
                                            width: 15,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: Colors.grey
                                                    .withOpacity(0.3)),
                                          ),
                                          Text(
                                            "Within 2 Kms",
                                            style: primaryFont.copyWith(
                                                fontSize: 13),
                                          )
                                        ],
                                      ),
                                    ),
                                    w30,
                                    Container(
                                      height: 35,
                                      width: 130,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          border:
                                              Border.all(color: Colors.black)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            height: 15,
                                            width: 15,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: Colors.grey
                                                    .withOpacity(0.3)),
                                          ),
                                          Text(
                                            "Within 4 Kms",
                                            style: primaryFont.copyWith(
                                                fontSize: 13),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                h15,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 35,
                                      width: 130,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          border:
                                              Border.all(color: Colors.black)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            height: 15,
                                            width: 15,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: Colors.grey
                                                    .withOpacity(0.3)),
                                          ),
                                          Text(
                                            "Within 6 Kms",
                                            style: primaryFont.copyWith(
                                                fontSize: 13),
                                          )
                                        ],
                                      ),
                                    ),
                                    w30,
                                    Container(
                                      height: 35,
                                      width: 130,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          border:
                                              Border.all(color: Colors.black)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            height: 15,
                                            width: 15,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: Colors.grey
                                                    .withOpacity(0.3)),
                                          ),
                                          Text(
                                            "Within 8 Kms",
                                            style: primaryFont.copyWith(
                                                fontSize: 13),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                h15,
                                Container(
                                  height: 35,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(color: Colors.black)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        height: 15,
                                        width: 15,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color:
                                                Colors.grey.withOpacity(0.3)),
                                      ),
                                      Text(
                                        "Within 10 Kms",
                                        style:
                                            primaryFont.copyWith(fontSize: 13),
                                      )
                                    ],
                                  ),
                                ),
                                h15,
                                Text(
                                  "1.How many kms would you like to service\nfrom your business location?",
                                  style: primaryFont.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                                h15,
                                Container(
                                  height: 55,
                                  width: size.width - 80,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "Enter Amount",
                                        enabledBorder: enabledBorder,
                                        focusedBorder: focusedBorder),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.black)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  h30,
                  Container(
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
