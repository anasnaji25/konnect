import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/controllers/transaction_controller.dart';
import 'package:konnect/views/payment_insurance_view/insurance_form_page.dart';

import '../../const/helpers/space_helpers.dart';

class ShoplInsuranceView extends StatefulWidget {
  const ShoplInsuranceView({super.key});

  @override
  State<ShoplInsuranceView> createState() => _ShoplInsuranceViewState();
}

class _ShoplInsuranceViewState extends State<ShoplInsuranceView> {
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
            color: Colors.grey[300],
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
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
                                    "Shop Insurance",
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
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Insurance Details",
                          style: primaryFont.copyWith(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  h10,
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      height: 200,
                      width: size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 3,
                                color: Colors.grey.withOpacity(0.3))
                          ]),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Worth Value",
                                      style: primaryFont.copyWith(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text("₹99")
                                  ],
                                ),
                                Image.asset(
                                    "assets/icons/insurance/Image 4.png")
                              ],
                            ),
                          ),
                          const Divider(
                            thickness: 1.5,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Cost",
                                      style: primaryFont.copyWith(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text("₹1 lakh")
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1.5,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Years",
                                      style: primaryFont.copyWith(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text("1 year")
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  h15,
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "GENERAL CONDITIONS",
                          style: primaryFont.copyWith(fontSize: 13),
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
                          "● Coverage is only for shops.",
                          style: primaryFont.copyWith(fontSize: 9),
                        ),
                      ),
                    ],
                  ),
                  h10,
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "● The list will be shared while finalising the business.",
                          style: primaryFont.copyWith(fontSize: 9),
                        ),
                      ),
                    ],
                  ),
                  h10,
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "● Jewellery Shop and Shops dealing in",
                          style: primaryFont.copyWith(fontSize: 9),
                        ),
                      ),
                    ],
                  ),
                  h10,
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "● Hazardous substances will not be covered under the policy. Any premises\n   involved in manufacturing",
                          style: primaryFont.copyWith(fontSize: 9),
                        ),
                      ),
                    ],
                  ),
                  h10,
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "● activities are not covered under policy.",
                          style: primaryFont.copyWith(fontSize: 9),
                        ),
                      ),
                    ],
                  ),
                  h10,
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "● Under insurance upto 15% sum insured is wavied.",
                          style: primaryFont.copyWith(fontSize: 9),
                        ),
                      ),
                    ],
                  ),
                  h10,
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "● All the other Terms and Conditions are as per the IL Merchant's cover III\n   policy wordings",
                          style: primaryFont.copyWith(fontSize: 9),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          color: Colors.grey[300],
          height: 140,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                      value: isChecked,
                      onChanged: (val) {
                        setState(() {
                          isChecked = val!;
                        });
                      }),
                  Text(
                    " I agree with the declaration and terms & Conditions",
                    style: primaryFont.copyWith(fontSize: 12),
                  )
                ],
              ),
              h15,
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: InkWell(
                  onTap: () {
                    Get.to(() => InsuranceFormView(
                          title: "Shop Insurance",
                        ));
                  },
                  child: Container(
                    height: 50,
                    width: size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: primaryColor),
                    alignment: Alignment.center,
                    child: Text(
                      "Proceed",
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

  bool isChecked = false;
}
