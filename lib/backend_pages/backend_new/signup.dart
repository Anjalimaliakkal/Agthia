
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// class SignupPage extends StatefulWidget {
//   @override
//   _SignupPageState createState() => _SignupPageState();
// }

// class _SignupPageState extends State<SignupPage> {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   String selectedRole = "User"; 
  
//   final String adminEmail = "admin@gmail.com"; 
//   final String adminPassword = "admin123"; 

//   Future<void> signUpUser() async {
//     // Prevent creation of admin account
//     if (emailController.text == adminEmail && passwordController.text == adminPassword) {
//       print("❌ Admin cannot sign up through this page.");
//       return;
//     }

//     try {
//       UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
//         email: emailController.text,
//         password: passwordController.text,
//       );

//       await FirebaseFirestore.instance.collection('users').doc(userCredential.user!.uid).set({
//         'uid': userCredential.user!.uid,
//         'email': emailController.text,
//         'role': selectedRole,
//         'createdAt': FieldValue.serverTimestamp(),
//       });

//       print("✅ User Registered Successfully!");
//       Navigator.pop(context);
//     } catch (e) {
//       print("❌ Signup Error: $e");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Sign Up")),
//       body: Padding(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           children: [
//             TextField(controller: emailController, decoration: InputDecoration(labelText: "Email")),
//             TextField(controller: passwordController, decoration: InputDecoration(labelText: "Password"), obscureText: true),
//             DropdownButton<String>(
//               value: selectedRole,
//               items: ["User", "Restaurant", "Delivery Boy"]
//                   .map((role) => DropdownMenuItem(value: role, child: Text(role)))
//                   .toList(),
//               onChanged: (value) => setState(() => selectedRole = value!),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(onPressed: signUpUser, child: Text("Sign Up")),
//           ],
//         ),
//       ),
//     );
//   }
// }

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String selectedRole = "User"; 

  final String adminEmail = "admin@yourapp.com"; 
  final String adminPassword = "admin123"; 

  Future<void> signUpUser() async {
    // Prevent creation of admin account
    if (emailController.text == adminEmail && passwordController.text == adminPassword) {
      print("❌ Admin cannot sign up through this page.");
      return;
    }

    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      await FirebaseFirestore.instance.collection('users').doc(userCredential.user!.uid).set({
        'uid': userCredential.user!.uid,
        'email': emailController.text,
        'role': selectedRole,
        'createdAt': FieldValue.serverTimestamp(),
      });

      print("✅ User Registered Successfully!");
      Navigator.pop(context);
    } catch (e) {
      print("❌ Signup Error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: emailController, decoration: InputDecoration(labelText: "Email")),
            TextField(controller: passwordController, decoration: InputDecoration(labelText: "Password"), obscureText: true),
            DropdownButton<String>(
              value: selectedRole,
              items: ["User", "Restaurant", "Delivery Boy"]
                  .map((role) => DropdownMenuItem(value: role, child: Text(role)))
                  .toList(),
              onChanged: (value) => setState(() => selectedRole = value!),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: signUpUser, child: Text("Sign Up")),
          ],
        ),
      ),
    );
  }
}