import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:konnect/views/loan_apply_view/verify_income_view.dart';

import '../../const/app_colors.dart';
import '../../const/app_fonts.dart';

class EmploymentDetailsView extends StatefulWidget {
  const EmploymentDetailsView({super.key});

  @override
  State<EmploymentDetailsView> createState() => _EmploymentDetailsViewState();
}

class _EmploymentDetailsViewState extends State<EmploymentDetailsView> {
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
                            Text("Employment Details",
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
                     padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Fill WorkPlace Details",
                             style: primaryFont.copyWith(
                                    color: greyColor,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                            ),
                            Text("Where are you currently employed",
                             style: primaryFont.copyWith(
                                    color: greyColor,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Icon(Icons.fork_right)
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
                     padding: const EdgeInsets.only(left: 10,right: 15,top: 10),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Verify Name",
                             style: primaryFont.copyWith(
                                    color: greyColor,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                            ),
                            Text("For high credit",
                             style: primaryFont.copyWith(
                                    color: greyColor,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  VerifyIncomeView()),
                                );
                          },
                          child: Image(
                                  image: AssetImage("assets/icons/ios_arrow.png"),
                                  color: Colors.black,
                                  ),
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
                   SizedBox(height: 200,),
                   Text("Need Help? Talk to our representative for help",
                             style: primaryFont.copyWith(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                            ),
                            Text("Monday - Saturday : 10:00 AM - 07:00 PM",
                             style: primaryFont.copyWith(
                                    color: greyColor,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400),
                            ),
                            SizedBox(height: 20,),
                            Padding(
                       padding: const EdgeInsets.only(left: 40,right: 40),
                       child: Container(
                        height: 50,
                        width: size.width,
                        child: Center(child: Text("CALL NOW",
                         style: primaryFont.copyWith(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                                  
                        )),
                        decoration: BoxDecoration(
                          border: Border.all(),
                           color: Colors.transparent,
                          borderRadius: BorderRadius.circular(5),
                        ),
                       ),
                     ),
                     SizedBox(
                      height: 100,
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 15,right: 15),
                       child: Container(
                        height: 50,
                        width: size.width,
                        child: Center(child: Text("Confirm and Continue",
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
                ]),
          )),
      ));
  }
}