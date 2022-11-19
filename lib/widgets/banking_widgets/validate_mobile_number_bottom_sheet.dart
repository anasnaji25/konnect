import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/const/helpers/space_helpers.dart';
import 'package:konnect/controllers/transaction_controller.dart';
import 'package:konnect/widgets/banking_widgets/validate_mobile_number_bottom_sheet_2.dart';

void validateMobileNumber(
  context,
) {
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
                Text(
                  "Validate Mobile Number",
                  style: primaryFont.copyWith(
                      fontWeight: FontWeight.w600, fontSize: 22),
                ),
                h15,
                Text(
                  "We need to send an SMS from your mobile number to validate and link your bank account. Standard SMS charges may apply.",
                  textAlign: TextAlign.center,
                  style: primaryFont.copyWith(fontSize: 17),
                ),
                h20,
                Container(
                  height: 120,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 20),
                        child: InkWell(
                          onTap: () {
                            Get.back();
                            validateMobileNumber2(
                              context,
                            );
                          },
                          child: Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                gradient: LinearGradient(
                                    colors: [secondaryColor, primaryColor])),
                            alignment: Alignment.center,
                            child: Text(
                              "CONTINUE",
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
                            width: MediaQuery.of(context).size.width,
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
                )
              ],
            ),
          ));
    },
  );
}
