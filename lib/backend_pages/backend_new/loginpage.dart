import 'package:agthia/backend_pages/backend_new/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isLoading = false;

  Future<void> loginUser() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() => isLoading = true);
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      DocumentSnapshot userDoc = await FirebaseFirestore.instance
          .collection('users')
          .doc(userCredential.user!.uid)
          .get();

      if (userDoc.exists) {
        String role = userDoc['role'];
        String route = role == "Admin"
            ? '/adminHome'
            : role == "User"
                ? '/userHome'
                : role == "Restaurant"
                    ? '/restaurantHome'
                    : role == "Delivery Boy"
                        ? '/deliveryHome'
                        : '';
        if (route.isNotEmpty) {
          Navigator.pushReplacementNamed(context, route);
        } else {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("Unknown role")));
        }
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("User data not found!")));
      }
    } on FirebaseAuthException catch (e) {
      String errorMessage = "Login failed. Please try again.";
      if (e.code == 'user-not-found') {
        errorMessage = "No user found for that email.";
      } else if (e.code == 'wrong-password') {
        errorMessage = "Wrong password provided.";
      }
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(errorMessage)));
    } finally {
      setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Image(
              image: AssetImage("asset/logo_agthia.jpg"),
              height: 50,
              fit: BoxFit.contain,
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
                SizedBox(height: 20),
                Container(
                  width: 550,
                  height: 400,
                  padding: EdgeInsets.all(12),
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
                        Text("Login", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                        Center(
                          child: SizedBox(
                            width:60,
                            child:  Divider(color: Colors.orange,)),
                        ),
                        TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(labelText: "Email"),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter an email";
                            } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                              return "Enter a valid email";
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: InputDecoration(labelText: "Password"),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your password";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 20),
                        isLoading
                            ? CircularProgressIndicator()
                            : ElevatedButton(
                                onPressed: loginUser,
                                child: Text("Login", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.green,shape: BeveledRectangleBorder()),
                              ),
                        SizedBox(height: 20),
                        TextButton(
                          onPressed: () => Navigator.push(
                              context, MaterialPageRoute(builder: (context) => SignupPage())),
                          child: Text("Don't have an account? Sign Up", style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ],
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
      ),
    );
  }
}
