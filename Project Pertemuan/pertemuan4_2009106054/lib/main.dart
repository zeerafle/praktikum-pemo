import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Hal1(),
    );
  }
}

class Hal1 extends StatelessWidget {
  const Hal1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.indigo),
              child: Text("Ini Header Drawer"),
            ),
            ListTile(
                title: Text("Ke halaman 2"),
                leading: Icon(Icons.home),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Hal2(),
                    ),
                  );
                }),
            ListTile(
                title: Text("Ke halaman 3"),
                leading: Icon(Icons.home),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Hal3(),
                    ),
                  );
                })
          ],
        )),
        appBar: AppBar(title: Text("Halaman 1")),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Hal2(),
                    ));
              },
              child: Text("Pindah ke halaman 2")),
        ));
  }
}

class Hal2 extends StatelessWidget {
  const Hal2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text("Halaman 2"),
            backgroundColor: Color(0xff1f2c34),
            bottom: TabBar(tabs: [
              Tab(text: "Chats"),
              Tab(text: "Status"),
              Tab(text: "Calls"),
            ]),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.chat),
              Icon(Icons.photo),
              Icon(Icons.phone),
            ],
          )),
    );
  }
}

class Hal3 extends StatefulWidget {
  const Hal3({Key? key}) : super(key: key);

  @override
  State<Hal3> createState() => _Hal3State();
}

class _Hal3State extends State<Hal3> {
  int _index = 0;
  
  static final List<Widget> _pages = [
    Container(color: Colors.cyan),
    Container(color: Colors.teal),
    Container(color: Colors.lightBlue),
    Container(color: Colors.lime),
    Container(color: Colors.orange),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman 3"),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          onTap: (int index) {
            setState(() {
              _index = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.play_circle_fill_sharp), label: "Play"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag), label: "Shop"),
            BottomNavigationBarItem(
                icon: Icon(Icons.circle), label: "Settings"),
          ]),
      body: _pages.elementAt(_index)
    );
  }
}
