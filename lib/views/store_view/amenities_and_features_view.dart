import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/const/helpers/space_helpers.dart';
import 'package:konnect/controllers/transaction_controller.dart';

class AmenitiesAndFeaturesView extends StatefulWidget {
  const AmenitiesAndFeaturesView({super.key});

  @override
  State<AmenitiesAndFeaturesView> createState() =>
      _AmenitiesAndFeaturesViewState();
}

class _AmenitiesAndFeaturesViewState extends State<AmenitiesAndFeaturesView> {
  bool isCheck = true;
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
                                    "Amenities & Features",
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
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "Amenities & Select amenities and special\nfeatures you offer.",
                          style: primaryFont.copyWith(fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                  h15,
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/icons/Layer_2.png",
                              height: 10,
                            ),
                            w10,
                            Text(
                              "Vehicle Parking",
                              style: primaryFont.copyWith(
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        Checkbox(
                            activeColor: Colors.green,
                            value: isCheck,
                            onChanged: (val) {
                              setState(() {
                                isCheck = val!;
                              });
                            })
                      ],
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
                    // Get.to(() => const PreviewYourOfferView());
                    Get.back();
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
                  onTap: () {
                    // Get.to(() => const SignInView());
                    Get.back();
                  },
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
      ),
    );
  }
}
