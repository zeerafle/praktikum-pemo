import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:postest7_2009106054_vauwez/Dokter.dart';
import 'package:postest7_2009106054_vauwez/detail_page.dart';
import 'package:postest7_2009106054_vauwez/drawer.dart';
import 'form_page.dart';
import 'landing_page.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  final drPalmer = const Dokter(
      pathFoto: "assets/dr_christine_palmer_square.png",
      nama: "Dr. Christine Palmer",
      alamat: "Rumah Sakit Metro-General",
      jamBuka: "08.00 - Selesai",
      jabatan: "Dokter umum",
      sisaAntrian: "12",
      tentang:
          "Dokter Christine Palmer adalah seorang ahli bedah di Rumah Sakit Umum Metro dan mantan rekan Stephen. Dia adalah pacar Strange sampa mereka putus akrena kepribadian Strange yang egois, tetapi masih tetap berteman. Dia membantu Strange setelah kecelakaannya meninggalkannya tanpa menggunakan tangannya sampai dia tidak bisa lagi melihat Strange menghancurkan hidupnya.",
      jumlahPasien: "578",
      tahunMengabdi: "10",
      resepObat: "1028");
  final drStrange = const Dokter(
      pathFoto: "assets/doctor_stephen_strange_square.jpeg",
      nama: "Dr. Stephen Strange",
      alamat: "177A Bleecker Street",
      jamBuka: "07.00 - Selesai",
      jabatan: "Kepala klinik",
      sisaAntrian: "39",
      tentang:
          "Dokter Stephen Vincent Strange, M.D., Ph.D adalah mantan Sorcerer Supreme dan Master of the Mystic Arts. Awalnya menjadi ahli bedah saraf yang brilian tapi arogan, Strange mengalami kecelakaan mobil yang mengakibatkan tangannya menjadi lumpuh. Setelah pengobatan Barat mengecewakannya, Strange memulai perjalanan ke Kamar-Taj, di mana ia dilatih oleh Yang Kuno dalam hal Sihir dan Multiverse.",
      jumlahPasien: "90",
      tahunMengabdi: "6",
      resepObat: "78");
  final drWatson = const Dokter(
      pathFoto: "assets/dr_john_watson.jpg",
      nama: "Dr. John Watson",
      alamat: "221B Baker Street",
      jamBuka: "15.00 - 21.00",
      jabatan: "Asisten kepala",
      sisaAntrian: "29",
      tentang:
          "Dr John Hamish Watson (MBBS) adalah sahabat dan asisten Sherlock Holmes dan mantan dokter Angkatan Darat Inggris. Sebelum menikahi Mary Morstan, dia tinggal di 221B Baker Street bersama Sherlock, sebuah flat yang mereka sewa dari Mrs Hudson. Dia tinggal bersama Mary, yang bekerja dengannya sebelum mengembangkan hubungan romantis.",
      jumlahPasien: "1",
      tahunMengabdi: "4",
      resepObat: "30");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfff0f8ea),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: Color(0xff333333)),
        ),
        drawer: MyDrawer(),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          children: [
            const Text(
              "Halo, Vauwez Sam El Fareez",
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Temukan Doktermu",
              style: TextStyle(fontSize: 27),
            ),
            const SizedBox(
              height: 27,
            ),
            TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 15),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  disabledBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffa8c686), width: 1)),
                  hintText: "Cari dokter",
                  hintStyle: const TextStyle(fontFamily: "PoppinsRegular"),
                  prefixIcon: const Icon(Icons.search)),
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xffa8c686)),
                  height: 90,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
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
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(left: 6),
                  decoration: BoxDecoration(
                      color: const Color(0xff9d9c62),
                      borderRadius: BorderRadius.circular(15)),
                  height: 90,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
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
            const SizedBox(
              height: 31,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Dokter Teramai",
                  style: TextStyle(fontSize: 20),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      primary: const Color(0xffe4572e),
                      textStyle: const TextStyle(
                          fontFamily: "PoppinsSemiBold", fontSize: 10)),
                  onPressed: () {},
                  child: const Text("Lihat semua"),
                )
              ],
            ),
            const SizedBox(
              height: 28,
            ),
            ContainerDokter(dokter: drPalmer),
            const SizedBox(
              height: 24,
            ),
            ContainerDokter(dokter: drStrange),
            const SizedBox(
              height: 24,
            ),
            ContainerDokter(dokter: drWatson),
          ],
        ));
  }
}

class ContainerDokter extends StatelessWidget {
  const ContainerDokter({Key? key, required this.dokter}) : super(key: key);
  final Dokter dokter;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 13),
          alignment: Alignment.center,
          height: 91,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: Row(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(600),
              child: Image.asset(dokter.pathFoto),
            ),
            const SizedBox(
              width: 14,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  dokter.nama,
                  style: const TextStyle(fontSize: 15),
                ),
                Text(
                  dokter.alamat,
                  overflow: TextOverflow.fade,
                  style: const TextStyle(
                      fontSize: 10, fontFamily: "PoppinsRegular"),
                ),
                Row(
                  children: [
                    const Icon(Icons.timer, size: 16, color: Color(0xffa8c686)),
                    Text(
                      dokter.jamBuka,
                      style: const TextStyle(
                          fontSize: 10, fontFamily: "PoppinsMedium"),
                    ),
                  ],
                )
              ],
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Get.to(FormPage(dokter: dokter));
              },
              style: ElevatedButton.styleFrom(
                  //maximumSize: Size(86, 15),
                  // minimumSize: Size(86, 15),
                  primary: const Color(0xfff0f66e),
                  textStyle: const TextStyle(fontSize: 10)),
              child: const Text(
                "Antri",
                style: TextStyle(color: Color(0xff333333)),
              ),
            )
          ])),
      onTap: () {
        Get.to(DetailPage(dokter: dokter));
      },
    );
  }
}
