import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:konnect/views/profile_view/bussiness_details_view/edit_bussiness_name_view.dart';
import 'package:konnect/views/profile_view/bussiness_details_view/edit_merchant_address_view.dart';

import '../../../const/app_colors.dart';
import '../../../const/app_fonts.dart';


class BussinessDetailsView extends StatefulWidget {
  const BussinessDetailsView({super.key});

  @override
  State<BussinessDetailsView> createState() => _BussinessDetailsViewState();
}

class _BussinessDetailsViewState extends State<BussinessDetailsView> {

  

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
                            Text("Bussiness Details",
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
                     padding: const EdgeInsets.only(left: 15,right: 15,top: 30),
                     child: Container(
                      height: 50,
                      width: size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        //border: Border.all(color: greyColor),
                        boxShadow: [BoxShadow(blurRadius: 3.0,color:greyColor,offset: Offset(0,1),spreadRadius: 1.0)]
                      ),
                      child: Container(
                        height: 60,
                        width: size.width,
                        color: Colors.white,
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 5),
                            child: Row(
                              children: [
                                Text("Bussiness Name",
                               style: primaryFont.copyWith(
                                color: Colors.black,
                                fontSize: 13,
                                ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10,),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                  Text("Bussiness",
                                 style: primaryFont.copyWith(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold
                                  ),
                                  ),
                                  InkWell(
                                    onTap: (){
                                      Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  EditBussinessName()),
                                );
                                    },
                                    child: Icon(Icons.edit)),
                              ],
                            ),
                            
                          ),
                          
                        ]),
                      ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 15,right: 15,top: 20),
                     child: Container(
                      height: 180,
                      width: size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        //border: Border.all(color: greyColor),
                        boxShadow: [BoxShadow(blurRadius: 3.0,color:greyColor,offset: Offset(0,1),spreadRadius: 1.0)]
                      ),
                      child: Container(
                        height: 60,
                        width: size.width,
                        color: Colors.white,
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 5),
                            child: Row(
                              children: [
                                Text("Bussiness Details",
                               style: primaryFont.copyWith(
                                color: Colors.black,
                                fontSize: 13,
                                ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30,right: 10,top: 10),
                            child: Row(
                             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.call),
                                SizedBox(width: 10,),
                                  Text("9876543218",
                                 style: primaryFont.copyWith(
                                  color: Colors.black,
                                  fontSize: 13,
                                  ),
                                  ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10),
                            child: Divider(
                              color: greyColor,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30,right: 10,top: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.location_on),
                                    SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("patel road perambur,chennai",
                                       style: primaryFont.copyWith(
                                            color: Colors.black,
                                            fontSize: 13,
                                            ),
                                            ),
                                             Text("tamil nadu,600011",
                                       style: primaryFont.copyWith(
                                            color: Colors.black,
                                            fontSize: 13,
                                            ),
                                            ),
                                          ],
                                        ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: (){
                                        Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  EditMerchantAddressView()),
                                );
                                      },
                                      child: Icon(Icons.edit))
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10),
                            child: Divider(
                              color: greyColor,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30,right: 10,top: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.edit_note_outlined),
                                    SizedBox(width: 10,),
                                         Text("GSTIN",
                                       style: primaryFont.copyWith(
                                        color: Colors.black,
                                        fontSize: 13,
                                        ),
                                        ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: (){
                                        showModalBottomSheet(
                                          context: context, 
                                          builder:(BuildContext context) {
                                            return SizedBox(
                                              height: 200,
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text("ADD GSTIN",
                                                         style: primaryFont.copyWith(
                                                         color:Colors.black,
                                                         fontSize: 22,
                                                         ),
                                                        ),
                                                        InkWell(
                                                          onTap: (){
                                                            Navigator.pop(context);
                                                          },
                                                          child: Icon(Icons.cancel_sharp)),
                                                      ],
                                                    ),
                                                  ),
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                                                  child: TextField(
                                                  decoration: InputDecoration(
                                                   border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                     color:greyColor,
                                                  ),
                                               borderRadius: BorderRadius.circular(5.0),
                                                    ),
                                                  hintText: "Enter GSTIN",
                                            ),
                                       ),
                                                ),
                                                InkWell(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  BussinessDetailsView()),
                                );
                          },
                     child: Padding(
                       padding: const EdgeInsets.only(top: 20),
                       child: Container(
                        height: 50,
                        width: size.width,
                        child: Center(child: Text("UPDATE",
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
 
                                              ]),
                                            );
                                          });
                                      },
                                      child: Text("ADD GSTIN",
                                         style: primaryFont.copyWith(
                                          color:lightblue,
                                          fontSize: 13,
                                          ),
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          
                        ]),
                      ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 15,right: 15,top: 20),
                     child: Container(
                      height: 50,
                      width: size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        //border: Border.all(color: greyColor),
                        boxShadow: [BoxShadow(blurRadius: 3.0,color:greyColor,offset: Offset(0,1),spreadRadius: 1.0)]
                      ),
                      child: Container(
                        height: 60,
                        width: size.width,
                        color: Colors.white,
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 5),
                            child: Row(
                              children: [
                                Text("Category",
                               style: primaryFont.copyWith(
                                color: Colors.black,
                                fontSize: 13,
                                ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10,),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                  Text("Agriculture",
                                 style: primaryFont.copyWith(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold
                                  ),
                                  ),
                                  InkWell(
                                    onTap: (){
                                      showModalBottomSheet(
                                        isDismissible: false,
                                          context: context, 
                                          builder:(BuildContext context) {
                                            return SizedBox(
                                              height: 500,
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text("Select your bussiness category",
                                                         style: primaryFont.copyWith(
                                                         color:Colors.black,
                                                         fontSize: 21,
                                                         ),
                                                        ),
                                                        InkWell(
                                                          onTap: (){
                                                            Navigator.pop(context);
                                                          },
                                                          child: Icon(Icons.cancel_sharp)),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 15,right: 10,top: 15),
                                                    child: Container(
                                                      height: size.height * 0.47,
                                                      child: ListView(
                                                        shrinkWrap: true,
                                                        children: [
                                                          Text("Fuel",
                                                               style: primaryFont.copyWith(
                                                               color:Colors.black,
                                                               fontSize: 20,
                                                               ),
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Divider(
                                                                color: greyColor,
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Text("Cowin",
                                                               style: primaryFont.copyWith(
                                                               color:Colors.black,
                                                               fontSize: 20,
                                                               ),
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Divider(
                                                                color: greyColor,
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Text("Travel",
                                                               style: primaryFont.copyWith(
                                                               color:Colors.black,
                                                               fontSize: 20,
                                                               ),
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Divider(
                                                                color: greyColor,
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Text("Retail and Shopping",
                                                               style: primaryFont.copyWith(
                                                               color:Colors.black,
                                                               fontSize: 20,
                                                               ),
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Divider(
                                                                color: greyColor,
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Text("Gc",
                                                               style: primaryFont.copyWith(
                                                               color:Colors.black,
                                                               fontSize: 20,
                                                               ),
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Divider(
                                                                color: greyColor,
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Text("Others",
                                                               style: primaryFont.copyWith(
                                                               color:Colors.black,
                                                               fontSize: 20,
                                                               ),
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Divider(
                                                                color: greyColor,
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Text("Grocery and Daily Needs",
                                                               style: primaryFont.copyWith(
                                                               color:Colors.black,
                                                               fontSize: 20,
                                                               ),
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Divider(
                                                                color: greyColor,
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Text("Service and Utilities",
                                                               style: primaryFont.copyWith(
                                                               color:Colors.black,
                                                               fontSize: 20,
                                                               ),
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Divider(
                                                                color: greyColor,
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Text("Financial Serices",
                                                               style: primaryFont.copyWith(
                                                               color:Colors.black,
                                                               fontSize: 20,
                                                               ),
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Divider(
                                                                color: greyColor,
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Text("Commute",
                                                               style: primaryFont.copyWith(
                                                               color:Colors.black,
                                                               fontSize: 20,
                                                               ),
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Divider(
                                                                color: greyColor,
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Text("Food & Beveroges",
                                                               style: primaryFont.copyWith(
                                                               color:Colors.black,
                                                               fontSize: 20,
                                                               ),
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Divider(
                                                                color: greyColor,
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Text("Hospitality",
                                                               style: primaryFont.copyWith(
                                                               color:Colors.black,
                                                               fontSize: 20,
                                                               ),
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Divider(
                                                                color: greyColor,
                                                              ),
                                                              Text("Entertainment",
                                                               style: primaryFont.copyWith(
                                                               color:Colors.black,
                                                               fontSize: 20,
                                                               ),
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Divider(
                                                                color: greyColor,
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Text("Gprc",
                                                               style: primaryFont.copyWith(
                                                               color:Colors.black,
                                                               fontSize: 20,
                                                               ),
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Divider(
                                                                color: greyColor,
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Text("Agriculture",
                                                               style: primaryFont.copyWith(
                                                               color:Colors.black,
                                                               fontSize: 20,
                                                              
                                                               ),
                                                              ),
                                                             
                                                        ],
                                                         
                                                      ),
                                                    ),
                                                  ),
                                              ]),
                                            );
                                          });
                                    },
                                    child: Icon(Icons.edit)),
                              ],
                            ),
                            
                          ),
                          
                        ]),
                      ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 15,right: 15,top: 20),
                     child: Container(
                      height: 50,
                      width: size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        //border: Border.all(color: greyColor),
                        boxShadow: [BoxShadow(blurRadius: 3.0,color:greyColor,offset: Offset(0,1),spreadRadius: 1.0)]
                      ),
                      child: Container(
                        height: 60,
                        width: size.width,
                        color: Colors.white,
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 5),
                            child: Row(
                              children: [
                                Text("Payment Option",
                               style: primaryFont.copyWith(
                                color: Colors.black,
                                fontSize: 13,
                                ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10,top: 5),
                            child: Row(
                             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                  Text("All BHIM UPI apps, Paytm Wallet",
                                 style: primaryFont.copyWith(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold
                                  ),
                                  ),
                                  
                              ],
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