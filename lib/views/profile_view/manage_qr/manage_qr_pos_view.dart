import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:konnect/views/profile_view/manage_qr/manage_qr_full_view.dart';

import '../../../const/app_colors.dart';
import '../../../const/app_fonts.dart';

class ManageQrPosView extends StatefulWidget {
  const ManageQrPosView({super.key});

  @override
  State<ManageQrPosView> createState() => _ManageQrPosViewState();
}

class _ManageQrPosViewState extends State<ManageQrPosView> {
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
                            Text("Manage QR/POS",
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
                     padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
                     child: Container(
                      height: 140,
                      width: size.width,
                      child:Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image(
                                      height: 30,
                                      width: 30,
                                      image: AssetImage("assets/icons/qrcode.png"),
                                      color: Colors.black,
                                      ),
                                      SizedBox(width: 10,),
                                  Text("Q123454464",
                             style: primaryFont.copyWith(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.w500),
                            ),
                                  ],
                                ),
                                  InkWell(
                                    onTap: (){
                                      Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  ManageQRView()),
                                );
                                    },
                                    child: Text("VIEW QR",
                                                               style: primaryFont.copyWith(
                                                                color: lightblue,
                                                                fontSize: 13,
                                                                fontWeight: FontWeight.w500),
                                                              ),
                                  ),
                            
                              ],
                            ),
                            
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                            child: Divider(
                              thickness: 0.5,
                              color: greyColor,
                            ),
                          ),
                           Padding(
                            padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image(
                                  height: 30,
                                  width: 30,
                                  image: AssetImage("assets/icons/shop.png"),
                                  color: Colors.black,
                                  ),
                                  SizedBox(width: 10,),
                                  Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Bussiness:",
                             style: primaryFont.copyWith(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.w500),
                            ),
                            Text("MS456789900272234",
                             style: primaryFont.copyWith(
                              color: Colors.black,
                              fontSize: 17,
                              ),
                            ),
                                ],
                                  ),
                                 
                            
                              ],
                            ),
                            
                          ),
                          
                        ]) ,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(5)
                      ),
                     ),
                   ),
                ]),
          )),
      ));
  }
}