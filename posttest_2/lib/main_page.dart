import 'dart:ui';

import 'package:flutter/material.dart';

Widget inputText(String label, String hint) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 9),
    child: const TextField(
      decoration: InputDecoration(
          border: UnderlineInputBorder(borderRadius: BorderRadius.circular(15)),
          fillColor: Colors.white,
          filled: true,
          labelText: label,
          hintText: hint),
      style: TextStyle(
        fontFamily: "PoppinsMedium",
        fontSize: 12,
      ),
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
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/medical_bg.png"),
                fit: BoxFit.fitHeight,
                alignment: Alignment.centerRight),
            color: Color(0xFFF0F8EA),
          ),
        ),
        Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: const Text(
                "Praktek dr. S. Strange",
                style: TextStyle(
                  color: Color(0xff9d9c62),
                  fontFamily: "PoppinsBold",
                  fontSize: 24,
                ),
              ),
            ),
            backgroundColor: Colors.transparent,
            body: Container(
              width: lebarDevice,
              height: tinggiDevice,
              margin: const EdgeInsets.symmetric(horizontal: 17),
              child: ListView(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Halo, Vauwez Sam El Fareez",
                    style: TextStyle(
                      fontFamily: "PoppinsSemiBold",
                      fontSize: 13,
                      color: Color(0xff9d9c62),
                    ),
                  ),
                  const Text("Silahkan tunggu giliran Anda",
                      style: TextStyle(
                        fontFamily: "PoppinsSemiBold",
                        fontSize: 20,
                        color: Color(0xff9d9c62),
                      )),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 67,
                        height: 67,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xfff0f66e)
                        ),
                        child: const Text(
                          "12",
                          style: TextStyle(
                            fontFamily: "PoppinsBold",
                            fontSize: 24,
                            color: Color(0xff9d9c62),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "pasien lagi",
                        style: TextStyle(
                          fontFamily: "PoppinsSemiBold",
                          fontSize: 16,
                          color: Color(0xff9d9c62),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 37,
                  ),
                  const Text(
                    "Isikan Data Diri Anda",
                    style: TextStyle(
                        fontFamily: "PoppinsSemiBold",
                        fontSize: 16,
                        color: Color(0xff9d9c62)),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  inputText("Nama", "Nama lengkap"),
                  inputText("Umur", "2009106054"),
                  inputText("Alamat", "Jl. Kedamaian, No. 28"),
                  inputText("Nomor BPJS", "00320021"),
                  inputText("Alergi Jenis Obat", "sulva"),
                  inputText("Keluhan", "demam, batuk, pilek selama tiga hari"),
                  inputText("Antrian Kustom", "nomor harus lebih besar dari jumlah pasien tunggu"),
                  Container(
                    width: 219,
                    height: 55,
                    decoration: BoxDecoration(
                      color: const Color(0xfff0f66e),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    alignment: Alignment.center,
                    child: const Text(
                      "Antri Sekarang",
                      style: TextStyle(
                        color: Color(0xff9d9c62),
                        fontFamily: "PoppinsSemiBold",
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
            ))
      ],
    );
  }
}

