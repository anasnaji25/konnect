import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/const/helpers/space_helpers.dart';
import 'package:konnect/views/banking_page_view/add_bank_accounts_view.dart';

class BankingViewFirst extends StatefulWidget {
  const BankingViewFirst({super.key});

  @override
  State<BankingViewFirst> createState() => _BankingViewFirstState();
}

class _BankingViewFirstState extends State<BankingViewFirst> {
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
                                    "Banking",
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
                  h100,
                  Image.asset(
                    "assets/icons/Group 1378.png",
                    height: 220,
                  ),
                  h30,
                  Text(
                    "You don't have a business Account",
                    style: primaryFont.copyWith(
                        color: Colors.black54, fontSize: 17),
                  ),
                  h15,
                  Text(
                    "Create your business account",
                    style: primaryFont.copyWith(
                        color: Colors.black54, fontSize: 14),
                  ),
                  h15,
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30),
                    child: InkWell(
                      onTap: () {
                        Get.to(() => AddBankAccountView());
                      },
                      child: Container(
                        height: 50,
                       
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: const [
                              BoxShadow(blurRadius: 2, color: Colors.grey)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/icons/290147_bank_cash_finance_money_payment_icon.png",
                                  height: 27,
                                ),
                                w25,
                                Text(
                                  "Link Bank Account",
                                  style: primaryFont.copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black45),
                                )
                              ]),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30),
                    child: InkWell(
                      onTap: () {
                        Get.to(() => AddBankAccountView());
                      },
                      child: Container(
                        height: 50,
                        
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: const [
                              BoxShadow(blurRadius: 2, color: Colors.grey)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/icons/290147_bank_cash_finance_money_payment_icon.png",
                                  height: 27,
                                ),
                                w25,
                                Text(
                                  "Apply New Business Account",
                                  style: primaryFont.copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black45),
                                )
                              ]),
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
