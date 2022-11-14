import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/controllers/transaction_controller.dart';
import 'package:konnect/views/lading_view/lets_get_started_screen.dart';
import 'package:konnect/views/store_view/dos_and_donts_view.dart';
import 'package:konnect/widgets/store_widgets/category_bottom_sheet.dart';
import 'package:konnect/widgets/transaction_widgets/filter_bottom_sheet.dart';
import 'package:konnect/widgets/transaction_widgets/transactions_card.dart';

import '../sign_in_view.dart/sign_in_view.dart';

class BusinessDetailsView extends StatefulWidget {
  const BusinessDetailsView({super.key});

  @override
  State<BusinessDetailsView> createState() => _BusinessDetailsViewState();
}

class _BusinessDetailsViewState extends State<BusinessDetailsView> {
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
                                    "Business Details",
                                    style: primaryFont.copyWith(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "Tell your customers more about your business",
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
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "Business Name",
                          style: primaryFont.copyWith(
                              fontWeight: FontWeight.w600, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Enter Business Name",
                          hintStyle:
                              primaryFont.copyWith(color: Colors.black45),
                          helperText:
                              "Customers would see this name on their payment app",
                          helperStyle: primaryFont.copyWith(
                              color: Colors.black, fontSize: 10),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Colors.black)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Colors.black))),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "Business Category",
                          style: primaryFont.copyWith(
                              fontWeight: FontWeight.w600, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 10),
                    child: TextField(
                      onTap: () {
                        selectCategory(context);
                      },
                      readOnly: true,
                      decoration: InputDecoration(
                          hintText: "Select Category",
                          suffixIcon: const Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: Colors.black,
                          ),
                          hintStyle:
                              primaryFont.copyWith(color: Colors.black45),
                          helperText:
                              "Select your category for customers to discover you quickly",
                          helperStyle: primaryFont.copyWith(
                              color: Colors.black, fontSize: 10),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Colors.black)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Colors.black))),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                      height: 280,
                      width: size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: const Color(0xff543DE0))),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/icons/Group 1363.png",
                                height: 150,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Business Logo (optional)",
                            style: primaryFont.copyWith(
                                fontSize: 21, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Make your business stand out",
                            style: primaryFont.copyWith(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(() => DosAndDontView());
                            },
                            child: Text(
                              "Do's and Dont's",
                              style: primaryFont.copyWith(
                                  color: Colors.blue,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 120,
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
                            onTap: () {},
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
