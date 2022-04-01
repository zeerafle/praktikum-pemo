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
        width: lebar,
        height: tinggi,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/androidparty.png'),
            fit: BoxFit.fitHeight,
          ),
        ), 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
              Text(
                  "Happy Birthday",
                  style: TextStyle(
                    fontSize: 25,
                    backgroundColor: Colors.white,
                    fontFamily: "Futura",
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  )
              ),
              SizedBox(
                height: 600,
                width: 200,
                ),
              Text(
                "From Me",
                style: TextStyle(fontSize: 20),
              ),
          ],
        )
      )
    );
  }
}