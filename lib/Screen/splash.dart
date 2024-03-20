import 'dart:async';

import 'package:ecommerce/Screen/UserPanel/Main%20Screen.dart';
import 'package:ecommerce/utils/App_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import 'Welcome.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>WelcomeScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.sizeOf(context);
    return Scaffold(
        backgroundColor: AppConstant.appSeccolor,
        appBar: AppBar(
          backgroundColor: AppConstant.appSeccolor,
          elevation: 0,
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                width: Get.width,
                alignment: Alignment.center,
                child: Lottie.asset(
                  "Assets/images/splash-icon.json",
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 40),
              width: Get.width,
              alignment: Alignment.center,
              child: Text('Powered by Virpalsinh Jadeja',
                  style: GoogleFonts.niramit(
                      color: AppConstant.appTextcolor,
                      fontSize: 23,
                      fontWeight: FontWeight.w600)),
            )
          ],
        ));
  }
}
