import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:postest7_2009106054_vauwez/splash_screen.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
