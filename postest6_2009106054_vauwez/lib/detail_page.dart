import 'package:flutter/material.dart';
import 'package:postest6_2009106054_vauwez/form_page.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  const DetailPage(
      {Key? key,
      required this.pathFoto,
      required this.nama,
      required this.jabatan,
      required this.alamat,
      required this.tentang,
      required this.jumlahPasien,
      required this.tahunMengabdi,
      required this.resepObat})
      : super(key: key);

  final String pathFoto;
  final String nama;
  final String jabatan;
  final String alamat;
  final String tentang;
  final String jumlahPasien;
  final String tahunMengabdi;
  final String resepObat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfff0f8ea),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: Color(0xff333333)),
        ),
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              /* decoration: BoxDecoration( */
              /*     image: DecorationImage( */
              /*   image: AssetImage(pathFoto), */
              /*   fit: BoxFit.fitWidth, */
              child: Image.asset(pathFoto, fit: BoxFit.fitWidth),
            ),
            /* Image.asset(pathFoto, fit: BoxFit.), */
            ListView(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.width - 165,
                ),
                Stack(
                  children: [
                    Column(
                      children: [
                        const SizedBox(
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
                                          onPressed: () {
                                            Get.to(FormPage());
                                          },
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
                                        text: tentang),
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
                                                  jumlahPasien,
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
                                                  tahunMengabdi,
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
                                                  resepObat,
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
                                      AntriContainer(hari: "Min", tanggal: "2"),
                                      AntriContainer(hari: "Sen", tanggal: "3"),
                                      AntriContainer(
                                          isActive: true,
                                          hari: "Sel",
                                          tanggal: "4"),
                                      AntriContainer(hari: "Rab", tanggal: "5"),
                                      AntriContainer(hari: "Kam", tanggal: "6"),
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
                            nama,
                            style: TextStyle(
                              fontFamily: "PoppinsBold",
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          Text(jabatan,
                              style: TextStyle(
                                  fontFamily: "PoppinsRegular",
                                  fontSize: 13,
                                  color: Colors.white)),
                          Text(alamat,
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

class AntriContainer extends StatelessWidget {
  const AntriContainer(
      {Key? key,
      this.isActive = false,
      required this.hari,
      required this.tanggal})
      : super(key: key);

  final bool isActive;
  final String hari;
  final String tanggal;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 68,
        width: 49,
        decoration: BoxDecoration(
            color: isActive ? Color(0xff9d9c62) : Colors.white,
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(hari,
                style: TextStyle(color: Color(0xff333333), fontSize: 13)),
            Text(tanggal,
                style: TextStyle(color: Color(0xff333333), fontSize: 16))
          ],
        ));
  }
}
