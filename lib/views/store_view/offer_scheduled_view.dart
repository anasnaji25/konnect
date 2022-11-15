import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/const/helpers/space_helpers.dart';
import 'package:konnect/controllers/transaction_controller.dart';
import 'package:konnect/views/home_view/home_navigator_view.dart';

class OfferScheduledView extends StatefulWidget {
  const OfferScheduledView({super.key});

  @override
  State<OfferScheduledView> createState() => _OfferScheduledViewState();
}

class _OfferScheduledViewState extends State<OfferScheduledView> {
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
                                    "Offer Scheduled",
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
                  Image.asset(
                    "assets/icons/Group 1373.png",
                    height: 300,
                  ),
                  h40,
                  Text(
                    "Offer is submitted and\ncustomers will start seeing the\noffer on 9 November 2022",
                    textAlign: TextAlign.center,
                    style: primaryFont.copyWith(
                        fontSize: 21, fontWeight: FontWeight.w600),
                  ),
                  h50,
                  Text(
                      "Millions of customers will see your offer\nwhen it is up",
                      textAlign: TextAlign.center,
                      style: primaryFont.copyWith(
                          fontSize: 14, fontWeight: FontWeight.w400)),
                  h50,
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 20),
                    child: InkWell(
                      onTap: () {
                        Get.offAll(()=> HomePageWithNavigation(index: 2,));
                      },
                      child: Container(
                        height: 40,
                        width: size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(
                                colors: [secondaryColor, primaryColor])),
                        alignment: Alignment.center,
                        child: Text(
                          "Done",
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
        ),
      ),
    );
  }
}
