import 'package:agthia/backend_pages/backend_new/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
//   // Import signup page for the link to Sign Up

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   final FirebaseAuth _auth = FirebaseAuth.instance;

//   Future<void> loginUser() async {
//     try {
//       UserCredential userCredential = await _auth.signInWithEmailAndPassword(
//         email: emailController.text,
//         password: passwordController.text,
//       );

//       // Fetch user data from Firestore
//       DocumentSnapshot userDoc = await FirebaseFirestore.instance.collection('users').doc(userCredential.user!.uid).get();

//       if (userDoc.exists) {
//         String role = userDoc['role'];

//         // Navigate based on role
//         if (role == "Admin") {
//           Navigator.pushReplacementNamed(context, '/adminHome');
//         } else if (role == "User") {
//           Navigator.pushReplacementNamed(context, '/userHome');
//         } else if (role == "Restaurant") {
//           Navigator.pushReplacementNamed(context, '/restaurantHome');
//         } else if (role == "Delivery Boy") {
//           Navigator.pushReplacementNamed(context, '/deliveryHome');
//         }
//       } else {
//         print("User data not found!");
//       }
//     } catch (e) {
//       print("Login Error: $e");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Login")),
//       body: Padding(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           children: [
//             TextField(controller: emailController, decoration: InputDecoration(labelText: "Email")),
//             TextField(controller: passwordController, decoration: InputDecoration(labelText: "Password"), obscureText: true),
//             SizedBox(height: 20),
//             ElevatedButton(onPressed: loginUser, child: Text("Login")),
//             TextButton(
//               onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage())),
//               child: Text("Don't have an account? Sign Up"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> loginUser() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      // Fetch user data from Firestore
      DocumentSnapshot userDoc = await FirebaseFirestore.instance.collection('users').doc(userCredential.user!.uid).get();

      if (userDoc.exists) {
        String role = userDoc['role'];

        // Navigate based on role
        if (role == "Admin") {
          Navigator.pushReplacementNamed(context, '/adminHome');
        } else if (role == "User") {
          Navigator.pushReplacementNamed(context, '/userHome');
        } else if (role == "Restaurant") {
          Navigator.pushReplacementNamed(context, '/restaurantHome');
        } else if (role == "Delivery Boy") {
          Navigator.pushReplacementNamed(context, '/deliveryHome');
        }
      } else {
        print("User data not found!");
      }
    } catch (e) {
      print("Login Error: $e");
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid credentials")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: emailController, decoration: InputDecoration(labelText: "Email")),
            TextField(controller: passwordController, decoration: InputDecoration(labelText: "Password"), obscureText: true),
            SizedBox(height: 20),
            ElevatedButton(onPressed: loginUser, child: Text("Login")),
            TextButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage())),
              child: Text("Don't have an account? Sign Up"),
            ),
          ],
        ),
      ),
    );
  }
}