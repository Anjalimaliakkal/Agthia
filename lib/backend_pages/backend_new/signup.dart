
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String selectedRole = "User";

  final String adminEmail = "admin@gmail.com";
  final String adminPassword = "admin@123";

  final _formKey = GlobalKey<FormState>();

  bool isValidEmail(String email) {
    return RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}").hasMatch(email);
  }

  Future<void> signUpUser() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    if (emailController.text == adminEmail && passwordController.text == adminPassword) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("❌ Admin cannot sign up through this page.")),
      );
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

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("✅ User Registered Successfully!")),
      );
      Navigator.pop(context);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("❌ Signup Error: $e")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Transform.translate(
            offset: Offset(-10.0, 0.0),
            child: Image(
              image: AssetImage("asset/logo_agthia.jpg"),
              height: 50,
              fit: BoxFit.contain,
            ),
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xFF282d37),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(
                  height: 300,
                  width: 1500,
                  child: Image(
                    image: AssetImage("asset/background_image1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              SizedBox(height: 20,),
              SizedBox(
                width: 550,
                height: 400,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 229, 241, 247),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        spreadRadius: 2,
                        offset: Offset(2, 4),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                          child: SizedBox(
                            width:60,
                            child:  Divider(color: Colors.orange,)),
                        ),
                        Text("Sign Up", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                        Center(
                          child: SizedBox(
                            width:60,
                            child:  Divider(color: Colors.orange,)),
                        ),
                          TextFormField(
                            controller: emailController,
                            decoration: InputDecoration(labelText: "Email"),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Email cannot be empty";
                              } else if (!isValidEmail(value)) {
                                return "Enter a valid email address";
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            controller: passwordController,
                            decoration: InputDecoration(labelText: "Password"),
                            obscureText: true,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Password cannot be empty";
                              } else if (value.length < 6) {
                                return "Password must be at least 6 characters";
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 10),
                          DropdownButton<String>(
                            value: selectedRole,
                            items: ["User", "Restaurant", "Delivery Boy"]
                                .map((role) => DropdownMenuItem(value: role, child: Text(role)))
                                .toList(),
                            onChanged: (value) => setState(() => selectedRole = value!),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: signUpUser,
                            child: Text(
                              "Sign Up",
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: BeveledRectangleBorder(),
                              backgroundColor: Colors.green,
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                  ),
                ),
                
              ),
                      SizedBox(height: 30),
                  Container(
                    color: Colors.black,
                    padding: EdgeInsets.only(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Divider(color: Colors.white),
                        SizedBox(height: 10),
                        Text(
                          "CONTACT",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "AL-SHARIQA TOWER\nFLOOR 7\nJABER AL MUBARAK STREET, BLOCK 2\nKUWAIT CITY",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "Join our mailing list for updates\nGet news & other events",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white70, fontSize: 14),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: EdgeInsets.only(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 1.1,
                                child: Center(
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                      hintText: "Email",
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.only(),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.red)),
                          width: MediaQuery.of(context).size.width / 1.1,
                          height: 40,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(
                                      MediaQuery.of(context).size.width / 1.1,
                                      40),
                                  shape: RoundedRectangleBorder()),
                              onPressed: () {},
                              child: Text(
                                "Subscribe",
                                style: TextStyle(color: Colors.black),
                              )),
                        ),
                        SizedBox(height: 15),
                        Text("22260445",
                            style: TextStyle(
                                color: Colors.pink[200],
                                fontWeight: FontWeight.bold)),
                        Text("INFO@AGTHIA-FOOD.COM.KW",
                            style: TextStyle(color: Colors.pink[200])),
                        SizedBox(height: 10),
                        Divider(color: Colors.white),
                        SizedBox(height: 5),
                        Icon(
                          Icons.copyright,
                          color: Colors.white,
                        ),
                        Text("Copyright",
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}




// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class SignupPage extends StatefulWidget {
//   @override
//   _SignupPageState createState() => _SignupPageState();
// }

// class _SignupPageState extends State<SignupPage> {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   String selectedRole = "User"; // Default role

//   Future<void> signUpUser() async {
//     try {
//       // Create user with email and password
//       UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
//         email: emailController.text,
//         password: passwordController.text,
//       );

//       // Store user details in Firestore with role
//       await FirebaseFirestore.instance.collection('users').doc(userCredential.user!.uid).set({
//         'email': emailController.text,
//         'role': selectedRole,
//         'createdAt': FieldValue.serverTimestamp(),
//       });

//       // Navigate back after successful sign-up
//       print("User Registered Successfully!");
//       Navigator.pop(context);
//     } catch (e) {
//       print("Signup Error: $e");
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
//               items: ["Admin", "User", "Restaurant", "Delivery Boy"]
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



