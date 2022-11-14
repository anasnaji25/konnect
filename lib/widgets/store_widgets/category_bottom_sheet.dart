import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/controllers/transaction_controller.dart';

void selectCategory(
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
          height: 470,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 15, 5, 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Select Your Business Category",
                        style: primaryFont.copyWith(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                      InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: const Icon(
                            CupertinoIcons.xmark_circle,
                            color: Colors.black,
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Fuel",
                        style: primaryFont.copyWith(fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Cowin",
                        style: primaryFont.copyWith(fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Travel",
                        style: primaryFont.copyWith(fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Reatail and Shopping",
                        style: primaryFont.copyWith(fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "GC",
                        style: primaryFont.copyWith(fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Agriculture",
                        style: primaryFont.copyWith(fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Financial Services",
                        style: primaryFont.copyWith(fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Hospitality",
                        style: primaryFont.copyWith(fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Food",
                        style: primaryFont.copyWith(fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Others",
                        style: primaryFont.copyWith(fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Divider(),
              ],
            ),
          ));
    },
  );
}
