import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/const/helpers/space_helpers.dart';
import 'package:konnect/views/store_view/update_custom_posts.dart';
import 'package:konnect/views/store_view/update_items_view.dart';

class StoreUpdatesView extends StatefulWidget {
  const StoreUpdatesView({super.key});

  @override
  State<StoreUpdatesView> createState() => _StoreUpdatesViewState();
}

class _StoreUpdatesViewState extends State<StoreUpdatesView> {
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
                                    "Store Updates",
                                    style: primaryFont.copyWith(
                                        fontSize: 15,
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
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "Help customers stay updates on\ninventory, delivery, timings and more...",
                          style: primaryFont.copyWith(
                              fontSize: 15, fontWeight: FontWeight.w100),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                      width: size.width,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 10, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Items Available",
                                  style: primaryFont.copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14),
                                ),
                                InkWell(
                                  onTap: () {
                                    // Get.to(() => const UpdateItemsView());
                                    _showMyItemUpdateDialauge(size);
                                  },
                                  child: Text(
                                    "Update now".toUpperCase(),
                                    style: primaryFont.copyWith(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10,
                                        color: Colors.blue),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text("Last Update: 2nd Nov'22 | 12:25 pm"),
                            Text("Hlo"),
                            h15,
                            Text("🕐 Post expiers in 7 days"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  h20,
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                      width: size.width,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 10, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Custom Post",
                                  style: primaryFont.copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14),
                                ),
                                InkWell(
                                  onTap: () {
                                    // Get.to(() => UpdateCustomPostView());
                                    _showMyCustomPostUpdate(size) ;
                                  },
                                  child: Text(
                                    "Update now".toUpperCase(),
                                    style: primaryFont.copyWith(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10,
                                        color: Colors.blue),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                           const Text("Last Update: 2nd Nov'22 | 12:25 pm"),
                            const Text("Hi"),
                            h15,
                          const   Text("🕐 Post expiers in 7 days"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _showMyItemUpdateDialauge(var size) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Container(
          height: 300,
          child: AlertDialog(
            scrollable: true,
            contentPadding: const EdgeInsets.all(12),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Items Available",
                        style: primaryFont.copyWith(
                            fontWeight: FontWeight.w600, fontSize: 14),
                      ),
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Text(
                          "Update".toUpperCase(),
                          style: primaryFont.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                  h15,
                  Container(
                    height: 50,
                    width: size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 3,
                              color: Colors.grey.withOpacity(0.5))
                        ]),
                    alignment: Alignment.centerLeft,
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: TextField(
                        decoration:
                            InputDecoration.collapsed(hintText: "Enter Item"),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }


    Future<void> _showMyCustomPostUpdate(var size) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Container(
          height: 300,
          child: AlertDialog(
            scrollable: true,
            contentPadding: const EdgeInsets.all(12),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Custom Post",
                        style: primaryFont.copyWith(
                            fontWeight: FontWeight.w600, fontSize: 14),
                      ),
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Text(
                          "Update".toUpperCase(),
                          style: primaryFont.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                  h15,
                  Container(
                    height: 50,
                    width: size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 3,
                              color: Colors.grey.withOpacity(0.5))
                        ]),
                    alignment: Alignment.centerLeft,
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: TextField(
                        decoration:
                            InputDecoration.collapsed(hintText: "Enter Latest updates"),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
