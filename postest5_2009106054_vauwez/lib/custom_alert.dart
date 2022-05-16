import 'package:flutter/material.dart';

Future<dynamic> CustomAlert(BuildContext context, String nama, String umur,
    String alamat, String bpjs, String alergiObat, String keluhan) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Antrian Di-booking!"),
          content: Column(
            children: [
              baris("Nama", nama),
              baris("Umur", umur),
              baris("Alamat", alamat),
              baris("Nomor BPJS", bpjs),
              baris("Alergi Obat", alergiObat),
              baris("Keluhan", keluhan),
              baris("Nomor antrian", "12"),
              const SizedBox(height: 20),
              const Text(
                  "Screenshot layar ini dan tunjukkan kepada operator jika sudah sampai ditempat dokter")
            ],
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
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
