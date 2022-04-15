import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({ Key? key }) : super(key: key);

  Widget myContainer() {
    return Container(
      width: 200,
      height: 200,
      margin: EdgeInsets.all(10),
      color: Colors.purple,

    );
  }

  Widget imageContainer() {
    return Container(
      // width: 200,
      height: 200,
      margin: EdgeInsets.all(10),
      // color: Colors.green,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/coffee.png"),
        )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          

          Column(
            children: [
              imageContainer(),
              imageContainer(),
              imageContainer(),

            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
              ],
            ),
          ),
          Column(
            children: [
              imageContainer(),
              imageContainer(),
            ],
          ),

          
        ],
      ),
    );
  }
}