import 'package:ecommerce/utils/App_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstant.appSeccolor,
        title: Text(
          'Welcome to My App',
          style: GoogleFonts.habibi(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Lottie.asset('Assets/images/splash-icon.json'),
            ),
            Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Text(
                  'Happy Shopping',
                  style: GoogleFonts.actor(
                      fontSize: 25, fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: Get.height / 12,
            ),
            Material(
              child: Container(
                  decoration: BoxDecoration(
                    color: AppConstant.appSeccolor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: Get.width / 1.2,
                  height: Get.height / 12,
                  child: TextButton.icon(
                      onPressed: () {},
                      icon: Image.asset(
                        'Assets/images/final-google-logo.png',
                        width: Get.width / 12,
                        height: Get.height / 12,
                      ),
                      label: Text(
                        'Sign in with Google',
                        style: TextStyle(
                            color: AppConstant.appTextcolor, fontSize: 20),
                      ))),
            ),
            SizedBox(
              height: Get.height / 50,
            ),
            Material(
              child: Container(
                  decoration: BoxDecoration(
                    color: AppConstant.appSeccolor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: Get.width / 1.2,
                  height: Get.height / 12,
                  child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.email_rounded,
                        color: AppConstant.appTextcolor,
                      ),
                      label: Text(
                        'Sign in with Email',
                        style: TextStyle(
                            color: AppConstant.appTextcolor, fontSize: 20),
                      ))),
            )
          ],
        ),
      ),
    );
  }
}
