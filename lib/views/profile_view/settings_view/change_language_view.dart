import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:konnect/views/profile_view/settings_view/settings_view.dart';

import '../../../const/app_colors.dart';
import '../../../const/app_fonts.dart';

class ChangeLanguageView extends StatefulWidget {
  const ChangeLanguageView({super.key});

  @override
  State<ChangeLanguageView> createState() => _ChangeLanguageViewState();
}

class _ChangeLanguageViewState extends State<ChangeLanguageView> {

  bool isCheked = false;

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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                      Container(
                        height: 60,
                        width: size.width,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              appbarColor1,appbarColor2,
                            ]
                            ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10,right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                InkWell(
                                  onTap: (){
                                    Get.back();
                                  },
                                  child: Icon(Icons.arrow_circle_left_outlined)),
                                Text("Change Language",
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
                         padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                             Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("English",
                                 style: primaryFont.copyWith(
                                  color: Colors.black,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500),
                                ),
                                Text("English",
                                 style: primaryFont.copyWith(
                                  color: Colors.black,
                                  fontSize: 15,
                                  ),
                                ),
                              ],
                             ),
                             Row(
                              children: [
                                Checkbox(
                                  
                                          activeColor: lightblue,
                                          value: isCheked,
                                          onChanged: (value) {
                                            setState(() {
                                              isCheked = !isCheked;
                                            });
                                          }),
                              ],
                             ),
                          ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 10,right: 10),
                         child: Divider(
                          color: greyColor,
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 15,right: 15,),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                             Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("हिंदी",
                                 style: primaryFont.copyWith(
                                  color: Colors.black,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500),
                                ),
                                Text("Hindi",
                                 style: primaryFont.copyWith(
                                  color: Colors.black,
                                  fontSize: 15,
                                  ),
                                ),
                              ],
                             ),
                             Row(
                              children: [
                                // Checkbox(
                                //           activeColor: lightblue,
                                //           value: isCheked,
                                //           onChanged: (value) {
                                //             setState(() {
                                //               isCheked = !isCheked;
                                //             });
                                //           }),
                              ],
                             ),
                          ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 10,right: 10),
                         child: Divider(
                          color: greyColor,
                         ),
                       ),
                        Padding(
                         padding: const EdgeInsets.only(left: 15,right: 15,),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                             Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("मराठी",
                                 style: primaryFont.copyWith(
                                  color: Colors.black,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500),
                                ),
                                Text("Marathi",
                                 style: primaryFont.copyWith(
                                  color: Colors.black,
                                  fontSize: 15,
                                  ),
                                ),
                              ],
                             ),
                             Row(
                              children: [
                                // Checkbox(
                                //           activeColor: lightblue,
                                //           value: isCheked,
                                //           onChanged: (value) {
                                //             setState(() {
                                //               isCheked = !isCheked;
                                //             });
                                //           }),
                              ],
                             ),
                          ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 10,right: 10),
                         child: Divider(
                          color: greyColor,
                         ),
                       ),
                        Padding(
                         padding: const EdgeInsets.only(left: 15,right: 15,),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                             Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("বাংলা",
                                 style: primaryFont.copyWith(
                                  color: Colors.black,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500),
                                ),
                                Text("Bengali",
                                 style: primaryFont.copyWith(
                                  color: Colors.black,
                                  fontSize: 15,
                                  ),
                                ),
                              ],
                             ),
                             Row(
                              children: [
                                // Checkbox(
                                //           activeColor: lightblue,
                                //           value: isCheked,
                                //           onChanged: (value) {
                                //             setState(() {
                                //               isCheked = !isCheked;
                                //             });
                                //           }),
                              ],
                             ),
                          ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 10,right: 10),
                         child: Divider(
                          color: greyColor,
                         ),
                       ),
                        Padding(
                         padding: const EdgeInsets.only(left: 15,right: 15,),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                             Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("ગુજરાતી",
                                 style: primaryFont.copyWith(
                                  color: Colors.black,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500),
                                ),
                                Text("Gujarati",
                                 style: primaryFont.copyWith(
                                  color: Colors.black,
                                  fontSize: 15,
                                  ),
                                ),
                              ],
                             ),
                             Row(
                              children: [
                                // Checkbox(
                                //           activeColor: lightblue,
                                //           value: isCheked,
                                //           onChanged: (value) {
                                //             setState(() {
                                //               isCheked = !isCheked;
                                //             });
                                //           }),
                              ],
                             ),
                          ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 10,right: 10),
                         child: Divider(
                          color: greyColor,
                         ),
                       ),
                        Padding(
                         padding: const EdgeInsets.only(left: 15,right: 15,),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                             Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("தமிழ்",
                                 style: primaryFont.copyWith(
                                  color: Colors.black,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500),
                                ),
                                Text("Tamil",
                                 style: primaryFont.copyWith(
                                  color: Colors.black,
                                  fontSize: 15,
                                  ),
                                ),
                              ],
                             ),
                             Row(
                              children: [
                                // Checkbox(
                                //           activeColor: lightblue,
                                //           value: isCheked,
                                //           onChanged: (value) {
                                //             setState(() {
                                //               isCheked = !isCheked;
                                //             });
                                //           }),
                              ],
                             ),
                          ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 10,right: 10),
                         child: Divider(
                          color: greyColor,
                         ),
                       ),
                        Padding(
                         padding: const EdgeInsets.only(left: 15,right: 15,),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                             Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("తెలుగు",
                                 style: primaryFont.copyWith(
                                  color: Colors.black,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500),
                                ),
                                Text("Telugu",
                                 style: primaryFont.copyWith(
                                  color: Colors.black,
                                  fontSize: 15,
                                  ),
                                ),
                              ],
                             ),
                             Row(
                              children: [
                                // Checkbox(
                                //           activeColor: lightblue,
                                //           value: isCheked,
                                //           onChanged: (value) {
                                //             setState(() {
                                //               isCheked = !isCheked;
                                //             });
                                //           }),
                              ],
                             ),
                          ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 10,right: 10),
                         child: Divider(
                          color: greyColor,
                         ),
                       ),
                        Padding(
                         padding: const EdgeInsets.only(left: 15,right: 15,),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                             Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("ಕನ್ನಡ",
                                 style: primaryFont.copyWith(
                                  color: Colors.black,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500),
                                ),
                                Text("Kannada",
                                 style: primaryFont.copyWith(
                                  color: Colors.black,
                                  fontSize: 15,
                                  ),
                                ),
                              ],
                             ),
                             Row(
                              children: [
                                // Checkbox(
                                //           activeColor: lightblue,
                                //           value: isCheked,
                                //           onChanged: (value) {
                                //             setState(() {
                                //               isCheked = !isCheked;
                                //             });
                                //           }),
                              ],
                             ),
                          ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 10,right: 10),
                         child: Divider(
                          color: greyColor,
                         ),
                       ),
                        Padding(
                         padding: const EdgeInsets.only(left: 15,right: 15,),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                             Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("മലയാളം",
                                 style: primaryFont.copyWith(
                                  color: Colors.black,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500),
                                ),
                                Text("Malayalam",
                                 style: primaryFont.copyWith(
                                  color: Colors.black,
                                  fontSize: 15,
                                  ),
                                ),
                              ],
                             ),
                             Row(
                              children: [
                                // Checkbox(
                                //           activeColor: lightblue,
                                //           value: isCheked,
                                //           onChanged: (value) {
                                //             setState(() {
                                //               isCheked = !isCheked;
                                //             });
                                //           }),
                              ],
                             ),
                          ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 10,right: 10),
                         child: Divider(
                          color: greyColor,
                         ),
                       ),
                        Padding(
                         padding: const EdgeInsets.only(left: 15,right: 15,),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                             Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("অসমীয়া",
                                 style: primaryFont.copyWith(
                                  color: Colors.black,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500),
                                ),
                                Text("Assamese",
                                 style: primaryFont.copyWith(
                                  color: Colors.black,
                                  fontSize: 15,
                                  ),
                                ),
                              ],
                             ),
                             Row(
                              children: [
                                // Checkbox(
                                //           activeColor: lightblue,
                                //           value: isCheked,
                                //           onChanged: (value) {
                                //             setState(() {
                                //               isCheked = !isCheked;
                                //             });
                                //           }),
                              ],
                             ),
                          ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 10,right: 10),
                         child: Divider(
                          color: greyColor,
                         ),
                       ),
                    ]),
                    Column(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  SettingsView()),
                                );
                          },
                     child: Padding(
                       padding: const EdgeInsets.only(left: 0,right: 0),
                       child: Container(
                        height: 50,
                        width: size.width,
                        child: Center(child: Text("Continue",
                         style: primaryFont.copyWith(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                                  
                        )),
                        decoration: BoxDecoration(
                           color: primaryColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                       ),
                     ),
                   ),
                      ],
                    ),
                  ],
                ),
          )),
      ));
  }
}