import 'package:agthia/Admin_pages/addBrands.dart';
import 'package:agthia/Admin_pages/admin_home.dart';
import 'package:agthia/DeliveryPersonnel_pages/delivery_home.dart';
import 'package:agthia/Restaurant_pages/restaurant_home.dart';
import 'package:agthia/User_pages/beefbar_reservation.dart';
import 'package:agthia/User_pages/homescreen.dart';
import 'package:agthia/User_pages/payment.dart';
import 'package:agthia/backend_pages/backend_new/loginpage.dart';
import 'package:agthia/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() 
async{
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: 'AIzaSyDsQ8TrWI4uoespSrHIHhRXMu8RLuYzjI0', 
      appId: '1:508611247978:android:90eab59dc91e76a31aaf13', 
      messagingSenderId: '508611247978',
       projectId: 'agthia-fb9e4')
    );
    print("firebase initialisation successfull");
  } catch (e) {
    print("error initialisation$e");
  }
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
      home: LoginPage(),
      routes: {
        '/adminHome': (context) => AdminHome(),
        '/userHome': (context) => Homescreen(),
        '/restaurantHome': (context) => RestaurantHome(),
        '/deliveryHome': (context) => DeliveryHome(),
      },
    );
  }
}
