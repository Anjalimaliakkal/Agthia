import 'package:agthia/Add_Restaurant.dart';
import 'package:agthia/aboutUsAddContent.dart';
import 'package:agthia/aboutUsHomePage.dart';
import 'package:agthia/addJobVaccancy.dart';
import 'package:agthia/addNewsPage.dart';
import 'package:agthia/addOurPeople.dart';
import 'package:agthia/addVisionPage.dart';
import 'package:agthia/addWordsfromChairman.dart';
import 'package:agthia/delivery_home.dart';
import 'package:agthia/homescreen.dart';
import 'package:agthia/login.dart';
import 'package:agthia/restaurant_home.dart';
import 'package:agthia/subscripionViewPage.dart';
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
      home: Login(),
    );
  }
}
