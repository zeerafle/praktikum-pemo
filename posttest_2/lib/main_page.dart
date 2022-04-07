import 'package:flutter/material.dart'; 
class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading ke true supaya flutter nampilin
        // back button ketika dibutuhkan  
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(
          color: Color(0xFFE4572E),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed:() => Navigator.pop(context, false)
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Color(0xFFF0F8EA),
      
    );
  }
}

