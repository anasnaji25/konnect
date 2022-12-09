import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/views/home_view/home_navigator_view.dart';
import 'package:konnect/views/lading_view/lets_get_started_screen.dart';

class LoadingOnlineOfflineView extends StatefulWidget {
  const LoadingOnlineOfflineView({super.key});

  @override
  State<LoadingOnlineOfflineView> createState() => _LoadingOnlineOfflineViewState();
}

class _LoadingOnlineOfflineViewState extends State<LoadingOnlineOfflineView> {
  @override
  void initState() {
    super.initState();
    redirectToNext();
  }

  redirectToNext() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offAll(() => HomePageWithNavigation());
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [secondaryColor, primaryColor],
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Container(
            height: size.height,
            width: size.width,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15),
                      child: Image.asset("assets/icons/loading_screen_img1 (1).png",height: size.height * 0.27,
                      fit: BoxFit.contain,),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Text("Online Transactions",style: primaryFont.copyWith(
                  color: Colors.green,
                  fontSize: 21,
                  fontWeight: FontWeight.w600
                ),),
                   const SizedBox(
                  height: 40,
                ),
                Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Image.asset("assets/icons/loading_screen_img1 (2).png",
                        height: size.height * 0.27,
                      ),
                    ),
                  ],
                ),
                 const SizedBox(
                  height: 15,
                ),
                Text(
                  "Offline Transactions",
                  style: primaryFont.copyWith(
                      color: Colors.red,
                      fontSize: 21,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 40,
                ),

                
              ],
            ),
          ),

        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                  width: 50,
                  child: CupertinoActivityIndicator(),
                ),
               
                Text("Loading Please wait....",style: primaryFont.copyWith(
                  fontSize: 14
                ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
