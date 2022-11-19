import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:konnect/views/loan_apply_view/choose_loan_view.dart';

import '../../const/app_colors.dart';
import '../../const/app_fonts.dart';

class LoanApplyBankView extends StatefulWidget {
   String title;
  LoanApplyBankView( {super.key,required this.title});

  @override
  State<LoanApplyBankView> createState() => _LoanApplyBankViewState();
}

class _LoanApplyBankViewState extends State<LoanApplyBankView> {
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
                 // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              SizedBox(width: 5,),
                            Text(widget.title,
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
                   Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 10,right: 10),
                         child: Container(
                          height: 100,
                          width: size.width,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "Loan Account Number"
                                  ),
                                ),
                                
                              ),
                              Text("please enter your loan account number",),
                            ],
                          ),
                          decoration: BoxDecoration(                        
                            border: Border.all(
                              color: greyColor,
                            ),
                          ),
                         ),
                       ),
                       SizedBox(height: 500,),
                        InkWell(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  ChooseLoanView()),
                                );
                          },
                     child: Container(
                      height: 60,
                      width: size.width,
                      color: primaryColor,
                      child: Center(child: Text("CONFIRM",
                       style: primaryFont.copyWith(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w500),
                      )),
                     ),
                   ),
                     ],
                   ),
                  
                ]),
                
              
          ),
          ),
      ),
    );
  }
}