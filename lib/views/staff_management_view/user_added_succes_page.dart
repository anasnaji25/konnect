import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/controllers/transaction_controller.dart';
import 'package:konnect/views/staff_management_view/staff_management_view.dart';

import '../../const/helpers/space_helpers.dart';

class UserAddedSuccessfullView extends StatefulWidget {
  const UserAddedSuccessfullView({super.key});

  @override
  State<UserAddedSuccessfullView> createState() =>
      _UserAddedSuccessfullViewState();
}

class _UserAddedSuccessfullViewState extends State<UserAddedSuccessfullView> {
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
                  const SizedBox(
                    height: 150,
                  ),
                  Image.asset(
                    "assets/icons/Group 1389.png",
                    height: 250,
                  ),
                  h30,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "User added successfully!",
                        style: primaryFont.copyWith(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                    ],
                  ),
                  h15,
                  Text(
                    "The user can now login to the payment business\nand access transactions with the permissions you\nhave provided",
                    textAlign: TextAlign.center,
                    style: primaryFont.copyWith(fontSize: 12),
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15 , bottom: 30),
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
                  "Done".toUpperCase(),
                  style: primaryFont.copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
