import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          title: const Text("Pertemuan 1 B1 20"),
        ),
        body: Container(
          width: lebar,
          height: tinggi,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.amber,
            border: Border.all(
              color: Colors.black,
              width: 5,
            ),
          ),
          child: const Text(
            "Halo Praktikan",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )),
        ),
      );
  }
}