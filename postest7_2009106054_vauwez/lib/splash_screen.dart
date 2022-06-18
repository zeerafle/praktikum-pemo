import 'package:flutter/material.dart';
import 'package:postest7_2009106054_vauwez/landing_page.dart';
import 'dart:async';
import 'package:get/get.dart';

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
      Get.off(const LandingPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xfff0f66e),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image.asset("assets/logos_black.png"),
      ),
    );
  }
}
