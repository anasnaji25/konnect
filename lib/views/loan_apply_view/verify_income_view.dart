import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:konnect/views/loan_apply_view/employment_details_view.dart';
import 'package:konnect/views/loan_apply_view/loan_successfully_view.dart';

import '../../const/app_colors.dart';
import '../../const/app_fonts.dart';

class VerifyIncomeView extends StatefulWidget {
  const VerifyIncomeView({super.key});

  @override
  State<VerifyIncomeView> createState() => _VerifyIncomeViewState();
}

class _VerifyIncomeViewState extends State<VerifyIncomeView> {
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
                            Text("Verify Income",
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
                     padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                     child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Upload Bank Statement PDF",
                            textDirection: TextDirection.ltr,
                      textAlign: TextAlign.right,
                                   style: primaryFont.copyWith(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                  ),
                          ],
                        ),
                        SizedBox(height: 10,),
                         Text("Upload last 6 month Bank Statement. Download the statement from your bank account and upload the pdf files as is",
                            textDirection: TextDirection.ltr,
                      textAlign: TextAlign.left,
                                   style: primaryFont.copyWith(
                                          color: greyColor,
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(height: 200,),
                                  Padding(
                       padding: const EdgeInsets.only(left: 20,right: 20),
                       child: Container(
                        height: 50,
                        width: size.width,
                        child: Center(child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 25,
                                width: 25,
                                child: Padding(
                                  padding: const EdgeInsets.all(3.5),
                                  child: Container(
                                    height: 10,
                                    width: 10,
                                    
                                    decoration: BoxDecoration(
                           
                             color: primaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                            border: Border.all(color: greyColor),
                             color: Colors.transparent,
                            borderRadius: BorderRadius.circular(15),
                          ),
                              ),
                              SizedBox(width: 10,),
                              Text("Upload Bank Statement PDF",
                               style: primaryFont.copyWith(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                        
                              ),
                            ],
                          ),
                        )),
                        decoration: BoxDecoration(
                          border: Border.all(color: primaryColor),
                           color: Colors.transparent,
                          borderRadius: BorderRadius.circular(1),
                        ),
                       ),
                     ),
                     SizedBox(height: 20,),
                                  Padding(
                       padding: const EdgeInsets.only(left: 20,right: 20),
                       child: Container(
                        height: 50,
                        width: size.width,
                        child: Center(child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 25,
                                width: 25,
                                child: Padding(
                                  padding: const EdgeInsets.all(3.5),
                                  child: Container(
                                    height: 10,
                                    width: 10,
                                    
                                    decoration: BoxDecoration(
                           
                             color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                            border: Border.all(color: greyColor),
                             color: Colors.transparent,
                            borderRadius: BorderRadius.circular(15),
                          ),
                              ),
                              SizedBox(width: 10,),
                              Text("Verify via net banking",
                               style: primaryFont.copyWith(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                        
                              ),
                            ],
                          ),
                        )),
                        decoration: BoxDecoration(
                          border: Border.all(color: greyColor),
                           color: Colors.transparent,
                          borderRadius: BorderRadius.circular(1),
                        ),
                       ),
                     ),
                      SizedBox(height: 150,),
                            InkWell(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  LoanSuccessfully()),
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
                   ),
                ]),
          )),
      ));
  }
}