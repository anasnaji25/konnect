import 'package:flutter/material.dart';
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

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
                    padding: const EdgeInsets.only(left: 15, top: 50),
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
                                Text(
                                  "Hey Nicky",
                                  style: primaryFont.copyWith(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(
                                  Icons.volume_up,
                                  color: Colors.white,
                                  size: 28,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
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
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: InkWell(
                            onTap: () {
                              Get.to(() => ProfileView());
                            },
                            child: Image.asset(
                              "assets/icons/Group 1353.png",
                              height: 80,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: secondaryColor.withOpacity(0.1),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              "Features",
                              style: primaryFont.copyWith(fontSize: 20),
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
                              Get.to(() => MyQrCodeView());
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/icons/Group 1356.png",
                                  height: 50,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Show QR",
                                  style: primaryFont.copyWith(fontSize: 9),
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
                                  "assets/icons/Group 1357.png",
                                  height: 50,
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
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(() => PaymentInsuranceView());
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/icons/Group 1358.png",
                                  height: 50,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Insurance",
                                  style: primaryFont.copyWith(fontSize: 9),
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(() => LoanApplyView());
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/icons/Group 1359.png",
                                  height: 50,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Loans",
                                  style: primaryFont.copyWith(fontSize: 9),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              "Recent Transactions",
                              style: primaryFont.copyWith(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Container(
                          height: 60,
                          width: size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/icons/icons-1.png",
                                      color: Colors.purple,
                                      height: 40,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Nick Ram",
                                          style: primaryFont.copyWith(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "11 nov 2022",
                                          style: primaryFont.copyWith(
                                              fontSize: 8,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "₹5666",
                                      style: primaryFont.copyWith(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Recevived",
                                      style: primaryFont.copyWith(
                                          fontSize: 8,
                                          color: Colors.green,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TransactionHistoryCard(
                        color: Colors.orange,
                        flag: "Sended",
                        price: "₹6544",
                        fcolor: Colors.red,
                        subTitle: "10 nov 2022",
                        title: "Mani Ram",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TransactionHistoryCard(
                        color: Colors.teal,
                        flag: "Recevied",
                        price: "₹784",
                        fcolor: Colors.green,
                        subTitle: "9 nov 2022",
                        title: "Raja mani",
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
            top: size.height * 0.2,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 160,
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "My Total Balance",
                            style: primaryFont.copyWith(
                                fontSize: 13, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "\$4643",
                            style: primaryFont.copyWith(
                                fontSize: 13, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(() => ShareStoreView());
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/icons/Group 1354.png",
                                height: 40,
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
                                height: 40,
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
                            Get.to(() => ChatListVew());
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/icons/Group 1350.png",
                                height: 40,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Customer Chat",
                                style: primaryFont.copyWith(fontSize: 8),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(const ManageStaffAndRolesView());
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/icons/Group 1351.png",
                                height: 40,
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
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
