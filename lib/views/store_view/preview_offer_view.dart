import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/const/helpers/space_helpers.dart';
import 'package:konnect/controllers/transaction_controller.dart';
import 'package:konnect/views/store_view/offer_scheduled_view.dart';

class PreviewYourOfferView extends StatefulWidget {
  const PreviewYourOfferView({super.key});

  @override
  State<PreviewYourOfferView> createState() => _PreviewYourOfferViewState();
}

class _PreviewYourOfferViewState extends State<PreviewYourOfferView> {
  final transactionController = Get.find<TransactionController>();
  bool isAccepted = false;

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
                                    "Preview Your Offer",
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
                  Text(
                    "Preview your offer on your Stores listing",
                    style: primaryFont.copyWith(
                        fontWeight: FontWeight.w600, fontSize: 17),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                      height: 150,
                      width: size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 10, top: 15, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/icons/Group 1372.png",
                                  height: 100,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Business",
                                      style: primaryFont.copyWith(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Agriculture",
                                      style: primaryFont.copyWith(fontSize: 11),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "★ 4.5",
                                      style: primaryFont.copyWith(fontSize: 10),
                                    ),
                                    h10,
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 15,
                                          width: 15,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Colors.green),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "%",
                                            style: primaryFont.copyWith(
                                                color: Colors.white,
                                                fontSize: 10),
                                          ),
                                        ),
                                        w5,
                                        Text(
                                          "Flat 1% off on minimum\npurchase of ₹1 with\nmaximum discount of ₹2.",
                                          style: primaryFont.copyWith(
                                              fontSize: 11),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Icon(
                                  Icons.more_vert,
                                  size: 15,
                                ),
                                h20,
                                Text(
                                  "Closes 10:00 PM",
                                  style: primaryFont.copyWith(fontSize: 8),
                                )
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
        bottomNavigationBar: Container(
          height: 200,
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                      value: isAccepted,
                      onChanged: (val) {
                        setState(() {
                          isAccepted = val!;
                        });
                      }),
                  w5,
                  const Text("I accept the "),
                  Text(
                    "Terms & Conditions",
                    style: primaryFont.copyWith(color: Colors.blue),
                  )
                ],
              ),
              h20,
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 20),
                child: InkWell(
                  onTap: () {
                    if (isAccepted) {
                      Get.to(() => const OfferScheduledView());
                    } else {
                      Get.closeAllSnackbars();
                      Get.snackbar(
                          "To Continue Please Accept Terms & Conditions", "",
                          snackPosition: SnackPosition.BOTTOM,
                          colorText: Colors.white,
                          backgroundColor: Colors.red);
                    }
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
                      "Publish",
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
                      "Back",
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
