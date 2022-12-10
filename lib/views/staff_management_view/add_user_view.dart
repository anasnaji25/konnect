import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/const/helpers/space_helpers.dart';
import 'package:konnect/const/helpers/text_field_style_helpers.dart';
import 'package:konnect/views/staff_management_view/staff_management_view.dart';
import 'package:konnect/views/staff_management_view/user_added_succes_page.dart';

class AddUserView extends StatefulWidget {
  const AddUserView({super.key});

  @override
  State<AddUserView> createState() => _AddUserViewState();
}

class _AddUserViewState extends State<AddUserView> {
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
                                    "Add User",
                                    style: primaryFont.copyWith(
                                        fontSize: 18,
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
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "User Details",
                          style: primaryFont.copyWith(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Phone Number",
                          style: primaryFont.copyWith(
                              color: Colors.blue, fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                  h5,
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Phone number",
                          enabledBorder: enabledBorder,
                          focusedBorder: focusedBorder),
                    ),
                  ),
                  h15,
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Name",
                          style: primaryFont.copyWith(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  h5,
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Name",
                          enabledBorder: enabledBorder,
                          focusedBorder: focusedBorder),
                    ),
                  ),
                  h10,
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Optional",
                          style: primaryFont.copyWith(
                              color: Colors.black45, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  h15,
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "User role",
                          style: primaryFont.copyWith(
                              color: Colors.black54,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  h15,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: primaryColor),
                        alignment: Alignment.center,
                        child: Text(
                          "Casher",
                          style: primaryFont.copyWith(color: Colors.white),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.grey)),
                        alignment: Alignment.center,
                        child: Text(
                          "Manager",
                          style: primaryFont.copyWith(color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                  h15,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.grey)),
                        alignment: Alignment.center,
                        child: Text(
                          "Finance Manager",
                          style: primaryFont.copyWith(color: Colors.grey),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.grey)),
                        alignment: Alignment.center,
                        child: Text(
                          "Supervisor",
                          style: primaryFont.copyWith(color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                  h10,
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Permissions",
                          style: primaryFont.copyWith(
                              color: Colors.black54,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  h15,
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: size.width * 0.45,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.check,
                                color: Colors.green,
                                size: 20,
                              ),
                              w5,
                              Text(
                                "View and Search\nTransaction Details",
                                style: primaryFont.copyWith(fontSize: 13),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: size.width * 0.45,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.check,
                                color: Colors.green,
                                size: 20,
                              ),
                              w5,
                              Text(
                                "Download Transaction\nReports",
                                style: primaryFont.copyWith(fontSize: 13),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  h10,
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: size.width * 0.45,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.check,
                                color: Colors.green,
                                size: 20,
                              ),
                              w5,
                              Text(
                                "View QR Codes",
                                style: primaryFont.copyWith(fontSize: 13),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: size.width * 0.45,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.block,
                                color: Colors.black45,
                                size: 15,
                              ),
                              w10,
                              Text(
                                "Updates QR Code\nInformation",
                                style: primaryFont.copyWith(
                                    fontSize: 13, color: Colors.black45),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  h10,
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: size.width * 0.45,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.block,
                                color: Colors.black45,
                                size: 15,
                              ),
                              w10,
                              Text(
                                "Refind Transactions",
                                style: primaryFont.copyWith(
                                    fontSize: 13, color: Colors.black45),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: size.width * 0.45,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.block,
                                color: Colors.black45,
                                size: 15,
                              ),
                              w10,
                              Text(
                                "Download Refund\nReport",
                                style: primaryFont.copyWith(
                                    fontSize: 13, color: Colors.black45),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  h10,
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: size.width * 0.45,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.block,
                                color: Colors.black45,
                                size: 15,
                              ),
                              w10,
                              Text(
                                "Download All Reports",
                                style: primaryFont.copyWith(
                                    fontSize: 13, color: Colors.black45),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: size.width * 0.45,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.block,
                                color: Colors.black45,
                                size: 15,
                              ),
                              w10,
                              Text(
                                "View Settlements",
                                style: primaryFont.copyWith(
                                    fontSize: 13, color: Colors.black45),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  h10,
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: size.width * 0.45,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.block,
                                color: Colors.black45,
                                size: 15,
                              ),
                              w10,
                              Text(
                                "Add/Remove\nNotification Receivers",
                                style: primaryFont.copyWith(
                                    fontSize: 13, color: Colors.black45),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: size.width * 0.45,
                        )
                      ],
                    ),
                  ),
                  h30,
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                      height: 65,
                      width: size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 3,
                              color: Colors.black45,
                            )
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 10, left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Stores Assigned",
                              style: primaryFont.copyWith(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            ),
                            Text(
                              "Access to all QR codes",
                              style: primaryFont.copyWith(
                                  fontWeight: FontWeight.w300, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  h25,
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: InkWell(
                      onTap: () {
                        Get.off(() => ManageStaffAndRolesView());
                      },
                      child: Container(
                        height: 45,
                        width: size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: primaryColor,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "ADD USER",
                          style: primaryFont.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  h50
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
