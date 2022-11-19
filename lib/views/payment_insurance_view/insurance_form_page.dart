import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/controllers/transaction_controller.dart';
import 'package:konnect/widgets/insurance_widgets/insurance_form_field.dart';
import 'package:konnect/widgets/insurance_widgets/insurance_pay_bottom_sheet.dart';

import '../../const/helpers/space_helpers.dart';

class InsuranceFormView extends StatefulWidget {
  String title;
  InsuranceFormView({super.key, required this.title});

  @override
  State<InsuranceFormView> createState() => _InsuranceFormViewState();
}

class _InsuranceFormViewState extends State<InsuranceFormView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 200,
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
                                    widget.title,
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
                  h30,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              "Insured Name",
                              style: primaryFont.copyWith(fontSize: 11),
                            ),
                          ),
                        ],
                      ),
                      h5,
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          height: 50,
                          width: size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7)),
                          alignment: Alignment.centerLeft,
                          child: Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: TextField(
                                decoration:
                                    InputDecoration.collapsed(hintText: ""),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  h10,
                  InsuranceFormField(
                    title: "Insured Contact Number",
                  ),
                  h10,
                  InsuranceFormField(
                    title: "Insured Email Address",
                  ),
                  h10,
                  InsuranceFormField(
                    title: "Gender",
                  ),
                  h10,
                  InsuranceFormField(
                    title: "Adhar Number",
                  ),
                  h10,
                  InsuranceFormField(
                    title: "PAN Number",
                  ),
                  h10,
                  InsuranceFormField(
                    title: "Insured Address Details (Address line 1)",
                  ),
                  h10,
                  InsuranceFormField(
                    title: "City",
                  ),
                  h10,
                  InsuranceFormField(
                    title: "State",
                  ),
                  h10,
                  InsuranceFormField(
                    title: "Pincode",
                  ),
                  h10,
                  InsuranceFormField(
                    title: "DOB",
                  ),
                  h10,
                  InsuranceFormField(
                    title: "Nominee Name",
                  ),
                  h10,
                  InsuranceFormField(
                    title: "Nominee Relationship",
                  ),
                  h10,
                  InsuranceFormField(
                    title: "Nominee DOB",
                  ),
                  h10,
                  InsuranceFormField(
                    title: "Referral Code",
                  ),
                  h50
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          color: Colors.grey[300],
          height: 70,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: InkWell(
              onTap: () {
                insurancePay(
                  context,
                );
              },
              child: Container(
                height: 50,
                width: size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: primaryColor),
                alignment: Alignment.center,
                child: Text(
                  "Pay and Proceed",
                  style:
                      primaryFont.copyWith(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool isChecked = false;
}
