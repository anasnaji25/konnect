import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:konnect/views/loan_apply_view/personal_loan_view.dart';

import '../../const/app_colors.dart';
import '../../const/app_fonts.dart';

class ChooseLoanView extends StatefulWidget {
  const ChooseLoanView({super.key});

  @override
  State<ChooseLoanView> createState() => _ChooseLoanViewState();
}

class _ChooseLoanViewState extends State<ChooseLoanView> {
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

                            Text("Choose Loan",
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
                   SizedBox(height: 30,),
                   InkWell(
                    onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  PersonalLoanView()),
                                );
                          },
                     child: Padding(
                       padding: const EdgeInsets.only(left: 10,right: 10),
                       child: Container(
                        height: 100,
                        width: size.width,
                        color: primaryColor,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Personal Loan",
                              style: primaryFont.copyWith(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500),
                              ),
                               Text("₹300000",
                              style: primaryFont.copyWith(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Image(height: 35,width: 35,
                            image: AssetImage("assets/images/kvb.png"))
                        ],)
                       ),
                     ),
                   ),
                   SizedBox(height: 20,),
                   Padding(
                     padding: const EdgeInsets.only(left: 10,right: 10),
                     child: Container(
                      height: 100,
                      width: size.width,
                      color: secondaryColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("House Loan",
                            style: primaryFont.copyWith(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500),
                            ),
                             Text("₹500000",
                            style: primaryFont.copyWith(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Image(height: 35,width: 35,
                          image: AssetImage("assets/images/kvb.png"))
                      ],)
                     ),
                   ),
                   SizedBox(height: 20,),
                   Padding(
                     padding: const EdgeInsets.only(left: 10,right: 10),
                     child: Container(
                      height: 100,
                      width: size.width,
                      color: lightGreenColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Health Loan",
                            style: primaryFont.copyWith(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500),
                            ),
                             Text("₹30000",
                            style: primaryFont.copyWith(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Image(height: 35,width: 35,
                          image: AssetImage("assets/images/kvb.png"))
                      ],)
                     ),
                   ),
                ]),
          )),
      ));
  }
}