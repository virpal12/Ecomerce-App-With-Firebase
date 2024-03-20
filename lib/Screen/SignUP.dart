import 'package:ecommerce/Screen/sign%20in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lottie/lottie.dart';

import '../utils/App_constant.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: AppConstant.appSeccolor,
          title: Text(
            'Sign-Up',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 38.0),
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Text('WELCOME TO MY APP',
                        style: TextStyle(
                            fontSize: 24,
                            color: AppConstant.appSeccolor,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                SizedBox(
                  height: Get.height / 15,
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
                          hintText: 'User Name',
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  BorderSide(color: AppConstant.appSeccolor)),
                          prefixIcon: Icon(
                            Icons.person,
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
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          hintText: 'Phone',
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  BorderSide(color: AppConstant.appSeccolor)),
                          prefixIcon: Icon(
                            Icons.phone,
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
                      keyboardType: TextInputType.streetAddress,
                      decoration: InputDecoration(
                          hintText: 'City',
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                              BorderSide(color: AppConstant.appSeccolor)),
                          prefixIcon:
                          Icon(Icons.location_on, color: AppConstant.appSeccolor),

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
                            'Sign Up',
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
                      'Already have an Account ?',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      width: Get.width / 50,
                    ),
                    GestureDetector(
                      onTap:()=> Get.offAll(()=>SignIn()) ,
                      child: Text('Sign In',
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
        ),
      );
    });
  }
}
