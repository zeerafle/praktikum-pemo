import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:postest7_2009106054_vauwez/booking_detail_page.dart';
import 'package:postest7_2009106054_vauwez/drawer.dart';
import 'package:get/get.dart';

class BookingPage extends StatelessWidget {
  BookingPage({Key? key}) : super(key: key);

  String docId = "";

  List<Widget> listBooking = [];
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference bookingStore = firestore.collection("booking");

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: Color(0xff333333)),
        ),
        backgroundColor: const Color(0xfff0f8ea),
        drawer: const MyDrawer(),
        body: ListView(
          padding: const EdgeInsets.all(17),
          children: [
            const Text(
              "Booking Anda",
              style: TextStyle(fontSize: 27, color: Color(0xff333333)),
            ),
            const SizedBox(
              height: 27,
            ),
            Column(
              children: [
                // READ DATA
                StreamBuilder<QuerySnapshot>(
                    stream: bookingStore.snapshots(),
                    builder: (_, snapshot) {
                      return (snapshot.hasData)
                          ? Column(
                              children: snapshot.data!.docs
                                  .map(
                                    (e) => ContainerBooking(
                                        sisaAntrian: e.get("sisaAntrian"),
                                        namaDokter: e.get("dokter"),
                                        docId: e.id,
                                        onDelete: () {
                                          bookingStore.doc(e.id).delete();
                                        }),
                                  )
                                  .toList(),
                            )
                          : Text("Sabar ...");
                    })
              ],
            )
          ],
        ));
  }
}

class ContainerBooking extends StatelessWidget {
  const ContainerBooking(
      {Key? key,
      required this.sisaAntrian,
      required this.namaDokter,
      required this.docId,
      this.onDelete})
      : super(key: key);

  final String sisaAntrian;
  final String namaDokter;
  final String docId;
  final Function? onDelete;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Get.to(BookingDetail(docId: docId));
        },
        child: Container(
            padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 13),
            margin: const EdgeInsets.symmetric(vertical: 7),
            height: 91,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Container(
                    height: 80,
                    width: 80,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xfff0f66e),
                      shape: BoxShape.circle,
                    ),
                    child: Text(sisaAntrian,
                        style: TextStyle(
                            color: const Color(0xff333333), fontSize: 27))),
                SizedBox(width: 14),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Sisa pasien",
                        style:
                            TextStyle(color: Color(0xff333333), fontSize: 12)),
                    Text(namaDokter,
                        style: TextStyle(
                            color: Color(0xff333333),
                            fontSize: 10,
                            fontFamily: "PoppinsRegular")),
                    Spacer(),
                    Text("Estimasi waktu: 70 menit",
                        style: TextStyle(
                            color: Color(0xff333333),
                            fontSize: 10,
                            fontFamily: "PoppinsRegular"))
                  ],
                ),
                const Spacer(),
                IconButton(
                    icon: Icon(Icons.cancel_schedule_send),
                    tooltip: "Batalkan antrian",
                    onPressed: () {
                      if (onDelete != null) onDelete!();
                    }),
              ],
            )));
  }
}
