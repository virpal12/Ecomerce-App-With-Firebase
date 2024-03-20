
import 'package:ecommerce/utils/App_constant.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppConstant.appMainName,
          style: TextStyle(color: AppConstant.appTextcolor, fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: AppConstant.appMaincolor,
        elevation: 5,
      ),
    );
  }
}
