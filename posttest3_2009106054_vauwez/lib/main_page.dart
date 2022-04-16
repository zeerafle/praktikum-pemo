import 'package:flutter/material.dart';

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
        hintText: hint
      ),
      style: const TextStyle(
        fontFamily: "PoppinsMedium",
        fontSize: 12,
      ),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var nama = "", umur = "", alamat = "", bpjs = "", alergiObat = "", keluhan = "";

  TextEditingController namaController = TextEditingController();
  TextEditingController umurController = TextEditingController();
  TextEditingController alamatController = TextEditingController();
  TextEditingController bpjsController = TextEditingController();
  TextEditingController alergiObatController = TextEditingController();
  TextEditingController keluhanController = TextEditingController();

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
          body: ListView(padding: EdgeInsets.all(17), children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              "Halo, $nama",
              style: const TextStyle(
                fontFamily: "PoppinsSemiBold",
                fontSize: 13,
                color: Color(0xff9d9c62),
              ),
            ),
            if (nama != "") SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Text(
                "$umur tahun - $alamat - $bpjs\nAlergi pada $alergiObat - $keluhan",
                style: const TextStyle(
                  fontFamily: "PoppinsSemiBold",
                  fontSize: 13,
                  color: Color(0xffa8c686),
                  backgroundColor: Color(0xffF0F8EA)
                ),
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
                    color: const Color(0xfff0f66e)),
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
                color: Color(0xff9d9c62)
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            inputText("Nama", "Nama lengkap", namaController),
            inputText("Umur", "25", umurController),
            inputText("Alamat", "Jl. Kedamaian, No. 28", alamatController),
            inputText("Nomor BPJS", "00320021", bpjsController),
            inputText("Alergi Jenis Obat", "sulva", alergiObatController),
            inputText("Keluhan", "demam, batuk, pilek selama tiga hari", keluhanController),
            const SizedBox(
              height: 27-9,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  nama = namaController.text;
                  umur = umurController.text;
                  alamat = alamatController.text;
                  bpjs = bpjsController.text;
                  alergiObat = alergiObatController.text;
                  keluhan = keluhanController.text;
                });
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(219, 55),
                primary: Color(0xfff0f66e),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
              ),
              child: const Text(
                "Antri Sekarang",
                style: TextStyle(
                  color: Color(0xff9d9c62),
                  fontFamily: "PoppinsSemiBold",
                  fontSize: 16,
                ),
              ),
            ),
          ]),
        ),
      ],
    );
  }
}

