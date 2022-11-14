import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/controllers/transaction_controller.dart';
import 'package:konnect/views/store_view/create_offer_view.dart';

class MyOffersView extends StatefulWidget {
  const MyOffersView({super.key});

  @override
  State<MyOffersView> createState() => _MyOffersViewState();
}

class _MyOffersViewState extends State<MyOffersView> {
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
                                    "My Offers",
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
                    height: 30,
                  ),
                  Image.asset(
                    "assets/icons/Group 628.png",
                    height: 250,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Grow your business quick",
                    style: primaryFont.copyWith(
                        fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.green),
                          alignment: Alignment.center,
                          child: const Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 12,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Create special offers for payment\ncustomers",
                          style: primaryFont.copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.w100,
                              color: Colors.black54),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.green),
                          alignment: Alignment.center,
                          child: const Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 12,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Your store and offers will be shown to\nall customers nearby",
                          style: primaryFont.copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.w100,
                              color: Colors.black54),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.green),
                          alignment: Alignment.center,
                          child: const Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 12,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Stop or change offers whenever you\nlike",
                          style: primaryFont.copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.w100,
                              color: Colors.black54),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.green),
                          alignment: Alignment.center,
                          child: const Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 12,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Run different offers for different stores\nif you want",
                          style: primaryFont.copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.w100,
                              color: Colors.black54),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.green),
                          alignment: Alignment.center,
                          child: const Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 12,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Put up an offer in just a few seconds",
                          style: primaryFont.copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.w100,
                              color: Colors.black54),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "See Terms & Conditions",
                    style: primaryFont.copyWith(
                        color: Colors.blue,
                        fontSize: 17,
                        decoration: TextDecoration.underline),
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: InkWell(
          onTap: () {
            Get.to(() => const CreateAnOfferView());
          },
          child: Container(
            height: 60,
            width: size.width,
            color: const Color(0xff543DE0),
            alignment: Alignment.center,
            child: Text(
              "Create a new offer",
              style: primaryFont.copyWith(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}
