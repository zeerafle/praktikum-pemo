import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pertemuan6_2009106054/controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  final CounterController c = Get.put(CounterController());
  final SwitchController swc = Get.put(SwitchController());

  final GetxTextController tc = Get.put(GetxTextController());
  Widget form() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Flexible(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Nama",
              ),
              controller: tc.nameEditingController,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              tc.name.value = tc.nameEditingController.text;
              Get.to(SecondPage());
            },
            child: Text("Menuju Halaman 2"),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pertemuan 6"),
        flexibleSpace: Obx(() => Container(
              color: swc.switchValue.value ? Colors.pink : Colors.purple,
            )),
        actions: [
          Obx(() => Switch(
                value: swc.switchValue.value,
                onChanged: (newValue) {
                  swc.switchValue(newValue);
                },
              )),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(
              () => Text(
                '${c.counter}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            form(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: c.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class SecondPage extends StatelessWidget {
  final GetxTextController tc = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Obx(() => Text(tc.name.value)),
    );
  }
}
