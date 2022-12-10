import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../../const/app_colors.dart';
import '../../../const/app_fonts.dart';

class HelpView extends StatefulWidget {
  const HelpView({super.key});

  @override
  State<HelpView> createState() => _HelpViewState();
}

class _HelpViewState extends State<HelpView> {

  final List quotes = [
   {
     "quote":
         "Finding a Bank. Before you can change banks, you first need to decide where you want to move your money. Make a List of Your Automatic Payments and Deposits. Open a New Bank Account. Enrolls in Online and Mobile Banking. Update Your Automatic Payments and Deposits. Close Your Old Bank Account.",
     "author": "Changing My Bank Account"
   },
   {
     "quote":
         "On your Android phone or tablet, open the Contacts app . Tap the contact you want to edit. At the top right, tap Edit . If asked, choose the account. Enter the contact's name, email, and phone number. To change the photo for a contact, tap the photo, then choose an option. Tap Save.",
     "author": "Changing My Contact Details"
   },
   {
     "quote":
         "Use the Principle of Least Privilege. Limit or Eliminate Super-User Access Privileges. Plan Privileges Ahead of Time. Use a Password Manager. Review Privileged User Access.",
     "author": "Managing User Access"
   },
   {
     "quote": "Ask Customers What's Important to THEM. Talk with your existing customers — don't just assume. Be Strategic. Differentiate Your Business. Partner – where it makes sense. Start a newsletter. Cement relationships with key customers. Automate a process. Do something green.",
     "author": "Updating Your Store or Business Details"
   },
   {
     "quote":
         "When you stop using a social networking profile or website, it is a good idea to deactivate or delete your account. This will mean that your content is no longer visible online and should not be searchable online. It will also remove the risk of these accounts being used by others or hacked without you knowing",
     "author": "Account deactivation"
   },
   
];

  Widget _buildExpandableTile(item) {
    return ExpansionTile(
      title: Text(
        item['author'],
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),
      ),
      children: <Widget>[
        ListTile(
          title: Text(
            item['quote'],
            style: TextStyle(fontWeight: FontWeight.w400,fontSize: 13),
          ),
        )
      ],
    );
  }

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
                            Text("Help",
                             style: primaryFont.copyWith(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                            ),
                          ]),
                          Row(
                            children: [
                          
                            ],
                          ),
                        ],
                      ),
                    ),
                   ),
                     Padding(
                       padding: const EdgeInsets.only(left: 25,top: 15,bottom: 10),
                       child: Text("My Profile & Bank Account",
                                    style: primaryFont.copyWith(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500
                                    ),
                                    ),
                     ),
                   Container(
                    height: 600,
                     child: Builder(
                 builder: (context) {
                return ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: quotes.length,
            itemBuilder: (BuildContext context, int index) {
              return _buildExpandableTile(quotes[index]);
            },
            separatorBuilder: (BuildContext context, int index) => const Divider(),
          );
        }
      ),
                   ), 

                ]),
          )),
      ));
      
  }
}