import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/const/helpers/space_helpers.dart';
import 'package:konnect/views/banking_page_view/add_bank_accounts_view.dart';

class ManageBankAccounts extends StatefulWidget {
  const ManageBankAccounts({super.key});

  @override
  State<ManageBankAccounts> createState() => _ManageBankAccountsState();
}

class _ManageBankAccountsState extends State<ManageBankAccounts> {
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
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Manage Bank Accounts",
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
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "You can add a new bank account in the name of\nPAYMENT METHODS",
                          style: primaryFont.copyWith(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  h15,
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      height: 50,
                      width: size.width,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(40)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Image.asset(
                                  "assets/icons/NoPath - Copy (3).png",
                                  height: 45),
                            ),
                            w10,
                            Text(
                              "**********1234",
                              style: primaryFont.copyWith(
                                  fontWeight: FontWeight.w600, fontSize: 15),
                            )
                          ]),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Image.asset(
                              "assets/icons/9004766_shield_security_protection_secure_icon.png",
                              height: 25,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  h15,
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      height: 50,
                      width: size.width,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(40)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            w10,
                            Text(
                              "IFSC :",
                              style: primaryFont.copyWith(
                                  fontWeight: FontWeight.w600, fontSize: 15),
                            ),
                            w10,
                            Text(
                              "CIUB00112233",
                              style: primaryFont.copyWith(
                                  fontWeight: FontWeight.w600, fontSize: 15),
                            )
                          ]),
                        ],
                      ),
                    ),
                  )
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
                    Get.to(()=> AddBankAccountView());
                  },
                  child: Container(
                    height: 40,
                    width: size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color(0xff543DE0)),
                    alignment: Alignment.center,
                    child: Text(
                      "ADD NEW ACCOUNT",
                      style: primaryFont.copyWith(
                          color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
