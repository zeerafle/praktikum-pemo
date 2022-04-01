import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Posttest 1 Vauwez Sam El Fareez"),
      ),
      body: Container(
        // transform: Matrix4.rotationZ(0.1),
        width: lebar,
        height: tinggi,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.indigo,
          border: Border.all(
            width: 3,
            color: Colors.black,
          ),
        ), 
        child: const Text(
          "Supreme",
          style: TextStyle(
            fontSize: 25,
            fontFamily: "Futura",
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            backgroundColor: Colors.red,
          ),
          // textAlign: ,
        ),
      )
    );
  }
}