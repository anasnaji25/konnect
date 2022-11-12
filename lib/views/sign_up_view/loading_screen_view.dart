import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/const/app_fonts.dart';
import 'package:konnect/views/home_view/home_navigator_view.dart';
import 'package:konnect/views/lading_view/lets_get_started_screen.dart';

class LoadingView extends StatefulWidget {
  const LoadingView({super.key});

  @override
  State<LoadingView> createState() => _LoadingViewState();
}

class _LoadingViewState extends State<LoadingView> {
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
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                        height: size.height * 0.8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CupertinoActivityIndicator(
                                radius: 50,
                                color: secondaryColor,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Text(
                                "Please Wait Loading......",
                                style: primaryFont.copyWith(fontSize: 13),
                              )
                            ],
                          ),
                        )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
