import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/views/banking_page_view/manage_bank_accounts_view.dart';
import 'package:konnect/views/profile_view/bussiness_details_view/bussiness_details_view.dart';
import 'package:konnect/views/profile_view/help_view/help_view.dart';
import 'package:konnect/views/profile_view/manage_qr/manage_qr_pos_view.dart';
import 'package:konnect/views/profile_view/settings_view/settings_view.dart';
import 'package:konnect/views/staff_management_view/staff_management_view.dart';

import '../../const/app_colors.dart';
import '../../const/app_fonts.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [secondaryColor, primaryColor])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
              child: Container(
            height: size.height,
            width: size.width,
            color: Colors.white,
            child: Column(children: [
              Container(
                height: 60,
                width: size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    appbarColor1,
                    appbarColor2,
                  ]),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: Icon(Icons.arrow_circle_left_outlined)),
                        Text(
                          "Profile",
                          style: primaryFont.copyWith(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      ]),
                      Row(
                        children: [
                          Image(
                            image: AssetImage("assets/icons/question.png"),
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(
                            height: 60,
                            width: 60,
                            image: AssetImage("assets/icons/Ellipse 117.png")),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          children: [
                            Text(
                              "Bussiness",
                              style: primaryFont.copyWith(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "9876567898",
                              style: primaryFont.copyWith(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(() => ManageQrPosView());
                          },
                          child: Image(
                              height: 25,
                              width: 25,
                              image: AssetImage("assets/icons/qrcode.png")),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                color: greyColor,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 15, top: 15),
                child: InkWell(
                  onTap: () {
                    Get.to(() => BussinessDetailsView());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Image(
                                height: 25,
                                width: 25,
                                image:
                                    AssetImage("assets/icons/bussiness.png")),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Bussiness Details",
                            style: primaryFont.copyWith(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BussinessDetailsView()),
                          );
                        },
                        child: Row(
                          children: [
                            Image(
                                image:
                                    AssetImage("assets/icons/ios_arrow.png")),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 65, top: 10),
                child: Divider(
                  color: greyColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 15, top: 15),
                child: InkWell(
                  onTap: () {
                    Get.to(() => ManageStaffAndRolesView());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Image(
                                height: 25,
                                width: 25,
                                image: AssetImage("assets/icons/staff.png")),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Manage Staff And Roles",
                            style: primaryFont.copyWith(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image(
                              image: AssetImage("assets/icons/ios_arrow.png")),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 65, top: 10),
                child: Divider(
                  color: greyColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 15, top: 15),
                child: InkWell(
                  onTap: () {
                    Get.to(() => ManageBankAccounts());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Image(
                                height: 25,
                                width: 25,
                                image: AssetImage("assets/icons/bank.png")),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Manage Bank Accounts",
                            style: primaryFont.copyWith(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image(
                              image: AssetImage("assets/icons/ios_arrow.png")),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 65, top: 10),
                child: Divider(
                  color: greyColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 15, top: 15),
                child: InkWell(
                  onTap: () {
                    Get.to(() => SettingsView());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Image(
                                height: 25,
                                width: 25,
                                image: AssetImage("assets/icons/1.png")),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Settings",
                            style: primaryFont.copyWith(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SettingsView()),
                                );
                              },
                              child: Image(
                                  image: AssetImage(
                                      "assets/icons/ios_arrow.png"))),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 65, top: 10),
                child: Divider(
                  color: greyColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 15, top: 15),
                child: InkWell(
                  onTap: () {
                    Get.to(() => HelpView());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        const  Padding(
                            padding:  EdgeInsets.only(left: 15),
                            child: Image(
                                height: 25,
                                width: 25,
                                image: AssetImage("assets/icons/question.png")),
                          ),
                         const SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Help",
                            style: primaryFont.copyWith(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HelpView()),
                                );
                              },
                              child: const Image(
                                  image: AssetImage(
                                      "assets/icons/ios_arrow.png"))),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 65, top: 10),
                child: Divider(
                  color: greyColor,
                ),
              ),
            ]),
          )),
        ));
  }
}
