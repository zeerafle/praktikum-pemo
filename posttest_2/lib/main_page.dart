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
          decoration: const BoxDecoration(
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
            title: const Text(
              "Praktek dr. S. Strange",
              style: TextStyle(
                color: Color(0xff9d9c62),
                fontWeight: FontWeight.w700,
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
                const Text(
                  "Halo, Vauwez Sam El Fareez",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    color: Color(0xff9d9c62),
                  ),
                ),
                const Text(
                  "Silahkan tunggu giliran Anda",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Color(0xff9d9c62),
                  )
                ),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 67,
                      height: 67,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xfff0f66e)
                      ),
                      child: const Text(
                        "12",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: Color(0xff9d9c62),
                        ),
                      ) ,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "pasien lagi",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xff9d9c62),
                      ),
                    )
                  ],
                ),
                const Text(
                  "Isikan Data Diri Anda",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color(0xff9d9c62)
                  ),
                ),
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

