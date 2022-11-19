import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../const/app_colors.dart';
import '../../const/app_fonts.dart';

class sample extends StatefulWidget {
  const sample({super.key});

  @override
  State<sample> createState() => _sampleState();
}

class _sampleState extends State<sample> {
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
                ]),
          )),
      ));
  }
}