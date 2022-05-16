import 'package:flutter/material.dart';

class DrChristinePalmer extends StatelessWidget {
  const DrChristinePalmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff0f8ea),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Color(0xff333333)),
        ),
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            Image.asset("assets/dr_christine_palmer_square.png"),
            ListView(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.width - 165,
                ),
                Stack(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        FittedBox(
                          child: Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.symmetric(
                                  vertical: 30, horizontal: 17),
                              decoration: BoxDecoration(
                                  color: Color(0xfff0f8ea),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                children: [
                                  SizedBox(height: 60),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Tentang",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color(0xff333333))),
                                      TextButton(
                                          onPressed: () {},
                                          child: Text("Antri sekarang",
                                              style: TextStyle(
                                                  color: Color(0xffe4572e),
                                                  fontFamily: "PoppinsRegular",
                                                  fontSize: 13)))
                                    ],
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      style: TextStyle(
                                          fontFamily: "PoppinsRegular",
                                          fontSize: 11,
                                          color: Color(0xff333333)),
                                      children: const <TextSpan>[
                                        TextSpan(
                                            text:
                                                "Dokter Christine Palmer adalah seorang ahli bedah di Rumah Sakit Umum Metro dan mantan rekan Stephen."),
                                        TextSpan(
                                            text:
                                                " Dia adalah pacar Strange sampa mereka putus akrena kepribadian Strange yang egois, tetapi masih tetap berteman. "),
                                        TextSpan(
                                            text:
                                                "Dia membantu Strange setelah kecelakaannya meninggalkannya tanpa menggunakan tangannya sampai dia tidak bisa lagi melihat Strange menghancurkan hidupnya."),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  SizedBox(height: 11),
                                  Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 13, vertical: 15),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: 83,
                                            height: 62,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                color: Color(0xfff0f66e)),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "578",
                                                  style: TextStyle(
                                                      color: Color(0xff333333),
                                                      fontSize: 15),
                                                ),
                                                Text("Pasien",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff333333),
                                                        fontSize: 10))
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: 83,
                                            height: 62,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                color: Color(0xffa8c686)),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "10",
                                                  style: TextStyle(
                                                      color: Color(0xff333333),
                                                      fontSize: 15),
                                                ),
                                                Text("Tahun mengabdi",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff333333),
                                                        fontSize: 10),
                                                    textAlign: TextAlign.center)
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: 83,
                                            height: 62,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                color: Color(0xff9d9c62)),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "1028",
                                                  style: TextStyle(
                                                      color: Color(0xff333333),
                                                      fontSize: 15),
                                                ),
                                                Text("Resep obat",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff333333),
                                                        fontSize: 10),
                                                    textAlign: TextAlign.center)
                                              ],
                                            ),
                                          ),
                                        ],
                                      )),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Antri Hari Lain",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Color(0xff333333))),
                                        TextButton(
                                            onPressed: () {},
                                            child: Text("< Mei >",
                                                style: TextStyle(
                                                    color: Color(0xff333333),
                                                    fontFamily:
                                                        "PoppinsRegular",
                                                    fontSize: 13)))
                                      ]),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          height: 68,
                                          width: 49,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text("Min",
                                                  style: TextStyle(
                                                      color: Color(0xff333333),
                                                      fontSize: 13)),
                                              Text("2",
                                                  style: TextStyle(
                                                      color: Color(0xff333333),
                                                      fontSize: 16))
                                            ],
                                          )),
                                      Container(
                                          height: 68,
                                          width: 49,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text("Sen",
                                                  style: TextStyle(
                                                      color: Color(0xff333333),
                                                      fontSize: 13)),
                                              Text("3",
                                                  style: TextStyle(
                                                      color: Color(0xff333333),
                                                      fontSize: 16))
                                            ],
                                          )),
                                      Container(
                                          height: 68,
                                          width: 49,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text("Sel",
                                                  style: TextStyle(
                                                      color: Color(0xff333333),
                                                      fontSize: 13)),
                                              Text("4",
                                                  style: TextStyle(
                                                      color: Color(0xff333333),
                                                      fontSize: 16))
                                            ],
                                          )),
                                      Container(
                                          height: 68,
                                          width: 49,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text("Rab",
                                                  style: TextStyle(
                                                      color: Color(0xff333333),
                                                      fontSize: 13)),
                                              Text("5",
                                                  style: TextStyle(
                                                      color: Color(0xff333333),
                                                      fontSize: 16))
                                            ],
                                          )),
                                      Container(
                                          height: 68,
                                          width: 49,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text("Kam",
                                                  style: TextStyle(
                                                      color: Color(0xff333333),
                                                      fontSize: 13)),
                                              Text("6",
                                                  style: TextStyle(
                                                      color: Color(0xff333333),
                                                      fontSize: 16))
                                            ],
                                          )),
                                    ],
                                  )
                                ],
                              )),
                        ),
                      ],
                    ),
                    Center(
                      child: FittedBox(
                          child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xffe4572e)),
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(13),
                        child: Column(children: [
                          Text(
                            "dr. Christine Palmer",
                            style: TextStyle(
                              fontFamily: "PoppinsBold",
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          Text("Dokter umum",
                              style: TextStyle(
                                  fontFamily: "PoppinsRegular",
                                  fontSize: 13,
                                  color: Colors.white)),
                          Text("Rumah Sakit Metro-General",
                              style: TextStyle(
                                  fontFamily: "PoppinsRegular",
                                  fontSize: 13,
                                  color: Colors.white))
                        ]),
                      )),
                    )
                  ],
                )
              ],
            )
          ],
        ));
  }
}
