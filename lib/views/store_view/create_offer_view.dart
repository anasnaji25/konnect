import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/controllers/transaction_controller.dart';
import 'package:konnect/views/store_view/create_offer_second_screen.dart';

class CreateAnOfferView extends StatefulWidget {
  const CreateAnOfferView({super.key});

  @override
  State<CreateAnOfferView> createState() => _CreateAnOfferViewState();
}

class _CreateAnOfferViewState extends State<CreateAnOfferView> {
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
                                    "Create an offer",
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
                  Text(
                    "What type of offer do you want?",
                    style: primaryFont.copyWith(
                        fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: InkWell(
                      onTap: () {
                        Get.to(() => CreateAnOfferSecondScreen());
                      },
                      child: Container(
                        height: 100,
                        width: size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Color(0xff543DE0)),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "%",
                                    style: primaryFont.copyWith(
                                        color: Colors.white, fontSize: 20),
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
                                      "Percentage Discount",
                                      style: primaryFont.copyWith(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Eg: Flat 15% off on purchase\nabove ₹500",
                                      style: primaryFont.copyWith(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                )
                              ]),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                      height: 100,
                      width: size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: const Color(0xff543DE0)),
                                alignment: Alignment.center,
                                child: Text(
                                  "₹",
                                  style: primaryFont.copyWith(
                                      color: Colors.white, fontSize: 20),
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
                                    "Flat Price Discount",
                                    style: primaryFont.copyWith(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Eg: Flat ₹50 off on purchase\nabove ₹500",
                                    style: primaryFont.copyWith(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              )
                            ]),
                      ),
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
