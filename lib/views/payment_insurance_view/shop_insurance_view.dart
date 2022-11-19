import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/const/helpers/space_helpers.dart';
import 'package:konnect/controllers/transaction_controller.dart';
import 'package:konnect/views/payment_insurance_view/insurance_form_page.dart';
import 'package:konnect/views/payment_insurance_view/shop_insurance_preview.dart';

class ShopInsuranceView extends StatefulWidget {
  const ShopInsuranceView({super.key});

  @override
  State<ShopInsuranceView> createState() => _ShopInsuranceViewState();
}

class _ShopInsuranceViewState extends State<ShopInsuranceView> {
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
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(() => ShoplInsuranceView());
                        },
                        child: Container(
                          height: 130,
                          width: 135,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 3,
                                    color: Colors.grey.withOpacity(0.3))
                              ]),
                          child: Column(
                            children: [
                              h15,
                              Image.asset(
                                "assets/icons/insurance/Group 1394 (2).png",
                                height: 30,
                              ),
                              h5,
                              Text(
                                "₹ upto 1 lakhs",
                                style: primaryFont.copyWith(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              h10,
                              Container(
                                height: 35,
                                width: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 5,
                                          color: Colors.grey.withOpacity(0.5))
                                    ]),
                                alignment: Alignment.center,
                                child: Text(
                                  "₹213",
                                  style: primaryFont.copyWith(
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 130,
                        width: 135,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.grey.withOpacity(0.3))
                            ]),
                        child: Column(
                          children: [
                            h15,
                            Image.asset(
                              "assets/icons/insurance/Group 1394 (2).png",
                              height: 30,
                            ),
                            h5,
                            Text(
                              "₹1 - 3 lakhs",
                              style: primaryFont.copyWith(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            h10,
                            Container(
                              height: 35,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 5,
                                        color: Colors.grey.withOpacity(0.5))
                                  ]),
                              alignment: Alignment.center,
                              child: Text(
                                "₹876",
                                style: primaryFont.copyWith(
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  h20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 130,
                        width: 135,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.grey.withOpacity(0.3))
                            ]),
                        child: Column(
                          children: [
                            h15,
                            Image.asset(
                              "assets/icons/insurance/Group 1394 (2).png",
                              height: 30,
                            ),
                            h5,
                            Text(
                              "₹3 - 5 lakhs",
                              style: primaryFont.copyWith(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            h10,
                            Container(
                              height: 35,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 5,
                                        color: Colors.grey.withOpacity(0.5))
                                  ]),
                              alignment: Alignment.center,
                              child: Text(
                                "₹2113",
                                style: primaryFont.copyWith(
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 130,
                        width: 135,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.grey.withOpacity(0.3))
                            ]),
                        child: Column(
                          children: [
                            h15,
                            Image.asset(
                              "assets/icons/insurance/Group 1394 (2).png",
                              height: 30,
                            ),
                            h5,
                            Text(
                              "₹5 - 8 lakhs",
                              style: primaryFont.copyWith(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            h10,
                            Container(
                              height: 35,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 5,
                                        color: Colors.grey.withOpacity(0.5))
                                  ]),
                              alignment: Alignment.center,
                              child: Text(
                                "₹2213",
                                style: primaryFont.copyWith(
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  h20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 130,
                        width: 135,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.grey.withOpacity(0.3))
                            ]),
                        child: Column(
                          children: [
                            h15,
                            Image.asset(
                              "assets/icons/insurance/Group 1394 (2).png",
                              height: 30,
                            ),
                            h5,
                            Text(
                              "₹8 - 10 lakhs",
                              style: primaryFont.copyWith(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            h10,
                            Container(
                              height: 35,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 5,
                                        color: Colors.grey.withOpacity(0.5))
                                  ]),
                              alignment: Alignment.center,
                              child: Text(
                                "₹2765",
                                style: primaryFont.copyWith(
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 130,
                        width: 135,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.grey.withOpacity(0.3))
                            ]),
                        child: Column(
                          children: [
                            h15,
                            Image.asset(
                              "assets/icons/insurance/Group 1394 (2).png",
                              height: 30,
                            ),
                            h5,
                            Text(
                              "₹10 - 15 lakhs",
                              style: primaryFont.copyWith(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            h10,
                            Container(
                              height: 35,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 5,
                                        color: Colors.grey.withOpacity(0.5))
                                  ]),
                              alignment: Alignment.center,
                              child: Text(
                                "₹12213",
                                style: primaryFont.copyWith(
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  h20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 130,
                        width: 135,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.grey.withOpacity(0.3))
                            ]),
                        child: Column(
                          children: [
                            h15,
                            Image.asset(
                              "assets/icons/insurance/Group 1394 (2).png",
                              height: 30,
                            ),
                            h5,
                            Text(
                              "₹ 5 - 20 lakhs",
                              style: primaryFont.copyWith(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            h10,
                            Container(
                              height: 35,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 5,
                                        color: Colors.grey.withOpacity(0.5))
                                  ]),
                              alignment: Alignment.center,
                              child: Text(
                                "₹27213",
                                style: primaryFont.copyWith(
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 130,
                        width: 135,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.grey.withOpacity(0.3))
                            ]),
                        child: Column(
                          children: [
                            h15,
                            Image.asset(
                              "assets/icons/insurance/Group 1394 (2).png",
                              height: 30,
                            ),
                            h5,
                            Text(
                              "₹20 - 25 lakhs",
                              style: primaryFont.copyWith(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            h10,
                            Container(
                              height: 35,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 5,
                                        color: Colors.grey.withOpacity(0.5))
                                  ]),
                              alignment: Alignment.center,
                              child: Text(
                                "₹55033",
                                style: primaryFont.copyWith(
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
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
