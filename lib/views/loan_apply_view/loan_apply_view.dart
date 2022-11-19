import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:konnect/views/loan_apply_view/loan_apply_bank_view.dart';

import '../../const/app_colors.dart';
import '../../const/app_fonts.dart';

class LoanApplyView extends StatefulWidget {
  const LoanApplyView({super.key});

  @override
  State<LoanApplyView> createState() => _LoanApplyViewState();
}

class _LoanApplyViewState extends State<LoanApplyView> {
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
         body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          print(constraints.maxHeight);
              return SafeArea(
              child: Container(
                height: size.height,
                width: size.width,
                color: Colors.white,
                child: Column(
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
                            Icon(Icons.arrow_circle_left_outlined),
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
                   Padding(
                        padding:
                            const EdgeInsets.only(top:20,left: 15, right: 15),
                        child: TextFormField(
                          decoration: InputDecoration(
                            isDense: true,
                            // filled: true,
                            // fillColor: Color(0xffECF2F0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            hintText: "Search Bank Loan",
                            contentPadding: EdgeInsets.only(top: 5),
                            prefixIcon: Icon(
                              Icons.search,
                             // color: darkGreenColor,
                              size: 20,
                            ),
                            hintStyle: TextStyle(
                              //color: const Color(0xff517937),
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                       Container(
                         height:constraints.maxHeight>570 ? size.height*0.75 : size.height*0.70,
                       width: size.width,
                         child: ListView(
                          shrinkWrap: true,
                           children: [
                             InkWell(
                              onTap: (){
                                Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  LoanApplyBankView(title: "Indian Bank",)),
                                );
                              },
                               child: Padding(
                                        padding: const EdgeInsets.only(left: 45),
                                        child: Row(
                                          children: [
                                            Image(
                                              height: 30,
                                              width: 30,
                                                image: AssetImage(
                                                    "assets/images/indianbank.png")
                                                    ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "Indian Bank",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 17,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                             ),
                             Divider(
                                  thickness: 0.5,
                                  color: Color.fromARGB(255, 161, 161, 161),
                                ),
                             SizedBox(height: 10,),
                             InkWell(
                              onTap: (){
                                 Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  LoanApplyBankView(title: "Indian Overseas Bank",)),
                                );
                              },
                               child: Padding(
                                        padding: const EdgeInsets.only(left: 45),
                                        child: Row(
                                          children: [
                                            Image(
                                              height: 30,
                                              width: 30,
                                                image: AssetImage(
                                                    "assets/images/iob.png")
                                                    ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "Indian Overseas Bank",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 17,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                             ),
                             Divider(
                                  thickness: 0.5,
                                  color: Color.fromARGB(255, 161, 161, 161),
                                ),
                                SizedBox(height: 10,),
                             InkWell(
                              onTap: (){
                                 Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  LoanApplyBankView(title: "ICICI Bank",)),
                                );
                              },
                               child: Padding(
                                        padding: const EdgeInsets.only(left: 45),
                                        child: Row(
                                          children: [
                                            Image(
                                              height: 30,
                                              width: 30,
                                                image: AssetImage(
                                                    "assets/images/icicibank.png")
                                                    ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "ICICI Bank",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 17,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                             ),
                             Divider(
                                  thickness: 0.5,
                                  color: Color.fromARGB(255, 161, 161, 161),
                                ),
                                SizedBox(height: 10,),
                             InkWell(
                               onTap: (){
                                 Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  LoanApplyBankView(title: "Karur Vysya Bank",)),
                                );
                              },
                               child: Padding(
                                        padding: const EdgeInsets.only(left: 45),
                                        child: Row(
                                          children: [
                                            Image(
                                              height: 30,
                                              width: 30,
                                                image: AssetImage(
                                                    "assets/images/kvb.png")
                                                    ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "Karur Vysya Bank",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 17,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                             ),
                             Divider(
                                  thickness: 0.5,
                                  color: Color.fromARGB(255, 161, 161, 161),
                                ),
                                SizedBox(height: 10,),
                             InkWell(
                               onTap: (){
                                 Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  LoanApplyBankView(title: "Punjab National Bank",)),
                                );
                              },
                               child: Padding(
                                        padding: const EdgeInsets.only(left: 45),
                                        child: Row(
                                          children: [
                                            Image(
                                              height: 30,
                                              width: 30,
                                                image: AssetImage(
                                                    "assets/images/punjabbank.png")
                                                    ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "Punjab National Bank",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 17,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                             ),
                             Divider(
                                  thickness: 0.5,
                                  color: Color.fromARGB(255, 161, 161, 161),
                                ),
                                SizedBox(height: 10,),
                             InkWell(
                               onTap: (){
                                 Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  LoanApplyBankView(title: "Axix Bank",)),
                                );
                              },
                               child: Padding(
                                        padding: const EdgeInsets.only(left: 45),
                                        child: Row(
                                          children: [
                                            Image(
                                              height: 30,
                                              width: 30,
                                                image: AssetImage(
                                                    "assets/images/axixbank.png")
                                                    ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "Axix Bank",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 17,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                             ),
                             Divider(
                                  thickness: 0.5,
                                  color: Color.fromARGB(255, 161, 161, 161),
                                ),
                                SizedBox(height: 10,),
                             InkWell(
                               onTap: (){
                                 Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  LoanApplyBankView(title: "State Bank Of India",)),
                                );
                              },
                               child: Padding(
                                        padding: const EdgeInsets.only(left: 45),
                                        child: Row(
                                          children: [
                                            Image(
                                              height: 30,
                                              width: 30,
                                                image: AssetImage(
                                                    "assets/images/statebank.png")
                                                    ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "State Bank Of India ",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 17,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                             ),
                             Divider(
                                  thickness: 0.5,
                                  color: Color.fromARGB(255, 161, 161, 161),
                                ),
                                SizedBox(height: 10,),
                             InkWell(
                               onTap: (){
                                 Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  LoanApplyBankView(title: "Canara Bank",)),
                                );
                              },
                               child: Padding(
                                        padding: const EdgeInsets.only(left: 45),
                                        child: Row(
                                          children: [
                                            Image(
                                              height: 30,
                                              width: 30,
                                                image: AssetImage(
                                                    "assets/images/canarabank.png")
                                                    ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "Canara Bank",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 17,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                             ),
                             Divider(
                                  thickness: 0.5,
                                  color: Color.fromARGB(255, 161, 161, 161),
                                ),
                                SizedBox(height: 10,),
                             InkWell(
                               onTap: (){
                                 Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  LoanApplyBankView(title: "City Union Bank",)),
                                );
                              },
                               child: Padding(
                                        padding: const EdgeInsets.only(left: 45),
                                        child: Row(
                                          children: [
                                            Image(
                                              height: 30,
                                              width: 30,
                                                image: AssetImage(
                                                    "assets/images/cub.png")
                                                    ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "City Union Bank",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 17,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                             ),
                             Divider(
                                  thickness: 0.5,
                                  color: Color.fromARGB(255, 161, 161, 161),
                                ),
                                SizedBox(height: 10,),
                             InkWell(
                               onTap: (){
                                 Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  LoanApplyBankView(title: "Indian Bank",)),
                                );
                              },
                               child: Padding(
                                        padding: const EdgeInsets.only(left: 45),
                                        child: Row(
                                          children: [
                                            Image(
                                              height: 30,
                                              width: 30,
                                                image: AssetImage(
                                                    "assets/images/indianbank.png")
                                                    ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "Indian Bank",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 17,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                             ),
                             Divider(
                                  thickness: 0.5,
                                  color: Color.fromARGB(255, 161, 161, 161),
                                ),
                                SizedBox(height: 10,),
                             InkWell(
                               onTap: (){
                                 Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  LoanApplyBankView(title: "Axix Bank",)),
                                );
                              },
                               child: Padding(
                                        padding: const EdgeInsets.only(left: 45),
                                        child: Row(
                                          children: [
                                            Image(
                                              height: 30,
                                              width: 30,
                                                image: AssetImage(
                                                    "assets/images/axixbank.png")
                                                    ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "Axix Bank",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 17,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                             ),
                             Divider(
                                  thickness: 0.5,
                                  color: Color.fromARGB(255, 161, 161, 161),
                                ),
                                SizedBox(height: 10,),
                             InkWell(
                               onTap: (){
                                 Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  LoanApplyBankView(title: "State Bank of India",)),
                                );
                              },
                               child: Padding(
                                        padding: const EdgeInsets.only(left: 45),
                                        child: Row(
                                          children: [
                                            Image(
                                              height: 30,
                                              width: 30,
                                                image: AssetImage(
                                                    "assets/images/statebank.png")
                                                    ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "State Bank of India",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 17,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                             ),
                             Divider(
                                  thickness: 0.5,
                                  color: Color.fromARGB(255, 161, 161, 161),
                                ),
                                SizedBox(height: 10,),
                             InkWell(
                               onTap: (){
                                 Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  LoanApplyBankView(title: "Karur Vysya Bank",)),
                                );
                              },
                               child: Padding(
                                        padding: const EdgeInsets.only(left: 45),
                                        child: Row(
                                          children: [
                                            Image(
                                              height: 30,
                                              width: 30,
                                                image: AssetImage(
                                                    "assets/images/kvb.png")
                                                    ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "Karur Vysya Bank",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 17,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                             ),
                             Divider(
                                  thickness: 0.5,
                                  color: Color.fromARGB(255, 161, 161, 161),
                                ),
                           ],
                         ),
                       ),
                              
                  ],
                ),
              ),
              
        );
           }
         ),
      ),
      
      );
  }
}