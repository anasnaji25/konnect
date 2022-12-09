import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:konnect/views/profile_view/bussiness_details_view/bussiness_details_view.dart';

import '../../../const/app_colors.dart';
import '../../../const/app_fonts.dart';

class EditBussinessName extends StatefulWidget {
  const EditBussinessName({super.key});

  @override
  State<EditBussinessName> createState() => _EditBussinessNameState();
}

class _EditBussinessNameState extends State<EditBussinessName> {
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
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                                Text("Edit Bussiness Name",
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
                         padding: const EdgeInsets.only(top: 15,left: 10),
                         child: Text("Bussiness Name",
                                   style: primaryFont.copyWith(
                                    color: Colors.black,
                                    fontSize: 13,
                                    ),
                                  ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 5,left: 10,right: 10),
                         child: Container(
                          height: 35,
                          width: size.width,
                          child: Text("Bussiness ",
                          textAlign: TextAlign.start,
                                   style: primaryFont.copyWith(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold
                                    ),
                                  ),
                          decoration: BoxDecoration(
                            border: Border.all(color: greyColor),
                            borderRadius: BorderRadius.circular(5),
                          ),
                         ),
                       ),
                    ]),
                    Column(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  BussinessDetailsView()),
                                );
                          },
                     child: Padding(
                       padding: const EdgeInsets.only(left: 0,right: 0),
                       child: Container(
                        height: 60,
                        width: size.width,
                        child: Center(child: Text("BUSSINESS NAME",
                         style: primaryFont.copyWith(
                                  color: Colors.white,
                                  fontSize: 22,
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