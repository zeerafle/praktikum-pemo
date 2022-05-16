import 'package:flutter/material.dart';
import 'package:postest5_2009106054_vauwez/landing_page.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashScreenStart();
  }

  splashScreenStart() {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LandingPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xfff0f66e),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image.asset("assets/logos_black.png"),
      ),
    );
  }
}

