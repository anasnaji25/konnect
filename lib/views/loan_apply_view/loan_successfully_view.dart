import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:konnect/views/loan_apply_view/loan_apply_view.dart';
import 'package:konnect/views/profile_view/profile_view.dart';

import '../../const/app_colors.dart';
import '../../const/app_fonts.dart';

class LoanSuccessfully extends StatefulWidget {
  const LoanSuccessfully({super.key});

  @override
  State<LoanSuccessfully> createState() => _LoanSuccessfullyState();
}

class _LoanSuccessfullyState extends State<LoanSuccessfully> {
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
                            Text("Loan Apply",
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
                           color: Colors.black,
                           fontSize: 26,
                           fontWeight: FontWeight.w500),
                         ),
                         SizedBox(height: 10,),
                         Text("₹300000",
                          style: primaryFont.copyWith(
                           color: Colors.black,
                           fontSize: 36,
                           fontWeight: FontWeight.w500),
                         ),
                         SizedBox(height: 100,),
                         Center(
                          child: Image(image: AssetImage("assets/images/successful.png"))),
                          SizedBox(height: 10,),
                          Text("Succesful Loan Apply just wait one\n"
                          "hour credit account balance your account",
                          textAlign: TextAlign.center,
                          style: primaryFont.copyWith(
                           color: Colors.black,
                           fontSize: 18,
                           ),
                         ),
                         SizedBox(height: 150,),
                            InkWell(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  ProfileView()),
                                );
                          },
                     child: Padding(
                       padding: const EdgeInsets.only(left: 10,right: 10),
                       child: Container(
                        height: 50,
                        width: size.width,
                        child: Center(child: Text("DONE",
                         style: primaryFont.copyWith(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                                  
                        )),
                        decoration: BoxDecoration(
                           color: primaryColor,
                          borderRadius: BorderRadius.circular(2),
                        ),
                       ),
                     ),
                   ),
                ]),
          )),
      ));
  }
}