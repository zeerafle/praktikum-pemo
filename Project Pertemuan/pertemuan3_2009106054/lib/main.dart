import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String firstName = "";
  String lastName = "";

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  List<String> genderList = ["Laki-laki", "Perempuan"];
  String gender = "";

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pertemuan 3")
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Text(
              "Nama : $firstName $lastName",
              style: TextStyle(
                fontSize: 30
              )
            ),
            TextField(
              controller: firstNameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Masukkan nama depan",
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              controller: lastNameController,
              maxLines: 4,
              decoration: InputDecoration(border: OutlineInputBorder(), labelText: "Nama Belakang"),
            ),

            for (var item in genderList)
              Row(children: [Radio(value: item, groupValue: gender, onChanged: (v){
                setState(() {
                  gender = v.toString();
                });
              },)],),
            SizedBox(
              height: 100,
              child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    firstName = firstNameController.text;
                    lastName = lastNameController.text;
                  });
                },
                child: Text("Elevated Button"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}