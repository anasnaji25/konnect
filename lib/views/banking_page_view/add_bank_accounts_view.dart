import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/const/helpers/space_helpers.dart';
import 'package:konnect/controllers/transaction_controller.dart';
import 'package:konnect/widgets/banking_widgets/validate_mobile_number_bottom_sheet.dart';

class AddBankAccountView extends StatefulWidget {
  const AddBankAccountView({super.key});

  @override
  State<AddBankAccountView> createState() => _AddBankAccountViewState();
}

class _AddBankAccountViewState extends State<AddBankAccountView> {
  List<BankLisModel> banksList = [
    BankLisModel(icon: "assets/icons/ew.png", name: "Indian Bank"),
    BankLisModel(
        icon:
            "assets/icons/kisspng-indian-overseas-bank-indian-bank-branch-abroad-vector-5adba0a5ee2a18.4564437415243429499755.png",
        name: "indian overseas bank"),
    BankLisModel(icon: "assets/icons/pngwing.com (5).png", name: "Canara Bank"),
    BankLisModel(
        icon: "assets/icons/pngegg (2).png", name: "punjab national bankk"),
    BankLisModel(icon: "assets/icons/NoPath.png", name: "city union bank"),
    BankLisModel(icon: "assets/icons/pngwing.com (6).png", name: "HDFC Bank"),
    BankLisModel(
        icon: "assets/icons/kvb-dlite-icon.png", name: "karur Vysya Bank"),
    BankLisModel(
        icon: "assets/icons/pinpng.com-bank-png-718802.png", name: "Axis Bank"),
  ];

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
                                    "Add Bank Accont",
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Select Your Bank Linked",
                          style: primaryFont.copyWith(
                              fontWeight: FontWeight.w600, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  h10,
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      height: 45,
                      width: size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.black54)),
                      child: Row(
                        children: [
                          w10,
                          Icon(
                            Icons.search,
                            size: 24,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration.collapsed(
                                  hintText: "Search by bank name"),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  h20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Popular Banks",
                          style: primaryFont.copyWith(
                              fontWeight: FontWeight.w600, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  h10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          validateMobileNumber(
                            context,
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/Group 1379.png",
                              height: 50,
                            ),
                            h5,
                            Text(
                              "HDFC Bank",
                              style: primaryFont.copyWith(fontSize: 11),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          validateMobileNumber(
                            context,
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/Group 1380.png",
                              height: 50,
                            ),
                            h5,
                            Text(
                              "ICICI Bank",
                              style: primaryFont.copyWith(fontSize: 11),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          validateMobileNumber(
                            context,
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/NoPath - Copy (2).png",
                              height: 50,
                            ),
                            h5,
                            Text(
                              "SBI Bank",
                              style: primaryFont.copyWith(fontSize: 11),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          validateMobileNumber(
                            context,
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/NoPath - Copy (3).png",
                              height: 50,
                            ),
                            h5,
                            Text(
                              "CUB Bank",
                              style: primaryFont.copyWith(fontSize: 11),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  h20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Other Banks",
                          style: primaryFont.copyWith(
                              fontWeight: FontWeight.w600, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  h10,
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: banksList.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            validateMobileNumber(
                              context,
                            );
                          },
                          child: Container(
                            height: 60,
                            width: size.width,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 34),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        banksList[index].icon,
                                        height: 30,
                                      ),
                                      w20,
                                      Text(
                                        banksList[index].name,
                                        style: primaryFont.copyWith(
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                ),
                                h5,
                                Divider()
                              ],
                            ),
                          ),
                        );
                      })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BankLisModel {
  String icon;
  String name;

  BankLisModel({required this.icon, required this.name});
}
