import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/const/helpers/space_helpers.dart';

class EditStoreTimigView extends StatefulWidget {
  const EditStoreTimigView({super.key});

  @override
  State<EditStoreTimigView> createState() => _EditStoreTimigViewState();
}

class _EditStoreTimigViewState extends State<EditStoreTimigView> {
  var openingTextEditingController = TextEditingController();
  var closeTextEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();

    openingTextEditingController.text = "10:00 AM";
    closeTextEditingController.text = "10:00 PM";
  }

  bool isSwitched = false;
  bool isChecked = false;

  List<WeekDay> weekList = [
    WeekDay(
      title: "Monday",
      isActive: false,
    ),
    WeekDay(
      title: "Tuesday",
      isActive: false,
    ),
    WeekDay(
      title: "Wednesday",
      isActive: false,
    ),
    WeekDay(
      title: "Thursday",
      isActive: false,
    ),
    WeekDay(
      title: "Friday",
      isActive: false,
    ),
    WeekDay(
      title: "Saturday",
      isActive: false,
    ),
    WeekDay(
      title: "Sunday",
      isActive: false,
    ),
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
                                    "Edit your store timing",
                                    style: primaryFont.copyWith(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "Select store timings for when your store is open. Make\nsure to select multiple time slots if applicable",
                                    style: primaryFont.copyWith(
                                        fontSize: 10,
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
                  ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: weekList.length,
                      itemBuilder: (context, index) {
                        return weekList[index].isActive
                            ? Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, bottom: 20),
                                child: InkWell(
                                  onTap: () {
                                    weekList.forEach((val) {
                                      setState(() {
                                        val.isActive = false;
                                      });
                                    });
                                    setState(() {
                                      weekList[index].isActive = false;
                                    });
                                  },
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                weekList[index].title,
                                                style: primaryFont.copyWith(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Text(
                                                "10:00 AM - 10:00 PM",
                                                style: primaryFont.copyWith(
                                                    fontSize: 9,
                                                    fontWeight:
                                                        FontWeight.w300),
                                              )
                                            ],
                                          ),
                                          const Icon(
                                              Icons.keyboard_arrow_up_outlined)
                                        ],
                                      ),
                                      h10,
                                      Row(
                                        children: [
                                          Expanded(
                                              child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 20,
                                                            bottom: 5),
                                                    child: Text(
                                                      "Opening Time",
                                                      style:
                                                          primaryFont.copyWith(
                                                              fontSize: 11),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15, right: 15),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        height: 50,
                                                        child: TextField(
                                                          readOnly: true,
                                                          controller:
                                                              openingTextEditingController,
                                                          decoration:
                                                              InputDecoration(
                                                                  isDense: true,
                                                                  suffixIcon:
                                                                      Container(
                                                                    width: 20,
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .end,
                                                                      children: const [
                                                                        Padding(
                                                                          padding:
                                                                              EdgeInsets.only(right: 7),
                                                                          child:
                                                                              Icon(
                                                                            Icons.keyboard_arrow_down_rounded,
                                                                            color:
                                                                                Colors.grey,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  enabledBorder: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10),
                                                                      borderSide: const BorderSide(
                                                                          color: Colors
                                                                              .black)),
                                                                  focusedBorder: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10),
                                                                      borderSide:
                                                                          const BorderSide(
                                                                              color: Colors.black))),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          )),
                                          Expanded(
                                              child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 20,
                                                            bottom: 5),
                                                    child: Text(
                                                      "Closing Time",
                                                      style:
                                                          primaryFont.copyWith(
                                                              fontSize: 11),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15, right: 15),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        height: 50,
                                                        child: TextField(
                                                          readOnly: true,
                                                          controller:
                                                              closeTextEditingController,
                                                          decoration:
                                                              InputDecoration(
                                                                  hintText: "",
                                                                  isDense: true,
                                                                  suffixIcon:
                                                                      Container(
                                                                    width: 20,
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .end,
                                                                      children: const [
                                                                        Padding(
                                                                          padding:
                                                                              EdgeInsets.only(right: 7),
                                                                          child:
                                                                              Icon(
                                                                            Icons.keyboard_arrow_down_rounded,
                                                                            color:
                                                                                Colors.grey,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  enabledBorder: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10),
                                                                      borderSide: const BorderSide(
                                                                          color: Colors
                                                                              .black)),
                                                                  focusedBorder: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10),
                                                                      borderSide:
                                                                          const BorderSide(
                                                                              color: Colors.black))),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          )),
                                        ],
                                      ),
                                      h20,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: Text(
                                              "+ Add Another Slot",
                                              style: primaryFont.copyWith(
                                                  color: Colors.blue),
                                            ),
                                          ),
                                        ],
                                      ),
                                      h10,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 5),
                                            child: Switch(
                                                value: isSwitched,
                                                activeColor: secondaryColor,
                                                onChanged: (val) {
                                                  setState(() {
                                                    isSwitched = val;
                                                  });
                                                }),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 2),
                                            child: Text(
                                              "Apply timings ro all ",
                                              style: primaryFont.copyWith(
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 5),
                                            child: Checkbox(
                                                value: isChecked,
                                                activeColor: secondaryColor,
                                                onChanged: (val) {
                                                  setState(() {
                                                    isChecked = val!;
                                                  });
                                                }),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 2),
                                            child: Text(
                                              "Closed on this day",
                                              style: primaryFont.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 11),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Divider(),
                                    ],
                                  ),
                                ),
                              )
                            : Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, bottom: 20),
                                child: InkWell(
                                  onTap: () {
                                    weekList.forEach((val) {
                                      setState(() {
                                        val.isActive = false;
                                      });
                                    });
                                    setState(() {
                                      weekList[index].isActive = true;
                                    });
                                  },
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                weekList[index].title,
                                                style: primaryFont.copyWith(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Text(
                                                "10:00 AM - 10:00 PM",
                                                style: primaryFont.copyWith(
                                                    fontSize: 9,
                                                    fontWeight:
                                                        FontWeight.w300),
                                              )
                                            ],
                                          ),
                                          Icon(Icons
                                              .keyboard_arrow_down_outlined)
                                        ],
                                      ),
                                      Divider(),
                                    ],
                                  ),
                                ),
                              );
                      }),
                  h15,
                  Container(
                    height: 120,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30, right: 20),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              height: 40,
                              width: size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  gradient: LinearGradient(
                                      colors: [secondaryColor, primaryColor])),
                              alignment: Alignment.center,
                              child: Text(
                                "Save",
                                style: primaryFont.copyWith(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30, right: 20),
                          child: InkWell(
                            onTap: () {
                              // Get.to(() => const SignInView());
                              Get.back();
                            },
                            child: Container(
                              height: 40,
                              width: size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(color: Colors.black)),
                              alignment: Alignment.center,
                              child: Text(
                                "Cancel",
                                style: primaryFont.copyWith(fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ],
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

class WeekDay {
  String title;
  bool isActive;

  WeekDay({required this.title, required this.isActive});
}
