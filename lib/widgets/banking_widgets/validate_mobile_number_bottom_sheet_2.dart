import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/const/helpers/space_helpers.dart';
import 'package:konnect/controllers/transaction_controller.dart';
import 'package:konnect/views/banking_page_view/manage_bank_accounts_view.dart';

redirectToNext() async {
  await Future.delayed(Duration(seconds: 2));
  Get.back();
  Get.to(() => ManageBankAccounts());
}

void validateMobileNumber2(
  context,
) {
  redirectToNext();
  showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
    backgroundColor: Colors.white,
    context: context,
    isScrollControlled: true,
    // Also default
    builder: (context) {
      return SizedBox(
          height: 300,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 15, 5, 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  "assets/icons/Group 1381.png",
                  height: 100,
                ),
                h20,
                Text(
                  "Validate Mobile Number",
                  style: primaryFont.copyWith(
                      fontWeight: FontWeight.w600, fontSize: 22),
                ),
                h15,
                Text(
                  "Do not close or navigate away from this screen",
                  textAlign: TextAlign.center,
                  style: primaryFont.copyWith(fontSize: 17),
                ),
                h20,
              ],
            ),
          ));
    },
  );
}
