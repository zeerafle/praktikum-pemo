import 'package:flutter/material.dart';
import 'package:postest5_2009106054_vauwez/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SplashScreen(),
        theme: ThemeData(
            // fontFamily: "PoppinsSemiBold",
            textTheme: Theme.of(context).textTheme.apply(
                bodyColor: Color(0xff333333),
                displayColor: Color(0xff333333),
                fontFamily: "PoppinsSemiBold")));
  }
}

