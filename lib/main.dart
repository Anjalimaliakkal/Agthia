import 'package:agthia/backend_homepages.dart';
import 'package:agthia/backendlogin.dart';
import 'package:agthia/delivery_allocation.dart';
import 'package:agthia/splashscreen.dart';
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
      home: Splashscreen(),
    );
  }
}
