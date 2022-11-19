import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/views/profile_view/bussiness_details_view/bussiness_details_view.dart';

import '../../../const/app_colors.dart';

class EditMerchantAddressView extends StatefulWidget {
  const EditMerchantAddressView({super.key});

  @override
  State<EditMerchantAddressView> createState() => _EditMerchantAddressViewState();
}

class _EditMerchantAddressViewState extends State<EditMerchantAddressView> {
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
                                Text("Edit Merchant Address",
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
                          child: Text("Building Name",
                                   style: primaryFont.copyWith(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                                  ),
                        ),
                                               Padding(
                                                      padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
                                                      child: Container(
                                                        height: 40,
                                                        width: size.width,
                                                        child: TextField(
                                                          
                                                        decoration: InputDecoration(
                                                         border: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                           color:greyColor,
                                                        ),
                                                   borderRadius: BorderRadius.circular(5.0),
                                                          ),
                                                        hintText: "Perambur",
                                                ),
                                           ),
                                                      ),
                                                    ),
                                                    Padding(
                          padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
                          child: Text("Street Name",
                                   style: primaryFont.copyWith(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                                  ),
                        ),
                                               Padding(
                                                      padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
                                                      child: Container(
                                                        height: 40,
                                                        width: size.width,
                                                        child: TextField(
                                                          
                                                        decoration: InputDecoration(
                                                         border: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                           color:greyColor,
                                                        ),
                                                   borderRadius: BorderRadius.circular(5.0),
                                                          ),
                                                        hintText: "patel road",
                                                ),
                                           ),
                                                      ),
                                                    ),
                                                    Padding(
                          padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
                          child: Text("Pincode",
                                   style: primaryFont.copyWith(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                                  ),
                        ),
                                               Padding(
                                                      padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
                                                      child: Container(
                                                        height: 40,
                                                        width: size.width,
                                                        child: TextField(
                                                          
                                                        decoration: InputDecoration(
                                                         border: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                           color:greyColor,
                                                        ),
                                                   borderRadius: BorderRadius.circular(5.0),
                                                          ),
                                                        hintText: "600028",
                                                ),
                                           ),
                                                      ),
                                                    ),
                                                    Padding(
                          padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
                          child: Text("City",
                                   style: primaryFont.copyWith(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                                  ),
                        ),
                                               Padding(
                                                      padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
                                                      child: Container(
                                                        height: 40,
                                                        width: size.width,
                                                        child: TextField(
                                                          
                                                        decoration: InputDecoration(
                                                         border: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                           color:greyColor,
                                                        ),
                                                   borderRadius: BorderRadius.circular(5.0),
                                                          ),
                                                        hintText: "Chennai",
                                                ),
                                           ),
                                                      ),
                                                    ),
                                                    Padding(
                          padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
                          child: Text("State",
                                   style: primaryFont.copyWith(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                                  ),
                        ),
                                               Padding(
                                                      padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
                                                      child: Container(
                                                        height: 40,
                                                        width: size.width,
                                                        child: TextField(
                                                          
                                                        decoration: InputDecoration(
                                                         border: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                           color:greyColor,
                                                        ),
                                                   borderRadius: BorderRadius.circular(5.0),
                                                          ),
                                                        hintText: "Tamil nadu",
                                                ),
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
                        child: Center(child: Text("SAVE CHANGES",
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
                  ],
                ),
          )),
      ));
  }
}