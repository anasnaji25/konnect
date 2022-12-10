import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/const/helpers/space_helpers.dart';
import 'package:konnect/controllers/transaction_controller.dart';
import 'package:konnect/views/lading_view/lets_get_started_screen.dart';
import 'package:konnect/views/store_view/amenities_and_features_view.dart';
import 'package:konnect/views/store_view/business_details_view.dart';
import 'package:konnect/views/store_view/business_location_view.dart';
import 'package:konnect/views/store_view/create_offer_view.dart';
import 'package:konnect/views/store_view/edit_mobile_number_view.dart';
import 'package:konnect/views/store_view/edit_social_media_links.dart';
import 'package:konnect/views/store_view/edit_your_store_timing_view.dart';
import 'package:konnect/views/store_view/my_offers_view.dart';
import 'package:konnect/views/store_view/store_analytics_view.dart';
import 'package:konnect/views/store_view/store_updates_view.dart';
import 'package:konnect/views/store_view/tell_us_about_your_buisiness_view.dart';
import 'package:konnect/views/store_view/type_of_services_you_offer_view.dart';
import 'package:konnect/widgets/transaction_widgets/filter_bottom_sheet.dart';
import 'package:konnect/widgets/transaction_widgets/transactions_card.dart';

class StoreMainListView extends StatefulWidget {
  const StoreMainListView({super.key});

  @override
  State<StoreMainListView> createState() => _StoreMainListViewState();
}

class _StoreMainListViewState extends State<StoreMainListView> {
  final transactionController = Get.find<TransactionController>();
  bool isCheck = true;

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
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                      height: 100,
                      width: size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.green)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/icons/Group 1361.png",
                                  height: 60,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Business Name",
                                      style: primaryFont.copyWith(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Business Category",
                                      style: primaryFont.copyWith(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10, top: 25),
                              child: InkWell(
                                onTap: () {
                                  Get.to(() => BusinessDetailsView());
                                },
                                child: Row(
                                  children: [
                                    Text(
                                      "Edit",
                                      style: primaryFont.copyWith(
                                          fontSize: 10, color: primaryColor),
                                    ),
                                    Icon(
                                      Icons.edit,
                                      size: 10,
                                      color: primaryColor,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                      height: 100,
                      width: size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.green)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Last 7 days",
                                      style: primaryFont.copyWith(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const Icon(
                                      Icons.arrow_drop_down_rounded,
                                      color: Colors.black,
                                    )
                                  ],
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.to(() => const StroreAnalyticsView());
                                  },
                                  child: Text(
                                    "View More".toUpperCase(),
                                    style: primaryFont.copyWith(
                                        color: Colors.blue, fontSize: 10),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 40,
                                width: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(color: Colors.grey)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        "0",
                                        style: primaryFont.copyWith(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15),
                                      ),
                                    ),
                                    Container(
                                      height: 40,
                                      width: 2,
                                      color: Colors.grey.withOpacity(0.3),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 5),
                                      child: Text(
                                        "Views",
                                        style:
                                            primaryFont.copyWith(fontSize: 13),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(color: Colors.grey)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        "0",
                                        style: primaryFont.copyWith(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15),
                                      ),
                                    ),
                                    Container(
                                      height: 40,
                                      width: 2,
                                      color: Colors.grey.withOpacity(0.3),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 5),
                                      child: Text(
                                        "Calls",
                                        style:
                                            primaryFont.copyWith(fontSize: 13),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(color: Colors.grey)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        "0",
                                        style: primaryFont.copyWith(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15),
                                      ),
                                    ),
                                    Container(
                                      height: 40,
                                      width: 2,
                                      color: Colors.grey.withOpacity(0.3),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 5),
                                      child: Text(
                                        "Shares",
                                        style:
                                            primaryFont.copyWith(fontSize: 13),
                                      ),
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
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                      height: 100,
                      width: size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.green)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Photos",
                                      style: primaryFont.copyWith(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/icons/Group 1362.png",
                                    height: 50,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Text(
                                      "Menu/Catalog",
                                      style: primaryFont.copyWith(fontSize: 7),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/icons/Group 1362.png",
                                    height: 50,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Text(
                                      "Indoor",
                                      style: primaryFont.copyWith(fontSize: 7),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/icons/Group 1362.png",
                                    height: 50,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Text(
                                      "Outdoor",
                                      style: primaryFont.copyWith(fontSize: 7),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/icons/Group 1362.png",
                                    height: 50,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Text(
                                      "Custom",
                                      style: primaryFont.copyWith(fontSize: 7),
                                    ),
                                  )
                                ],
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
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                      height: 450,
                      width: size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.green)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 10),
                            child: Text(
                              "Overview",
                              style: primaryFont.copyWith(
                                  fontWeight: FontWeight.w600, fontSize: 11),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "assets/icons/8324266_ui_essential_app_location_map_icon.png",
                                      height: 30,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Business Location",
                                          style: primaryFont.copyWith(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12),
                                        ),
                                        Text(
                                          "Patel road, perambur, chennai,",
                                          style: primaryFont.copyWith(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12),
                                        ),
                                        Text(
                                          "Tamilnadu,600011",
                                          style: primaryFont.copyWith(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.to(() => BusinessLocationView());
                                  },
                                  child: const Icon(
                                    Icons.edit,
                                    size: 15,
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Divider(
                            thickness: 1,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "assets/icons/Layer 15.png",
                                      height: 25,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Timings",
                                          style: primaryFont.copyWith(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12),
                                        ),
                                        RichText(
                                            text: TextSpan(
                                                text: "Open: ",
                                                style: primaryFont.copyWith(
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.green,
                                                    fontSize: 12),
                                                children: [
                                              TextSpan(
                                                text:
                                                    "10:00 am - 10:00 pm (Today)",
                                                style: primaryFont.copyWith(
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black,
                                                    fontSize: 12),
                                              )
                                            ])),
                                        Text(
                                          "SHOW ALL",
                                          style: primaryFont.copyWith(
                                              fontWeight: FontWeight.w500,
                                              color: Colors.blue,
                                              fontSize: 12),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.to(() => EditStoreTimigView());
                                  },
                                  child: const Icon(
                                    Icons.edit,
                                    size: 15,
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Divider(
                            thickness: 1,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "assets/icons/8666632_phone_icon.png",
                                      height: 25,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Phone Number",
                                          style: primaryFont.copyWith(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12),
                                        ),
                                        Text(
                                          "9876543210,",
                                          style: primaryFont.copyWith(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.to(() => EditMobileNumberView());
                                  },
                                  child: const Icon(
                                    Icons.edit,
                                    size: 15,
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Divider(
                            thickness: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/icons/Layer_2.png",
                                      height: 14,
                                    ),
                                    w10,
                                    Text(
                                      "Vehicle Parking",
                                      style: primaryFont.copyWith(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12),
                                    )
                                  ],
                                ),
                                Checkbox(
                                    activeColor: Colors.green,
                                    value: isCheck,
                                    onChanged: (val) {
                                      setState(() {
                                        isCheck = val!;
                                      });
                                    })
                              ],
                            ),
                          ),
                          const Divider(
                            thickness: 1,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/icons/9025669_note_icon.png",
                                      height: 25,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Get.to(() =>
                                                TellUsAboutBuisniessView());
                                          },
                                          child: Text(
                                            "Add About Your Business",
                                            style: primaryFont.copyWith(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.blue,
                                                fontSize: 12),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Divider(
                            thickness: 1,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "assets/icons/support.png",
                                      height: 40,
                                    ),
                                    const SizedBox(
                                      width: 3,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Customer Support & Enquiry",
                                          style: primaryFont.copyWith(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12),
                                        ),
                                        Text(
                                          "+91 9876543210",
                                          style: primaryFont.copyWith(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.to(() => EditMobileNumberView());
                                  },
                                  child: const Icon(
                                    Icons.edit,
                                    size: 15,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                      height: 130,
                      width: size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.green)),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Offers",
                                            style: primaryFont.copyWith(
                                                fontSize: 11,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 10),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "On average, those who post offers see\na ~20% jump in their transactions.",
                                            style: primaryFont.copyWith(
                                                fontSize: 11),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Get.to(() => MyOffersView());
                                            },
                                            child: Container(
                                              height: 30,
                                              width: 120,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.green),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  const Icon(
                                                    Icons.add_circle_rounded,
                                                    size: 17,
                                                    color: Colors.green,
                                                  ),
                                                  const SizedBox(
                                                    width: 7,
                                                  ),
                                                  Text(
                                                    "CREATE OFFER",
                                                    style: primaryFont.copyWith(
                                                        fontSize: 11,
                                                        color: Colors.green),
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Image.asset(
                              "assets/icons/shop.png",
                              height: 90,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                      height: 120,
                      width: size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: const Color(0xff543DE0)),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10, left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "assets/icons/_x31_7_x2C__Home_x2C__house_x2C__location_x2C__pin_x2C__building.png",
                              height: 90,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Tell us more about your services",
                                            style: primaryFont.copyWith(
                                                fontSize: 11,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 10),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "Add type of service you provide  and\nadd locations you would like to serve.",
                                            style: primaryFont.copyWith(
                                                color: Colors.white,
                                                fontSize: 9),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Get.to(() =>
                                                  TypeofServicesYouOffer());
                                            },
                                            child: Container(
                                              height: 30,
                                              width: 125,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5, left: 5),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    const Icon(
                                                      Icons.add_circle_rounded,
                                                      size: 17,
                                                      color: Color(0xff543DE0),
                                                    ),
                                                    const SizedBox(
                                                      width: 7,
                                                    ),
                                                    Text(
                                                      "ADD LOCATIONS",
                                                      style:
                                                          primaryFont.copyWith(
                                                              fontSize: 10,
                                                              color: const Color(
                                                                  0xff543DE0)),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 15, right: 15),
                  //   child: Container(
                  //     height: 130,
                  //     width: size.width,
                  //     decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(10),
                  //         border: Border.all(color: Colors.green)),
                  //     child: Padding(
                  //       padding: const EdgeInsets.only(right: 10),
                  //       child: Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           Column(
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //             children: [
                  //               Padding(
                  //                 padding: const EdgeInsets.only(
                  //                     left: 10, right: 10, top: 10),
                  //                 child: Row(
                  //                   mainAxisAlignment:
                  //                       MainAxisAlignment.spaceBetween,
                  //                   children: [
                  //                     Row(
                  //                       children: [
                  //                         Text(
                  //                           "What all amenities do you have?",
                  //                           style: primaryFont.copyWith(
                  //                               fontSize: 11,
                  //                               fontWeight: FontWeight.w600),
                  //                         ),
                  //                       ],
                  //                     ),
                  //                   ],
                  //                 ),
                  //               ),
                  //               const SizedBox(
                  //                 height: 15,
                  //               ),
                  //               Padding(
                  //                 padding: const EdgeInsets.only(
                  //                     left: 15, right: 10),
                  //                 child: Row(
                  //                   children: [
                  //                     Column(
                  //                       crossAxisAlignment:
                  //                           CrossAxisAlignment.start,
                  //                       children: [
                  //                         Text(
                  //                           "Adding facilities will help customers\nchoose the right store for them.",
                  //                           style: primaryFont.copyWith(
                  //                               fontSize: 11),
                  //                         ),
                  //                         const SizedBox(
                  //                           height: 10,
                  //                         ),
                  //                         InkWell(
                  //                           onTap: () {
                  //                             Get.to(() =>
                  //                                 AmenitiesAndFeaturesView());
                  //                           },
                  //                           child: Container(
                  //                             height: 30,
                  //                             width: 120,
                  //                             decoration: BoxDecoration(
                  //                                 border: Border.all(
                  //                                     color: const Color(
                  //                                         0xff543DE0)),
                  //                                 borderRadius:
                  //                                     BorderRadius.circular(
                  //                                         20)),
                  //                             child: Row(
                  //                               mainAxisAlignment:
                  //                                   MainAxisAlignment.center,
                  //                               children: [
                  //                                 Text(
                  //                                   "ADD AMENITIES",
                  //                                   style: primaryFont.copyWith(
                  //                                       fontSize: 11,
                  //                                       color: const Color(
                  //                                           0xff543DE0)),
                  //                                 )
                  //                               ],
                  //                             ),
                  //                           ),
                  //                         )
                  //                       ],
                  //                     ),
                  //                   ],
                  //                 ),
                  //               )
                  //             ],
                  //           ),
                  //           Image.asset(
                  //             "assets/icons/SeekPng.com_ecommerce-png_2474944.png",
                  //             height: 90,
                  //           )
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                      height: 120,
                      width: size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: const Color(0xffD356F4)),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10, left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "assets/icons/pngfind.com-marketing-png-830397.png",
                              height: 90,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Social media links",
                                            style: primaryFont.copyWith(
                                                fontSize: 11,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 10),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "Sharing links helps views stay\nconnected with you and latest updates.",
                                            textAlign: TextAlign.end,
                                            style: primaryFont.copyWith(
                                                color: Colors.white,
                                                fontSize: 9),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Get.to(
                                                  () => EditSocilaMediaLinks());
                                            },
                                            child: Container(
                                              height: 30,
                                              width: 125,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5, left: 5),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    const Icon(
                                                      Icons.add_circle_rounded,
                                                      size: 17,
                                                      color: Color(0xffD356F4),
                                                    ),
                                                    const SizedBox(
                                                      width: 7,
                                                    ),
                                                    Text(
                                                      "ADD Links".toUpperCase(),
                                                      style:
                                                          primaryFont.copyWith(
                                                              fontSize: 10,
                                                              color: const Color(
                                                                  0xffD356F4)),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
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
}
