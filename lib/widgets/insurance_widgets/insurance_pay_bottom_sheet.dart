import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/const/helpers/space_helpers.dart';
import 'package:konnect/controllers/transaction_controller.dart';
import 'package:konnect/views/payment_insurance_view/payment_insurane_view.dart';
import 'package:konnect/widgets/banking_widgets/validate_mobile_number_bottom_sheet_2.dart';

void insurancePay(
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
                Expanded(
                  flex: 4,
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        h20,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              "assets/icons/insurance/PhonePe-Logo.wine.png",
                              height: 30,
                            ),
                            Image.asset(
                              "assets/icons/insurance/kisspng-google-pay-send-mobile-payment-5ae7ece08dd573.861747441525148896581.png",
                              height: 30,
                            ),
                            Image.asset(
                              "assets/icons/insurance/Paytm-Logo.wine.png",
                              height: 30,
                            )
                          ],
                        ),
                        h35,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              "assets/icons/insurance/download.png",
                              height: 40,
                            ),
                            Image.asset(
                              "assets/icons/insurance/PngItem_1531160.png",
                              height: 40,
                            ),
                            Container(
                              width: 40,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: () {
                      Get.offAll(() => PaymentInsuranceView());
                    },
                    child: Container(
                      color: primaryColor,
                      alignment: Alignment.center,
                      child: Text(
                        "PAY",
                        style: primaryFont.copyWith(
                            color: Colors.white, fontSize: 17),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ));
    },
  );
}
