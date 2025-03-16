// import 'package:agthia/User_pages/About.dart';
// import 'package:agthia/User_pages/brandspage.dart';
// import 'package:agthia/User_pages/carreerpage.dart';
// import 'package:agthia/User_pages/contactus.dart';
// import 'package:agthia/User_pages/homescreen.dart';
// import 'package:agthia/User_pages/mediapage.dart';
// import 'package:agthia/User_pages/mission.dart';
// import 'package:agthia/User_pages/ourpeople.dart';
// import 'package:agthia/User_pages/words_from_chairman.dart';
// import 'package:agthia/backend_pages/backend_new/loginpage.dart';
// import 'package:agthia/login.dart';
// import 'package:flutter/material.dart';

// class UserChangepassword extends StatefulWidget {
//   const UserChangepassword({super.key});

//   @override
//   State<UserChangepassword> createState() => _UserChangepassword();
// }

// class _UserChangepassword extends State<UserChangepassword> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController currentPasswordController =
//       TextEditingController();
//   final TextEditingController newPasswordController = 
//       TextEditingController();
//   final TextEditingController confirmPasswordController =
//       TextEditingController();
//   void submitForm() {
//     if (_formKey.currentState!.validate()) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text("Password Changed Successfully")),
//       );
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => Homescreen()),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(
//           child: Transform.translate(
//             offset: Offset(-10.0, 0.0),
//             child: Image(
//               image: AssetImage("asset/logo_agthia.jpg"),
//               height: 50,
//               fit: BoxFit.contain,
//             ),
//           ),
//         ),
//         iconTheme: IconThemeData(color: Colors.white),
//         backgroundColor: Color(0xFF282d37),
//         actions: [
//           PopupMenuButton<String>(
//             child: Row(
//               children: [
//                 CircleAvatar(
//                     backgroundColor: const Color.fromARGB(255, 188, 187, 187),
//                     child: Icon(Icons.person,
//                         color: Colors.white)), // Profile Icon
//                 SizedBox(width: 5),
//                 Text(
//                   "User",
//                   style: TextStyle(
//                       color: Colors.white, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(width: 5),
//                 Icon(Icons.arrow_drop_down)
//               ],
//             ),
//             onSelected: (value) {
//               if (value == 'change_password') {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => UserChangepassword()));
//                 // Navigate to change password screen
//               } else if (value == 'logout') {
//                 Navigator.push(
//                     context, MaterialPageRoute(builder: (context) => LoginPage()));
//                 // Perform logout action
//               }
//             },
//             itemBuilder: (BuildContext context) => [
//               // Title Item (Non-clickable)
//               PopupMenuItem<String>(
//                 enabled: false,
//                 child: Text(
//                   "User",
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//               ),
//               PopupMenuDivider(),

//               // Change Password
//               PopupMenuItem<String>(
//                 value: 'change_password',
//                 child: Row(
//                   children: [
//                     Icon(Icons.lock, color: Colors.black),
//                     SizedBox(width: 10),
//                     Text("Change Password"),
//                   ],
//                 ),
//               ),
              

//               // Logout
//               PopupMenuItem<String>(
//                 value: 'logout',
//                 child: Row(
//                   children: [
//                     Icon(Icons.logout, color: Colors.black),
//                     SizedBox(width: 10),
//                     Text("Logout"),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(width: 10),
//         ],
//       ),
//               drawer: Drawer(
//           width: 200,
//           backgroundColor: Color(0xFF282d37),
//           child: ListView(
//             padding: EdgeInsets.all(12),
//             children: [
//               DrawerHeader(
//                 decoration: BoxDecoration(color: Color(0xFF282d37)),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     CircleAvatar(
//                       radius: 30,
//                       backgroundColor: Colors.white,
//                       child: Icon(Icons.person),
//                     ),
//                     SizedBox(
//                       height: 7,
//                     ),
//                     Text(
//                       "User",
//                       style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white),
//                     )
//                   ],
//                 ),
//               ),
//               ListTile(
//                 title: Text("Home",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.white)),
//                 onTap: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => Homescreen()));
//                 },
//               ),
//               ExpansionTile(
//                 //tilePadding: const EdgeInsets.only(left: 15, right: 15),
//                 title: Text(
//                   "About us",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white),
//                 ),
//                 children: [
//                   ListTile(
//                     title: Text(
//                       "About",
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold, color: Colors.white),
//                     ),
//                     onTap: () {
//                       Navigator.push(context,
//                           MaterialPageRoute(builder: (context) => About()));
//                     },
//                     contentPadding: EdgeInsets.only(left: 60),
//                   ),
//                   ListTile(
//                     title: Text(
//                       "Our People",
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold, color: Colors.white),
//                     ),
//                     onTap: () {
//                       Navigator.push(context,
//                           MaterialPageRoute(builder: (context) => Ourpeople()));
//                     },
//                     contentPadding: EdgeInsets.only(left: 60),
//                   ),
//                   ListTile(
//                     title: Text(
//                       "Mission/Vision",
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold, color: Colors.white),
//                     ),
//                     onTap: () {
//                       Navigator.push(context,
//                           MaterialPageRoute(builder: (context) => Mission()));
//                     },
//                     contentPadding: EdgeInsets.only(left: 60),
//                   ),
//                   ListTile(
//                     title: Text(
//                       "Word from Chairman",
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold, color: Colors.white),
//                     ),
//                     onTap: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => WordsFromChairman()));
//                     },
//                     contentPadding: EdgeInsets.only(left: 60),
//                   ),
//                 ],
//               ),
//               ListTile(
//                 title: Text("Brands",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.white)),
//                 onTap: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => Brandspage()));
//                 },
//               ),
//               ListTile(
//                 title: Text("Media",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.white)),
//                 onTap: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => Mediapage()));
//                 },
//               ),
//               ListTile(
//                 title: Text("Carrier",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.white)),
//                 onTap: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => Carreerpage()));
//                 },
//               ),
//               ListTile(
//                 title: Text("Contact us",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.white)),
//                 onTap: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => Contactus()));
//                 },
//               ),
//             ],
//           ),
//         ),
//       body: Container(
//         color: const Color.fromARGB(255, 216, 228, 222),
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: EdgeInsets.all(16.0),
//             child: Form(
//               key: _formKey, // Ensure validation works
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(
//                     height: 30,
//                   ),
//                   Center(
//                     child: SizedBox(
//                         width: 500,
//                         child: buildPasswordField(
//                             "Current Password", currentPasswordController)),
//                   ),
//                   SizedBox(height: 16),
//                   Center(
//                     child: SizedBox(
//                         width: 500,
//                         child: buildPasswordField(
//                             "New Password", newPasswordController)),
//                   ),
//                   SizedBox(height: 16),
//                   Center(
//                     child: SizedBox(
//                       width: 500,
//                       child: buildPasswordField(
//                           "Re-type Password", confirmPasswordController,
//                           confirm: true),
//                     ),
//                   ),
//                   SizedBox(height: 24),
//                   Center(
//                     child: ElevatedButton(
//                       onPressed: submitForm,
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.green,
//                         padding:
//                             EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                       ),
//                       child: Text('CHANGE PASSWORD',
//                           style: TextStyle(fontSize: 16)),
//                     ),
//                   ),
//                   SizedBox(height: 100),
//                   Container(
//                     color: Colors.black,
//                     padding: EdgeInsets.only(),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Divider(color: Colors.white),
//                         SizedBox(height: 10),
//                         Text(
//                           "CONTACT",
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 13,
//                               fontWeight: FontWeight.bold),
//                         ),
//                         SizedBox(height: 10),
//                         Text(
//                           "AL-SHARIQA TOWER\nFLOOR 7\nJABER AL MUBARAK STREET, BLOCK 2\nKUWAIT CITY",
//                           textAlign: TextAlign.center,
//                           style: TextStyle(color: Colors.white, fontSize: 14),
//                         ),
//                         SizedBox(height: 15),
//                         Text(
//                           "Join our mailing list for updates\nGet news & other events",
//                           textAlign: TextAlign.center,
//                           style: TextStyle(color: Colors.white70, fontSize: 14),
//                         ),
//                         SizedBox(height: 10),
//                         Padding(
//                           padding: EdgeInsets.only(),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               SizedBox(
//                                 width: MediaQuery.of(context).size.width / 1.1,
//                                 child: Center(
//                                   child: TextField(
//                                     textAlign: TextAlign.center,
//                                     decoration: InputDecoration(
//                                       hintText: "Email",
//                                       filled: true,
//                                       fillColor: Colors.white,
//                                       border: OutlineInputBorder(
//                                         borderRadius: BorderRadius.only(),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Container(
//                           decoration: BoxDecoration(
//                               border: Border.all(color: Colors.red)),
//                           width: MediaQuery.of(context).size.width / 1.1,
//                           height: 40,
//                           child: ElevatedButton(
//                               style: ElevatedButton.styleFrom(
//                                   minimumSize: Size(
//                                       MediaQuery.of(context).size.width / 1.1,
//                                       40),
//                                   shape: RoundedRectangleBorder()),
//                               onPressed: () {},
//                               child: Text(
//                                 "Subscribe",
//                                 style: TextStyle(color: Colors.black),
//                               )),
//                         ),
//                         SizedBox(height: 15),
//                         Text("22260445",
//                             style: TextStyle(
//                                 color: Colors.pink[200],
//                                 fontWeight: FontWeight.bold)),
//                         Text("INFO@AGTHIA-FOOD.COM.KW",
//                             style: TextStyle(color: Colors.pink[200])),
//                         SizedBox(height: 10),
//                         Divider(color: Colors.white),
//                         SizedBox(height: 5),
//                         Icon(
//                           Icons.copyright,
//                           color: Colors.white,
//                         ),
//                         Text("Copyright",
//                             style: TextStyle(color: Colors.white)),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

// Widget buildPasswordField(String label, TextEditingController controller,
//     {bool confirm = false}) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Text(label, style: TextStyle(fontSize: 16)),
//       TextFormField(
//         controller: controller,
//         obscureText: true,
//         validator: (value) {
//           if (value == null || value.isEmpty) {
//             return "Please fill in this field";
//           }
//           final passPattern =
//               RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*\W).{6,}$');
//           if (!passPattern.hasMatch(value)) {
//             return 'Password must be at least 6 characters long with uppercase, lowercase, number, and special character';
//           }
//           if (confirm && value != newPasswordController.text) {
//             return "Passwords do not match";
//           }
//           return null;
//         },
//         decoration: InputDecoration(
//           border: OutlineInputBorder(),
//           hintText: 'Enter $label',
//         ),
//       ),
//     ],
//   );
// }
// }


// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class UserChangepassword extends StatefulWidget {
//   @override
//   _UserChangepasswordState createState() => _UserChangepasswordState();
// }

// class _UserChangepasswordState extends State<UserChangepassword> {
//   final _currentPasswordController = TextEditingController();
//   final _newPasswordController = TextEditingController();
//   final _confirmPasswordController = TextEditingController();

//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   String _errorMessage = '';

//   // Function to change the password
//   Future<void> _changePassword() async {
//     String currentPassword = _currentPasswordController.text.trim();
//     String newPassword = _newPasswordController.text.trim();
//     String confirmPassword = _confirmPasswordController.text.trim();

//     if (newPassword != confirmPassword) {
//       setState(() {
//         _errorMessage = "New password and confirm password do not match.";
//       });
//       return;
//     }

//     try {
//       User? user = _auth.currentUser;

//       if (user == null) {
//         setState(() {
//           _errorMessage = "No user is logged in.";
//         });
//         return;
//       }

//       // Re-authenticate the user with current password
//       AuthCredential credential = EmailAuthProvider.credential(
//         email: user.email!,
//         password: currentPassword,
//       );

//       // Re-authenticate the user
//       await user.reauthenticateWithCredential(credential);

//       // Update password
//       await user.updatePassword(newPassword);

//       setState(() {
//         _errorMessage = "Password updated successfully!";
//       });
//     } on FirebaseAuthException catch (e) {
//       setState(() {
//         _errorMessage = "Error: ${e.message}";
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Change Password"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: <Widget>[
//             TextField(
//               controller: _currentPasswordController,
//               decoration: InputDecoration(
//                 labelText: "Current Password",
//                 hintText: "Enter your current password",
//                 errorText: _errorMessage.isEmpty ? null : _errorMessage,
//               ),
//               obscureText: true,
//             ),
//             SizedBox(height: 16),
//             TextField(
//               controller: _newPasswordController,
//               decoration: InputDecoration(
//                 labelText: "New Password",
//                 hintText: "Enter your new password",
//                 errorText: _errorMessage.isEmpty ? null : _errorMessage,
//               ),
//               obscureText: true,
//             ),
//             SizedBox(height: 16),
//             TextField(
//               controller: _confirmPasswordController,
//               decoration: InputDecoration(
//                 labelText: "Confirm Password",
//                 hintText: "Re-enter your new password",
//                 errorText: _errorMessage.isEmpty ? null : _errorMessage,
//               ),
//               obscureText: true,
//             ),
//             SizedBox(height: 32),
//             ElevatedButton(
//               onPressed: _changePassword,
//               child: Text("Change Password"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserChangepassword extends StatefulWidget {
  @override
  _UserChangepasswordState createState() => _UserChangepasswordState();
}

class _UserChangepasswordState extends State<UserChangepassword> {
  final _formKey = GlobalKey<FormState>();
  final _currentPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  bool _isLoading = false;
  String? _errorMessage;

  // Function to change the password
  Future<void> _changePassword() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      User? user = _auth.currentUser;
      if (user == null) throw FirebaseAuthException(code: 'user-not-found', message: 'No user is logged in.');

      // Re-authenticate the user
      AuthCredential credential = EmailAuthProvider.credential(
        email: user.email!,
        password: _currentPasswordController.text.trim(),
      );
      await user.reauthenticateWithCredential(credential);

      // Update password
      await user.updatePassword(_newPasswordController.text.trim());

      // Show success message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Password updated successfully!"), backgroundColor: Colors.green),
      );

      _currentPasswordController.clear();
      _newPasswordController.clear();
      _confirmPasswordController.clear();
    } on FirebaseAuthException catch (e) {
      setState(() => _errorMessage = e.message);
    } finally {
      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Change Password")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _currentPasswordController,
                decoration: InputDecoration(labelText: "Current Password"),
                obscureText: true,
                validator: (value) => value!.isEmpty ? "Enter current password" : null,
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _newPasswordController,
                decoration: InputDecoration(labelText: "New Password"),
                obscureText: true,
                validator: (value) =>
                    value!.length < 6 ? "Password must be at least 6 characters" : null,
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _confirmPasswordController,
                decoration: InputDecoration(labelText: "Confirm Password"),
                obscureText: true,
                validator: (value) =>
                    value != _newPasswordController.text ? "Passwords do not match" : null,
              ),
              if (_errorMessage != null)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(_errorMessage!, style: TextStyle(color: Colors.red)),
                ),
              SizedBox(height: 32),
              _isLoading
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: _changePassword,
                      child: Text("Change Password"),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
