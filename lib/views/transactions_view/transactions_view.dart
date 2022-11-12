import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/controllers/transaction_controller.dart';
import 'package:konnect/views/lading_view/lets_get_started_screen.dart';
import 'package:konnect/widgets/transaction_widgets/filter_bottom_sheet.dart';
import 'package:konnect/widgets/transaction_widgets/transactions_card.dart';

class TransactionView extends StatefulWidget {
  const TransactionView({super.key});

  @override
  State<TransactionView> createState() => _TransactionViewState();
}

class _TransactionViewState extends State<TransactionView> {
  final transactionController = Get.find<TransactionController>();

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
            child: Obx(() => Column(
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
                                Image.asset(
                                  "assets/icons/Group 1353.png",
                                  height: 60,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Username",
                                      style: primaryFont.copyWith(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Balance: ₹345",
                                      style: primaryFont.copyWith(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children:  [
                              const  Icon(
                                  Icons.search,
                                  color: Color.fromARGB(255, 122, 122, 122),
                                ),
                              const  SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                  onTap: (){
                                    filterBottomSheet(context,);

                                  },
                                  child:const Icon(
                                    Icons.tune,
                                    color: Color.fromARGB(255, 122, 122, 122),
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
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            transactionController.transactionIndex(0);
                          },
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                    color: transactionController
                                                .transactionIndex.value ==
                                            0
                                        ? Colors.white
                                        : Colors.grey),
                                color: transactionController
                                            .transactionIndex.value ==
                                        0
                                    ? const Color(0xff543DE0)
                                    : Colors.white),
                            alignment: Alignment.center,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: Text(
                                "Transaction",
                                style: primaryFont.copyWith(
                                    color: transactionController
                                                .transactionIndex.value ==
                                            0
                                        ? Colors.white
                                        : Colors.grey,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            transactionController.transactionIndex(1);
                          },
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                    color: transactionController
                                                .transactionIndex.value ==
                                            1
                                        ? Colors.white
                                        : Colors.grey),
                                color: transactionController
                                            .transactionIndex.value ==
                                        1
                                    ? const Color(0xff543DE0)
                                    : Colors.white),
                            alignment: Alignment.center,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: Text(
                                "Settlements",
                                style: primaryFont.copyWith(
                                    color: transactionController
                                                .transactionIndex.value ==
                                            1
                                        ? Colors.white
                                        : Colors.grey,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Divider(
                      thickness: 1.5,
                      color: Colors.teal.withOpacity(0.3),
                    ),
                    if (transactionController.transactionIndex.value == 1)
                      Column(
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          Image.asset(
                            "assets/icons/Group 64.png",
                            height: 250,
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Text(
                            "No transactions found",
                            style: primaryFont.copyWith(
                                fontWeight: FontWeight.w600, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "There are no transactions for the selected\nperiod. You can change the dates using dates\nfilter on top.",
                            textAlign: TextAlign.center,
                            style: primaryFont.copyWith(
                                fontWeight: FontWeight.w200, fontSize: 14),
                          ),
                        ],
                      ),
                    if (transactionController.transactionIndex.value == 0)
                      Column(
                        children: [
                          TransactionsCard(
                            color: Colors.deepPurple,
                            fcolor: Colors.green,
                            flag: "Received",
                            price: "₹5666",
                            subTitle: "11 nov 2022",
                            title: "Nick Ram",
                          ),
                          const Padding(
                            padding:  EdgeInsets.only(left: 10,right: 10),
                            child: Divider(
                              thickness: 1.5,
                            ),
                          ),
                          TransactionsCard(
                            color: Colors.orange,
                            fcolor: Colors.red,
                            flag: "sended",
                            price: "₹7866",
                            subTitle: "10 nov 2022",
                            title: "Raja mani",
                          ),
                        ],
                      )
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
