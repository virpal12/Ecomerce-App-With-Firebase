import 'package:ecommerce/Screen/SignUP.dart';
import 'package:ecommerce/firebase_options.dart';
import 'package:ecommerce/utils/App_constant.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'Screen/splash.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options:DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Amazone Clone',
      theme: ThemeData(
        primaryColor: AppConstant.appMaincolor,
        useMaterial3: false,
      ),
      home: SignUp(),
    );
  }
}
