import 'dart:async';

import 'package:agthia/login.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
   void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login())));
  }
  @override
  Widget build(BuildContext context) {

     return Scaffold(
      backgroundColor: const Color.fromARGB(255, 195, 199, 228),
      body: Center(
        child: Image.asset(
          'asset/logo_agthia.jpg', // Adjust the path
          width: 200, // Adjust the width
          height: 200, // Adjust the height
          fit: BoxFit.contain, // Options: cover, contain, fill, etc.
        ),
      ),
    );
  }
}