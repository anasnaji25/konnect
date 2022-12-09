import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/controllers/auth_controller.dart';

void choosePanCardType(size, context) {
  final authController = Get.find<AuthController>();
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
          height: 270,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 15, 5, 5),
            child: Obx(
              () => Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "Choose the Pan Card Types",
                          style: primaryFont.copyWith(
                              color: Colors.black87,
                              fontWeight: FontWeight.w600,
                              fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      authController.panCardType(0);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "Partnerships or Firms",
                            style: primaryFont.copyWith(
                                color: Colors.black87,
                                fontWeight: FontWeight.w300,
                                fontSize: 17),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                              height: 16,
                              width: 16,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(color: Colors.black)),
                              child: authController.panCardType.value == 0
                                  ? Container(
                                      height: 10,
                                      width: 10,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: Colors.green),
                                      child: const Icon(Icons.check,
                                          color: Colors.white, size: 9),
                                    )
                                  : Container()),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Divider(),
                  const SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    onTap: () {
                      authController.panCardType(1);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "Company",
                            style: primaryFont.copyWith(
                                color: Colors.black87,
                                fontWeight: FontWeight.w300,
                                fontSize: 17),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                              height: 16,
                              width: 16,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(color: Colors.black)),
                              child: authController.panCardType.value == 1
                                  ? Container(
                                      height: 10,
                                      width: 10,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: Colors.green),
                                      child: const Icon(Icons.check,
                                          color: Colors.white, size: 9),
                                    )
                                  : Container()),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Divider(),
                  const SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    onTap: () {
                      authController.panCardType(2);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "Individual",
                            style: primaryFont.copyWith(
                                color: Colors.black87,
                                fontWeight: FontWeight.w300,
                                fontSize: 17),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                              height: 16,
                              width: 16,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(color: Colors.black)),
                              child: authController.panCardType.value == 2
                                  ? Container(
                                      height: 10,
                                      width: 10,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: Colors.green),
                                      child: const Icon(Icons.check,
                                          color: Colors.white, size: 9),
                                    )
                                  : Container()),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Divider(),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ));
    },
  );
}
