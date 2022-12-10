import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/controllers/transaction_controller.dart';

void filterBottomSheet(
  context,
) {
  final transactionController = Get.find<TransactionController>();
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
          height: 500,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 15, 5, 5),
            child: Obx(() => Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Filters",
                            style: primaryFont.copyWith(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          InkWell(
                            onTap: () {
                              transactionController.clearAll();
                            },
                            child: Text(
                              "CLear all".toUpperCase(),
                              style: primaryFont.copyWith(color: Colors.blue),
                            ),
                          )
                        ],
                      ),
                    ),
                   const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 1,
                      color: Colors.grey,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 350,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors.grey.withOpacity(0.3),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        transactionController.filterIndex(0);
                                      },
                                      child: Container(
                                        height: 40,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topLeft: Radius.circular(7),
                                                    bottomLeft:
                                                        Radius.circular(7)),
                                            color: transactionController
                                                        .filterIndex.value ==
                                                    0
                                                ? Colors.white
                                                : Colors.transparent),
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: Text(
                                            "Status",
                                            style: primaryFont.copyWith(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        transactionController.filterIndex(1);
                                      },
                                      child: Container(
                                        height: 40,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topLeft: Radius.circular(7),
                                                    bottomLeft:
                                                        Radius.circular(7)),
                                            color: transactionController
                                                        .filterIndex.value ==
                                                    1
                                                ? Colors.white
                                                : Colors.transparent),
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: Text(
                                            "Instrument",
                                            style: primaryFont.copyWith(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        transactionController.filterIndex(2);
                                      },
                                      child: Container(
                                        height: 40,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topLeft: Radius.circular(7),
                                                    bottomLeft:
                                                        Radius.circular(7)),
                                            color: transactionController
                                                        .filterIndex.value ==
                                                    2
                                                ? Colors.white
                                                : Colors.transparent),
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: Text(
                                            "QR Code",
                                            style: primaryFont.copyWith(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        transactionController.filterIndex(3);
                                      },
                                      child: Container(
                                        height: 40,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topLeft: Radius.circular(7),
                                                    bottomLeft:
                                                        Radius.circular(7)),
                                            color: transactionController
                                                        .filterIndex.value ==
                                                    3
                                                ? Colors.white
                                                : Colors.transparent),
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: Text(
                                            "Settlement\nStatus",
                                            style: primaryFont.copyWith(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ),
                                 
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  if (transactionController.filterIndex.value ==
                                      0)
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              transactionController.isCompleted(
                                                  !transactionController
                                                      .isCompleted.value);
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                  "Completed",
                                                  style: primaryFont.copyWith(
                                                      fontSize: 15),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Checkbox(
                                                    side: const BorderSide(
                                                        color: Colors.white),
                                                    value: transactionController
                                                        .isCompleted.value,
                                                    onChanged: (val) {}),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              transactionController.isPending(
                                                  !transactionController
                                                      .isPending.value);
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                  "Pending",
                                                  style: primaryFont.copyWith(
                                                      fontSize: 15),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Checkbox(
                                                    side: const BorderSide(
                                                        color: Colors.white),
                                                    value: transactionController
                                                        .isPending.value,
                                                    onChanged: (val) {}),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              transactionController.isFailed(
                                                  !transactionController
                                                      .isFailed.value);
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                  "Failed",
                                                  style: primaryFont.copyWith(
                                                      fontSize: 15),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Checkbox(
                                                    side: const BorderSide(
                                                        color: Colors.white),
                                                    value: transactionController
                                                        .isFailed.value,
                                                    onChanged: (val) {}),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              transactionController.isCancelled(
                                                  !transactionController
                                                      .isCancelled.value);
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                  "Cencelled",
                                                  style: primaryFont.copyWith(
                                                      fontSize: 15),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Checkbox(
                                                    side: const BorderSide(
                                                        color: Colors.white),
                                                    value: transactionController
                                                        .isCancelled.value,
                                                    onChanged: (val) {}),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  if (transactionController.filterIndex.value ==
                                      1)
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              transactionController.isupi(
                                                  !transactionController
                                                      .isupi.value);
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                  "UPI",
                                                  style: primaryFont.copyWith(
                                                      fontSize: 15),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Checkbox(
                                                    side: const BorderSide(
                                                        color: Colors.white),
                                                    value: transactionController
                                                        .isupi.value,
                                                    onChanged: (val) {}),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          // InkWell(
                                          //   onTap: () {
                                          //     transactionController.isWallet(
                                          //         !transactionController
                                          //             .isWallet.value);
                                          //   },
                                          //   child: Row(
                                          //     mainAxisAlignment:
                                          //         MainAxisAlignment.spaceAround,
                                          //     children: [
                                          //       Text(
                                          //         "Wallet",
                                          //         style: primaryFont.copyWith(
                                          //             fontSize: 15),
                                          //       ),
                                          //       const SizedBox(
                                          //         width: 10,
                                          //       ),
                                          //       Checkbox(
                                          //           side: const BorderSide(
                                          //               color: Colors.white),
                                          //           value: transactionController
                                          //               .isWallet.value,
                                          //           onChanged: (val) {}),
                                          //     ],
                                          //   ),
                                          // ),
                                          // const SizedBox(
                                          //   height: 10,
                                          // ),
                                          // InkWell(
                                          //   onTap: () {
                                          //     transactionController
                                          //         .iscreditCard(
                                          //             !transactionController
                                          //                 .iscreditCard.value);
                                          //   },
                                          //   child: Row(
                                          //     mainAxisAlignment:
                                          //         MainAxisAlignment.spaceAround,
                                          //     children: [
                                          //       Text(
                                          //         "Credit Card",
                                          //         style: primaryFont.copyWith(
                                          //             fontSize: 15),
                                          //       ),
                                          //       const SizedBox(
                                          //         width: 10,
                                          //       ),
                                          //       Checkbox(
                                          //           side: const BorderSide(
                                          //               color: Colors.white),
                                          //           value: transactionController
                                          //               .iscreditCard.value,
                                          //           onChanged: (val) {}),
                                          //     ],
                                          //   ),
                                          // ),
                                          // const SizedBox(
                                          //   height: 10,
                                          // ),
                                          // InkWell(
                                          //   onTap: () {
                                          //     transactionController.isDebitCard(
                                          //         !transactionController
                                          //             .isDebitCard.value);
                                          //   },
                                          //   child: Row(
                                          //     mainAxisAlignment:
                                          //         MainAxisAlignment.spaceAround,
                                          //     children: [
                                          //       Text(
                                          //         "Debit card",
                                          //         style: primaryFont.copyWith(
                                          //             fontSize: 15),
                                          //       ),
                                          //       const SizedBox(
                                          //         width: 10,
                                          //       ),
                                          //       Checkbox(
                                          //           side: const BorderSide(
                                          //               color: Colors.white),
                                          //           value: transactionController
                                          //               .isDebitCard.value,
                                          //           onChanged: (val) {}),
                                          //     ],
                                          //   ),
                                          // ),
                                        ],
                                      ),
                                    ),
                                  if (transactionController.filterIndex.value ==
                                      2)
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              transactionController.isQrCode(
                                                  !transactionController
                                                      .isQrCode.value);
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                  "Q17253882",
                                                  style: primaryFont.copyWith(
                                                      fontSize: 15),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Checkbox(
                                                    side: const BorderSide(
                                                        color: Colors.white),
                                                    value: transactionController
                                                        .isQrCode.value,
                                                    onChanged: (val) {}),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  if (transactionController.filterIndex.value ==
                                      3)
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              transactionController.isUnsettled(
                                                  !transactionController
                                                      .isUnsettled.value);
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                  "Unsettled",
                                                  style: primaryFont.copyWith(
                                                      fontSize: 15),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Checkbox(
                                                    side: const BorderSide(
                                                        color: Colors.white),
                                                    value: transactionController
                                                        .isUnsettled.value,
                                                    onChanged: (val) {}),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  if (transactionController.filterIndex.value ==
                                      4)
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              transactionController.isCustom(
                                                  !transactionController
                                                      .isCustom.value);
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                  "Custom",
                                                  style: primaryFont.copyWith(
                                                      fontSize: 15),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Checkbox(
                                                    side: const BorderSide(
                                                        color: Colors.white),
                                                    value: transactionController
                                                        .isCustom.value,
                                                    onChanged: (val) {}),
                                              ],
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              transactionController.isToday(
                                                  !transactionController
                                                      .isToday.value);
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                  "Today",
                                                  style: primaryFont.copyWith(
                                                      fontSize: 15),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Checkbox(
                                                    side: const BorderSide(
                                                        color: Colors.white),
                                                    value: transactionController
                                                        .isToday.value,
                                                    onChanged: (val) {}),
                                              ],
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              transactionController.isYesterday(
                                                  !transactionController
                                                      .isYesterday.value);
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                  "Yesterday",
                                                  style: primaryFont.copyWith(
                                                      fontSize: 15),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Checkbox(
                                                    side: const BorderSide(
                                                        color: Colors.white),
                                                    value: transactionController
                                                        .isYesterday.value,
                                                    onChanged: (val) {}),
                                              ],
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              transactionController.islast7d(
                                                  !transactionController
                                                      .islast7d.value);
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                  "Last 7 days",
                                                  style: primaryFont.copyWith(
                                                      fontSize: 15),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Checkbox(
                                                    side: const BorderSide(
                                                        color: Colors.white),
                                                    value: transactionController
                                                        .islast7d.value,
                                                    onChanged: (val) {}),
                                              ],
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              transactionController.islast30d(
                                                  !transactionController
                                                      .islast30d.value);
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                  "Last 30 days",
                                                  style: primaryFont.copyWith(
                                                      fontSize: 15),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Checkbox(
                                                    side: const BorderSide(
                                                        color: Colors.white),
                                                    value: transactionController
                                                        .islast30d.value,
                                                    onChanged: (val) {}),
                                              ],
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              transactionController.islast6m(
                                                  !transactionController
                                                      .islast6m.value);
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                  "Last 6 months",
                                                  style: primaryFont.copyWith(
                                                      fontSize: 15),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Checkbox(
                                                    side: const BorderSide(
                                                        color: Colors.white),
                                                    value: transactionController
                                                        .islast6m.value,
                                                    onChanged: (val) {}),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: Text(
                              "Cancel".toUpperCase(),
                              style: primaryFont.copyWith(
                                  fontWeight: FontWeight.w600, fontSize: 15),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              // Get.off(() => LetsGetStartedView());
                              Get.back();
                            },
                            child: Container(
                              height: 40,
                              width: 120,
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
                        ],
                      ),
                    )
                  ],
                )),
          ));
    },
  );
}
