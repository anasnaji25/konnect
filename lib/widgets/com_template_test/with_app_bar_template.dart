import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/controllers/transaction_controller.dart';
import 'package:konnect/views/lading_view/lets_get_started_screen.dart';
import 'package:konnect/widgets/transaction_widgets/filter_bottom_sheet.dart';
import 'package:konnect/widgets/transaction_widgets/transactions_card.dart';

class CommonAppBarTemplate extends StatefulWidget {
  const CommonAppBarTemplate({super.key});

  @override
  State<CommonAppBarTemplate> createState() => _CommonAppBarTemplateState();
}

class _CommonAppBarTemplateState extends State<CommonAppBarTemplate> {
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
