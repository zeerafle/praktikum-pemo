import 'dart:ui';

import 'package:flutter/material.dart'; 

Widget inputText(String label, String hint) {
  return TextField(
    decoration: InputDecoration(
      border: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      fillColor: Colors.white,
      filled: true,
      labelText: label,
      hintText: hint
    ),
  );
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tinggiDevice = MediaQuery.of(context).size.height;
    var lebarDevice = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/medical_bg.png"),
              fit: BoxFit.fitHeight,
              alignment: Alignment.centerRight
            ),
            color: Color(0xFFF0F8EA),
          ),
        ),
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              "Praktek dr. S. Strange",
              style: TextStyle(
                color: Color(0xff9d9c62),
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          body: Container(
            width: lebarDevice,
            height: tinggiDevice,
            margin: EdgeInsets.symmetric(horizontal: 17),
            child: ListView(
              children: [
                Text("Halo, Vauwez Sam El Fareez"),
                Text("Silahkan tunggu giliran Anda"),
                Row(
                  children: [
                    Container(
                      width: 67,
                      height: 67,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xfff0f66e)
                      ),
                    ),
                    Text("pasien lagi")
                  ],
                ),
                Text("Isikan Data Diri Anda"),
                inputText("Nama", "Nama lengkap"),
                inputText("Umur", "2009106054"),
                inputText("Alamat", "Jl. Kedamaian, No. 28"),
                inputText("Alergi Jenis Obat", "sulva"),
                inputText("Keluhan", "demam, batuk, pilek selama tiga hari"),
                Container(
                  width: 219,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Color(0xfff0f66e),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  alignment: Alignment.center,
                  child: Text("Antri Sekarang"),
                )
                
                ],
          ),
          )
        )

      ],
    );
  }
}

