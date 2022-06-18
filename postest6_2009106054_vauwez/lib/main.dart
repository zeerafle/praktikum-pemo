import 'package:flutter/material.dart';
import 'package:postest6_2009106054_vauwez/splash_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: SplashScreen(),
        theme: ThemeData(
            // fontFamily: "PoppinsSemiBold",
            textTheme: Theme.of(context).textTheme.apply(
                bodyColor: Color(0xff333333),
                displayColor: Color(0xff333333),
                fontFamily: "PoppinsSemiBold")));
  }
}
