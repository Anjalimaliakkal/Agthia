import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Transform.translate(
            offset: Offset(-10.0, 0.0),
            child: Image(image: AssetImage("asset/logo_agthia.jpg"),
            height: 50,
            fit: BoxFit.contain,),
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xFF282d37),
      ),
    );
  }
}