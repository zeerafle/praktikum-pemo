import 'package:flutter/material.dart';
import 'package:postest5_2009106054_vauwez/detail_page.dart';
import 'form_page.dart';
import 'landing_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff0f8ea),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Color(0xff333333)),
        ),
        drawer: Drawer(
          child: ListView(children: [
            DrawerHeader(
                child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Vauwez Sam El Fareez"),
            )),
            ListTile(
              title: Text("Keluar"),
              leading: Icon(Icons.logout),
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => LandingPage()));
              },
            )
          ]),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 17),
          children: [
            Text(
              "Halo, Vauwez Sam El Fareez",
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Temukan Doktermu",
              style: TextStyle(fontSize: 27),
            ),
            SizedBox(
              height: 27,
            ),
            TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  disabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffa8c686), width: 1)),
                  hintText: "Cari dokter",
                  hintStyle: TextStyle(fontFamily: "PoppinsRegular"),
                  prefixIcon: Icon(Icons.search)),
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffa8c686)),
                  height: 90,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.medication,
                          color: Colors.white,
                          size: 45,
                        ),
                        Text(
                          "Klinik",
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                )),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(left: 6),
                  decoration: BoxDecoration(
                      color: Color(0xff9d9c62),
                      borderRadius: BorderRadius.circular(15)),
                  height: 90,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.health_and_safety,
                          color: Colors.white,
                          size: 45,
                        ),
                        Text(
                          "Dokter umum",
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                )),
              ],
            ),
            SizedBox(
              height: 31,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Dokter Teramai",
                  style: TextStyle(fontSize: 20),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      primary: Color(0xffe4572e),
                      textStyle: TextStyle(
                          fontFamily: "PoppinsSemiBold", fontSize: 10)),
                  onPressed: () {},
                  child: Text("Lihat semua"),
                )
              ],
            ),
            SizedBox(
              height: 28,
            ),
            ContainerDokter(
                pathFoto: "assets/dr_christine_palmer_square.png",
                nama: "Dr. Christine Palmer",
                alamat: "Rumah Sakit Metro-General",
                jamBuka: "08.00 - Selesai",
                jabatan: "Dokter umum",
                tentang:
                    "Dokter Christine Palmer adalah seorang ahli bedah di Rumah Sakit Umum Metro dan mantan rekan Stephen. Dia adalah pacar Strange sampa mereka putus akrena kepribadian Strange yang egois, tetapi masih tetap berteman. Dia membantu Strange setelah kecelakaannya meninggalkannya tanpa menggunakan tangannya sampai dia tidak bisa lagi melihat Strange menghancurkan hidupnya.",
                jumlahPasien: "578",
                tahunMengabdi: "10",
                resepObat: "1028"),
            SizedBox(
              height: 24,
            ),
            ContainerDokter(
                pathFoto: "assets/doctor_stephen_strange_square.jpeg",
                nama: "Dr. Stephen Strange",
                alamat: "177A Bleecker Street",
                jamBuka: "07.00 - Selesai",
                jabatan: "Kepala klinik",
                tentang:
                    "Dokter Stephen Vincent Strange, M.D., Ph.D adalah mantan Sorcerer Supreme dan Master of the Mystic Arts. Awalnya menjadi ahli bedah saraf yang brilian tapi arogan, Strange mengalami kecelakaan mobil yang mengakibatkan tangannya menjadi lumpuh. Setelah pengobatan Barat mengecewakannya, Strange memulai perjalanan ke Kamar-Taj, di mana ia dilatih oleh Yang Kuno dalam hal Sihir dan Multiverse.",
                jumlahPasien: "90",
                tahunMengabdi: "6",
                resepObat: "78"),
            SizedBox(
              height: 24,
            ),
            ContainerDokter(
                pathFoto: "assets/dr_john_watson.jpg",
                nama: "Dr. John Watson",
                alamat: "221B Baker Street",
                jamBuka: "15.00 - 21.00",
                jabatan: "Asisten kepala",
                tentang:
                    "Dr John Hamish Watson (MBBS) adalah sahabat dan asisten Sherlock Holmes dan mantan dokter Angkatan Darat Inggris. Sebelum menikahi Mary Morstan, dia tinggal di 221B Baker Street bersama Sherlock, sebuah flat yang mereka sewa dari Mrs Hudson. Dia tinggal bersama Mary, yang bekerja dengannya sebelum mengembangkan hubungan romantis.",
                jumlahPasien: "1",
                tahunMengabdi: "4",
                resepObat: "30"),
          ],
        ));
  }
}

class ContainerDokter extends StatelessWidget {
  const ContainerDokter(
      {Key? key,
      required this.pathFoto,
      required this.nama,
      required this.alamat,
      required this.jamBuka,
      required this.jabatan,
      required this.tentang,
      required this.jumlahPasien,
      required this.tahunMengabdi,
      required this.resepObat})
      : super(key: key);

  final String pathFoto;
  final String nama;
  final String alamat;
  final String jamBuka;
  final String jabatan;
  final String tentang;
  final String jumlahPasien;
  final String tahunMengabdi;
  final String resepObat;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 7, horizontal: 13),
          alignment: Alignment.center,
          height: 91,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: Row(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(600),
              child: Image.asset(pathFoto),
            ),
            SizedBox(
              width: 14,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  nama,
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  alamat,
                  overflow: TextOverflow.fade,
                  style: TextStyle(fontSize: 10, fontFamily: "PoppinsRegular"),
                ),
                Row(
                  children: [
                    Icon(Icons.timer, size: 16, color: Color(0xffa8c686)),
                    Text(
                      jamBuka,
                      style:
                          TextStyle(fontSize: 10, fontFamily: "PoppinsMedium"),
                    ),
                  ],
                )
              ],
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => FormPage()));
              },
              child: Text(
                "Antri",
                style: TextStyle(color: Color(0xff333333)),
              ),
              style: ElevatedButton.styleFrom(
                  //maximumSize: Size(86, 15),
                  // minimumSize: Size(86, 15),
                  primary: Color(0xfff0f66e),
                  textStyle: TextStyle(fontSize: 10)),
            )
          ])),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => DetailPage(
                    pathFoto: pathFoto,
                    nama: nama,
                    jabatan: jabatan,
                    alamat: alamat,
                    tentang: tentang,
                    jumlahPasien: jumlahPasien,
                    tahunMengabdi: tahunMengabdi,
                    resepObat: resepObat)));
      },
    );
  }
}
