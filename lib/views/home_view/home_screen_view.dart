import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/views/chat_view/chat_list_view.dart';
import 'package:konnect/views/loan_apply_view/loan_apply_view.dart';
import 'package:konnect/views/my_qr_code_view/my_qr_code_view.dart';
import 'package:konnect/views/payment_insurance_view/payment_insurane_view.dart';
import 'package:konnect/views/payment_link_view/payment_link_view.dart';
import 'package:konnect/views/profile_view/profile_view.dart';
import 'package:konnect/views/share_store_views/share_store_view.dart';
import 'package:konnect/views/staff_management_view/staff_management_view.dart';
import 'package:konnect/views/store_view/store_updates_view.dart';
import 'package:konnect/widgets/transaction_widgets/transaction_history_card.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({super.key});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [secondaryColor, primaryColor])),
                  child: Padding(
                    padding: EdgeInsets.only(left: 15, top: size.height * 0.05),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: InkWell(
                                    onTap: () {
                                      Get.to(() => ProfileView());
                                    },
                                    child: Image.asset(
                                      "assets/icons/Group 1353.png",
                                      height: 60,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Hey Nicky",
                                  style: primaryFont.copyWith(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                const Icon(
                                  Icons.volume_up,
                                  color: Colors.white,
                                  size: 23,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "What will you do today?",
                              style: primaryFont.copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  color: secondaryColor.withOpacity(0.1),
                  child: Column(
                    children: [
                       SizedBox(
                        height: 40.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Container(
                          height: 45,
                          width: size.width,
                          decoration: BoxDecoration(
                              color: secondaryColor,
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(7)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "My Total Balance",
                                    style: primaryFont.copyWith(
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "₹4500",
                                    style: primaryFont.copyWith(
                                        color: Colors.white),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                       SizedBox(
                        height: 15.h,
                      ),
                      Image.asset(
                        "assets/icons/Group 1731.png",
                        height: 200.h,
                        fit: BoxFit.fitHeight,
                      ),
                       SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              "Features",
                              style: primaryFont.copyWith(fontSize: 20.sp),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(const ManageStaffAndRolesView());
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/icons/Group 1351.png",
                                  height: 44,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Manage Staff",
                                  style: primaryFont.copyWith(fontSize: 8),
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(() => ShareStoreView());
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/icons/Group 1354.png",
                                  height: 44,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Share Store",
                                  style: primaryFont.copyWith(fontSize: 8),
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(() => StoreUpdatesView());
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/icons/Group 1355.png",
                                  height: 44,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Store Update",
                                  style: primaryFont.copyWith(fontSize: 8),
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(() => PaymentLinkView());
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/icons/Group 1732.png",
                                  height: 44,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Payment Link",
                                  style: primaryFont.copyWith(fontSize: 9),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                       SizedBox(
                        height: 20.h,
                      ),

                      Image.asset("assets/icons/rank-vs-score-banner.png")
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
            top: size.height * 0.18,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                height: 70,
                width: size.width,
                decoration: BoxDecoration(
                    color: primaryColor,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(7)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Internet is Active",
                            style: primaryFont.copyWith(
                                color: Colors.white, fontSize: 15),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 2),
                            child: Image.asset("assets/icons/signal.png"),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Konnect is Active",
                            style: primaryFont.copyWith(
                                color: Colors.white, fontSize: 15),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 2),
                            child: Image.asset("assets/icons/signal.png"),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
