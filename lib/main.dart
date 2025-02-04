import 'package:agthia/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Agthia());
}
class Agthia extends StatelessWidget {
  const Agthia({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agthia',
      theme: ThemeData(
        primaryColor: Colors.blueGrey
      ),
      home: Homescreen(),
    );
  }
}
