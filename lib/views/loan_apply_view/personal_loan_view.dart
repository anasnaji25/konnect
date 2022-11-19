import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../const/app_colors.dart';
import '../../const/app_fonts.dart';
import 'employment_details_view.dart';

class PersonalLoanView extends StatefulWidget {
  const PersonalLoanView({super.key});

  @override
  State<PersonalLoanView> createState() => _PersonalLoanViewState();
}

class _PersonalLoanViewState extends State<PersonalLoanView> {
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
                            Text("Personal Loan",
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
                   SizedBox(height: 10,),
                   Text("Loan Amount Up To",
                             style: primaryFont.copyWith(
                              color: primaryColor,
                              fontSize: 25,
                              fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 10,),
                   Text("₹300000",
                             style: primaryFont.copyWith(
                              color: Colors.black,
                              fontSize: 35,
                              fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 30,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 250,
                                width: size.width,
                                
                                decoration: BoxDecoration(
                                  border: Border.all(color: greyColor,width: 1),
                                  boxShadow: [BoxShadow(blurRadius: 3.0,color:greyColor,offset: Offset(0,1),spreadRadius: 1.0)]
                                ),
                                child: Container(
                                  height: 250,
                                  width: size.width,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                             Text("Processing Fees",
                             style: primaryFont.copyWith(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                            ),
                             Text("Up To 3%",
                             style: primaryFont.copyWith(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                            ),
                                          ],
                                        ),
                                        Text("Deducated from loan amount",
                                         style: primaryFont.copyWith(
                              color: Colors.black,
                              fontSize: 10,
                              //fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Divider(
                                          thickness: 1.5,
                                          color: Color.fromARGB(255, 170, 170, 170),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                             Text("GST (18% on all fees)",
                             style: primaryFont.copyWith(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                            ),
                             Text("18% on fees",
                             style: primaryFont.copyWith(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                            ),
                                          ],
                                        ),
                                         Text("Deducated from loan amount",
                                          style: primaryFont.copyWith(
                              color: Colors.black,
                              fontSize: 10,
                              //fontWeight: FontWeight.w500),
                                          ),
                                         ),
                                        Divider(
                                          thickness: 1.5,
                                          color: Color.fromARGB(255, 170, 170, 170),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                             Text("Interest Starting From",
                             style: primaryFont.copyWith(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                            ),
                             Text("18% Fees",
                             style: primaryFont.copyWith(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                            ),
                                          ],
                                        ),
                                        
                                        Divider(
                                          thickness: 1.5,
                                          color: Color.fromARGB(255, 170, 170, 170),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                             Text("Tenure",
                             style: primaryFont.copyWith(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                            ),
                             Column(
                               children: [
                                 Text("UpTo 24",
                                 style: primaryFont.copyWith(
                                  color: greyColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text("months",
                                 style: primaryFont.copyWith(
                                  color: greyColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                               ],
                             ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 60,),
                            Row(
                              children: [
                                Icon(Icons.question_mark_rounded),
                                Text("Fill employment details to apply.Applicable only for\n"
                                "salaried Professionals",
                                style: primaryFont.copyWith(
                                  color: Colors.black,
                                  fontSize: 12,),
                                ),
                              ],
                            ),
                            SizedBox(height: 50,),
                            InkWell(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  EmploymentDetailsView()),
                                );
                          },
                     child: Padding(
                       padding: const EdgeInsets.only(left: 15,right: 15),
                       child: Container(
                        height: 50,
                        width: size.width,
                        child: Center(child: Text("APPLY NOW",
                         style: primaryFont.copyWith(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500),
                                  
                        )),
                        decoration: BoxDecoration(
                           color: primaryColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                       ),
                     ),
                   ),
                ]),
          )),
      ));
  }
}