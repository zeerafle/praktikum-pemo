import 'package:flutter/material.dart';
import 'package:postest7_2009106054_vauwez/controller.dart';
import 'package:get/get.dart';

Future<dynamic> CustomAlert(BuildContext context) {
  final GetxTextController tc = Get.put(GetxTextController());

  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Antrian Di-booking!"),
          content: Column(
            children: [
              baris("Nama", tc.nama.value),
              baris("Umur", tc.umur.value),
              baris("Alamat", tc.alamat.value),
              baris("Nomor BPJS", tc.bpjs.value),
              baris("Alergi Obat", tc.alergiObat.value),
              baris("Keluhan", tc.keluhan.value),
              baris("Nomor antrian", tc.sisaAntrian.value),
              const SizedBox(height: 20),
              const Text(
                  "Screenshot layar ini dan tunjukkan kepada operator jika sudah sampai ditempat dokter")
            ],
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Get.back();
                  Get.back();
                },
                child: const Text("OK"))
          ],
        );
      });
}

Widget baris(String isian, String isi) {
  return Row(
    children: [
      Text("$isian : ", style: const TextStyle(fontFamily: "PoppinsRegular")),
      Text(isi, style: const TextStyle(fontFamily: "PoppinsRegular"))
    ],
  );
}
