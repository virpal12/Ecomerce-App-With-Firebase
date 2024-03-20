import 'package:ecommerce/utils/App_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lottie/lottie.dart';

import 'SignUP.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: AppConstant.appSeccolor,
          title: Text(
            'Sign-In',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: Container(
          child: Column(
            children: [
              isKeyboardVisible
                  ? Text('')
                  : Column(
                      children: [
                        Lottie.asset('Assets/images/splash-icon.json')
                      ],
                    ),
              SizedBox(
                height: Get.height / 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    cursorColor: AppConstant.appSeccolor,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: 'Email',
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide:
                                BorderSide(color: AppConstant.appSeccolor)),
                        prefixIcon: Icon(
                          Icons.email,
                          color: AppConstant.appSeccolor,
                        ),
                        contentPadding: EdgeInsets.only(top: 3.0, left: 8.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12))),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    cursorColor: AppConstant.appSeccolor,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide:
                                BorderSide(color: AppConstant.appSeccolor)),
                        prefixIcon:
                            Icon(Icons.lock, color: AppConstant.appSeccolor),
                        suffixIcon: Icon(Icons.visibility_off,
                            color: AppConstant.appSeccolor),
                        contentPadding: EdgeInsets.only(top: 3.0, left: 8.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12))),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                      color: AppConstant.appSeccolor,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: Get.height / 20,
              ),
              Material(
                child: Container(
                    decoration: BoxDecoration(
                      color: AppConstant.appSeccolor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: Get.width / 2,
                    height: Get.height / 18,
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              color: AppConstant.appTextcolor, fontSize: 20),
                        ))),
              ),
              SizedBox(
                height: Get.height / 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have any Account ?',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    width: Get.width / 50,
                  ),
                  GestureDetector(
                    onTap:()=> Get.offAll(()=>SignUp()) ,
                    child: Text('Sign Up',
                        style: TextStyle(
                            fontSize: 18,
                            color: AppConstant.appSeccolor,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
