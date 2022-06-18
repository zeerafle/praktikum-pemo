import 'package:flutter/material.dart';
import 'package:postest6_2009106054_vauwez/controller.dart';
import 'package:postest6_2009106054_vauwez/custom_alert.dart';
import 'package:get/get.dart';

Widget inputText(String label, String hint, TextEditingController controller) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 9),
    child: TextField(
      controller: controller,
      decoration: InputDecoration(
          border: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          fillColor: Colors.white,
          filled: true,
          labelText: label,
          hintText: hint),
      style: const TextStyle(
        fontFamily: "PoppinsMedium",
        fontSize: 12,
      ),
    ),
  );
}

class FormPage extends StatelessWidget {
  final GetxTextController tc = Get.put(GetxTextController());

  @override
  Widget build(BuildContext context) {
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
          backgroundColor: const Color(0xfff0f8ea),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            iconTheme: const IconThemeData(color: Color(0xff333333)),
          ),
          body: ListView(padding: const EdgeInsets.all(17), children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              "Halo",
              style: const TextStyle(
                fontSize: 13,
              ),
            ),
            const Text("Silahkan tunggu giliran Anda",
                style: TextStyle(
                  fontSize: 20,
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
                      color: const Color(0xfff0f66e)),
                  child: const Text(
                    "12",
                    style: TextStyle(
                      fontFamily: "PoppinsBold",
                      fontSize: 24,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "pasien lagi",
                  style: TextStyle(
                    fontSize: 16,
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
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            inputText("Nama", "Nama lengkap", tc.namaController),
            inputText("Umur", "25", tc.umurController),
            inputText("Alamat", "Jl. Kedamaian, No. 28", tc.alamatController),
            inputText("Nomor BPJS", "00320021", tc.bpjsController),
            inputText("Alergi Jenis Obat", "sulva", tc.alergiObatController),
            inputText("Keluhan", "demam, batuk, pilek selama tiga hari",
                tc.keluhanController),
            const SizedBox(
              height: 27 - 9,
            ),
            ElevatedButton(
              onPressed: () {
                tc.nama.value = tc.namaController.text;
                tc.umur.value = tc.umurController.text;
                tc.alamat.value = tc.alamatController.text;
                tc.bpjs.value = tc.bpjsController.text;
                tc.alergiObat.value = tc.alergiObatController.text;
                tc.keluhan.value = tc.keluhanController.text;

                CustomAlert(context);
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(219, 55),
                primary: const Color(0xfff0f66e),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
              ),
              child: const Text(
                "Antri Sekarang",
                style: TextStyle(fontSize: 16, color: Color(0xff333333)),
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
