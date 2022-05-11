import 'package:flutter/material.dart';
import 'package:pertemuan5_2009106054/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen());
  }
}

class MyHomePage extends StatelessWidget {
  Future<dynamic> CustomAlert(BuildContext context, String pesan) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Congratulations! You've earned a badge"),
            // content: Text(pesan),
            content: Image.asset("assets/chat.png"),
            actions: [
              TextButton(onPressed: () {}, child: Text("Cancel")),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Ok"))
            ],
          );
        });
  }

  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
        child: Text("Tampikan snackbar"),
        onPressed: () {
          CustomAlert(context, "Halo semua");
          // final snackbar = SnackBar(
          //   content: Text("Ini adalah snackbar"),
          //   duration: Duration(seconds: 3),
          //   padding: EdgeInsets.all(50),
          // );
          // ScaffoldMessenger.of(context).showSnackBar(snackbar);
        },
      ),
    ));
  }
}

