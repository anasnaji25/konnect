import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../../const/app_colors.dart';
import '../../../const/app_fonts.dart';

class ManageQRView extends StatefulWidget {
  const ManageQRView({super.key});

  @override
  State<ManageQRView> createState() => _ManageQRViewState();
}

class _ManageQRViewState extends State<ManageQRView> {
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
                     padding: const EdgeInsets.all(20.0),
                     child:Container(
                      height: 150,
                      width: 150,
                       child: Container(
                        height: 100,
                        width: 100,
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/icons/qrcode.png")),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          
                        ),
                       ),
                       decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(color: greyColor),
                       ),
                     ),
                   ),
                   Text("Q123454464",
                             style: primaryFont.copyWith(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 10,),
                            Text("Download this qr code, print it and past",
                             style: primaryFont.copyWith(
                              color: Colors.black,
                              fontSize: 15,
                              ),
                            ),
                            Text("it near the billing counter from any UPI app",
                             style: primaryFont.copyWith(
                              color: Colors.black,
                              fontSize: 15,
                              ),
                            ),
                            SizedBox(height: 50,),
                            InkWell(
                          onTap: (){
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(builder: (context) =>  EmploymentDetailsView()),
                            //     );
                          },
                     child: Padding(
                       padding: const EdgeInsets.only(left: 15,right: 15),
                       child: Container(
                        height: 50,
                        width: size.width,
                        child: Center(child: Text("DOWNLOAD PDF",
                         style: primaryFont.copyWith(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                                  
                        )),
                        decoration: BoxDecoration(
                           color: primaryColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                       ),
                     ),
                   ),
                   SizedBox(height: 50,),
                   Padding(
                     padding: const EdgeInsets.only(left: 15,right: 15),
                     child: Container(
                      height: 100,
                      width: size.width,
                      decoration: BoxDecoration(
                        //border: Border.all(color: greyColor),
                        boxShadow: [BoxShadow(blurRadius: 3.0,color:greyColor,offset: Offset(0,1),spreadRadius: 1.0)]
                      ),
                      child: Container(
                        height: 80,
                        width: size.width,
                        color: Colors.white,
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text("NOTIFICATION RECEIVERS",
                               style: primaryFont.copyWith(
                                color: Color(0xff413B3B),
                                fontSize: 15,
                                ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10,top: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                  Text("9867856789",
                                 style: primaryFont.copyWith(
                                  color: Color(0xff413B3B),
                                  fontSize: 15,
                                  ),
                                  ),
                                  Icon(Icons.delete)
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
                      ),
                     ),
                   ),
                ]),
          )),
      ));
  }
}