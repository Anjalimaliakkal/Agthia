// import 'package:agthia/DeliveryPersonnel_pages/delivery_changepassword.dart';
// import 'package:agthia/DeliveryPersonnel_pages/delivery_home.dart';
// import 'package:agthia/DeliveryPersonnel_pages/delivery_neworders.dart';
// import 'package:agthia/DeliveryPersonnel_pages/delivery_previousorders.dart';
// import 'package:agthia/login.dart';
// import 'package:flutter/material.dart';

// class AddDelivery extends StatefulWidget {
//   const AddDelivery({super.key});

//   @override
//   State<AddDelivery> createState() => _AddDeliveryState();
// }

// class _AddDeliveryState extends State<AddDelivery> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController addressController =
//       TextEditingController();
//   final TextEditingController seatingCapacityController =
//       TextEditingController();

  

//     void _submitForm() {
//     if (_formKey.currentState!.validate()) {
//       // Process the form submission
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Delivery Personal added successfully only after admin approval!')),
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
//                   "DELIVERY PERSONNEL",
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
//                         builder: (context) => DeliveryChangepassword()));
//                 // Navigate to change password screen
//               } else if (value == 'logout') {
//                 Navigator.push(
//                     context, MaterialPageRoute(builder: (context) => Login()));
//                 // Perform logout action
//               }
//             },
//             itemBuilder: (BuildContext context) => [
//               // Title Item (Non-clickable)
//               PopupMenuItem<String>(
//                 enabled: false,
//                 child: Text(
//                   "Delivery Personnel",
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
//       drawer: Drawer(
//         width: 200,
//         backgroundColor: Color(0xFF282d37),
//         child: ListView(
//           padding: EdgeInsets.all(12),
//           children: [
//             DrawerHeader(
//               decoration: BoxDecoration(color: Color(0xFF282d37)),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   CircleAvatar(
//                     radius: 30,
//                     backgroundColor: Colors.white,
//                     child: Icon(Icons.person),
//                   ),
//                   SizedBox(
//                     height: 7,
//                   ),
//                   Text(
//                     "Delivery Personnel",
//                     style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white),
//                   )
//                 ],
//               ),
//             ),
//             ListTile(
//               title: Text("Home",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>DeliveryHome()));
//               },
//             ),
//             ListTile(
//               title: Text("Add Delivery Personnel",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => AddDelivery()));
//               },
//             ),
//             ListTile(
//               title: Text("New Orders",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => DeliveryNeworders()));
//               },
//             ),
//             ListTile(
//               title: Text("Previous Orders",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => DeliveryPreviousorders()));
//               },
//             ),
//           ],
//         ),
//       ),
//                body: Container(
        
//          width: double.infinity,
//         height: double.infinity,
//         //color: Color.fromARGB(255, 207, 198, 198),
//         decoration: BoxDecoration(
//           color: const Color.fromARGB(255, 200, 213, 219),
//             // image: DecorationImage(
//             //     image: AssetImage("asset/background_image1.jpg"),
//             //     fit: BoxFit.cover)
//             ),

//         child: Padding(
//           padding: EdgeInsets.all(16.0),
//           child: SingleChildScrollView(
//             scrollDirection: Axis.vertical,
//             child: Form(
//               key: _formKey,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Center(
//                       child: Text("Add Delivery Personnel",
//                           style: TextStyle(
//                               fontSize: 22, fontWeight: FontWeight.bold,))),
//                   SizedBox(height: 20),
              
                  
//                   Center(
//                     child: SizedBox(
//                       width: 600,
//                       child: TextFormField(
//                         controller: nameController,
//                         validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter the name';
//                     }
//                     return null;
//                   },
//                         decoration: InputDecoration(
//                           labelText: "Name",labelStyle: TextStyle(),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(8),
//                             borderSide: BorderSide(color: Colors.white,width: 10),
                            
//                           ),                                         
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 20),
              
                 
//                   Center(
//                     child: SizedBox(
//                       width: 600,
//                       child: TextFormField(
//                         controller: addressController,
//                         validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter the address';
//                     }
//                     return null;
//                   },
//                         decoration: InputDecoration(
//                           labelText: "Address",labelStyle: TextStyle(),
//                           border: OutlineInputBorder(),
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 20),
//               Center(
//                     child: SizedBox(
//                       width: 600,
//                       child: TextFormField(
//                         controller: addressController,
//                         validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter the Phone number';
//                     }
//                     return null;
//                   },
//                         decoration: InputDecoration(
//                           labelText: "Phone number",labelStyle: TextStyle(),
//                           border: OutlineInputBorder(),
//                         ),
//                         keyboardType: TextInputType.number,
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 20),
//               Center(
//                     child: SizedBox(
//                       width: 600,
//                       child: TextFormField(
//                         controller: addressController,
//                         validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter the Driving License Number';
//                     }
//                     return null;
//                   },
//                         decoration: InputDecoration(
//                           labelText: "Driving License Number",labelStyle: TextStyle(),
//                           border: OutlineInputBorder(),
//                         ),
//                       ),
//                     ),
//                   ),
                 
                 
                
//                   SizedBox(height: 20),
              
//                   // Submit Button
//                   Center(
//                     child: ElevatedButton(
//                       onPressed: () {
//                         _submitForm();
//                         // Handle form submission
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.green,
//                         padding:
//                             EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                       ),
//                       child: Text("Add Delivery Personnel",
//                           style: TextStyle(fontSize: 18, color: Colors.white)),
//                     ),
//                   ),
//                   SizedBox(height: 20),
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
//                         Text("Copyright", style: TextStyle(color: Colors.white)),
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
// }


// import 'package:agthia/DeliveryPersonnel_pages/delivery_changepassword.dart';
// import 'package:agthia/DeliveryPersonnel_pages/delivery_home.dart';
// import 'package:agthia/DeliveryPersonnel_pages/delivery_neworders.dart';
// import 'package:agthia/DeliveryPersonnel_pages/delivery_previousorders.dart';
// import 'package:agthia/backend_pages/backend_new/loginpage.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class AddDelivery extends StatefulWidget {
//   const AddDelivery({super.key});

//   @override
//   State<AddDelivery> createState() => _AddDeliveryState();
// }

// class _AddDeliveryState extends State<AddDelivery> {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController phoneController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
// final TextEditingController licnoController = TextEditingController();
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   Future<void> registerDeliveryBoy() async {
//     try {
//       // Firebase Authentication - Create User
//       UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
//         email: emailController.text.trim(),
//         password: passwordController.text.trim(),
//       );

//       String uid = userCredential.user!.uid;

//       // Firestore - Store User Data with approval required
//       await _firestore.collection("delivery_boys").doc(uid).set({
//         "uid": uid,
//         "name": nameController.text.trim(),
//         "email": emailController.text.trim(),
//         "phone": phoneController.text.trim(),
//         "license":licnoController.text.trim(),
//         //"approved": false, // Admin needs to approve
//         'approvedBy': '',
//         'status': 'pending',
//       });

//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text("Registration Successful! Waiting for admin approval.")),
//       );

//       Navigator.pop(context); // Go back after registration

//     } catch (e) {
//       print("Error: $e");
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text("Error: $e")),
//       );
//     }}
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
//                   "DELIVERY PERSONNEL",
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
//                         builder: (context) => DeliveryChangepassword()));
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
//                   "Delivery Personnel",
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
//       drawer: Drawer(
//         width: 200,
//         backgroundColor: Color(0xFF282d37),
//         child: ListView(
//           padding: EdgeInsets.all(12),
//           children: [
//             DrawerHeader(
//               decoration: BoxDecoration(color: Color(0xFF282d37)),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   CircleAvatar(
//                     radius: 30,
//                     backgroundColor: Colors.white,
//                     child: Icon(Icons.person),
//                   ),
//                   SizedBox(
//                     height: 7,
//                   ),
//                   Text(
//                     "Delivery Personnel",
//                     style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white),
//                   )
//                 ],
//               ),
//             ),
//             ListTile(
//               title: Text("Home",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>DeliveryHome()));
//               },
//             ),
//             ListTile(
//               title: Text("Add Delivery Personnel",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => AddDelivery()));
//               },
//             ),
//             ListTile(
//               title: Text("New Orders",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => DeliveryNeworders(deliveryBoyId: '',)));
//               },
//             ),
//             ListTile(
//               title: Text("Previous Orders",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => DeliveryPreviousorders()));
//               },
//             ),
//           ],
//         ),
//       ),
//                body: Container(
        
//          width: double.infinity,
//         height: double.infinity,
//         //color: Color.fromARGB(255, 207, 198, 198),
//         decoration: BoxDecoration(
//           color: const Color.fromARGB(255, 200, 213, 219),
//             // image: DecorationImage(
//             //     image: AssetImage("asset/background_image1.jpg"),
//             //     fit: BoxFit.cover)
//             ),

//         child: Padding(
//           padding: EdgeInsets.all(16.0),
//           child: SingleChildScrollView(
//             scrollDirection: Axis.vertical,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Center(
//                     child: Text("Add Delivery Personnel",
//                         style: TextStyle(
//                             fontSize: 22, fontWeight: FontWeight.bold,))),
//                 SizedBox(height: 20),
            
                
//                 Center(
//                   child: SizedBox(
//                     width: 600,
//                     child: TextFormField(
//                       controller: nameController,
//                       validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter the name';
//                   }
//                   return null;
//                 },
//                       decoration: InputDecoration(
//                         labelText: "Name",labelStyle: TextStyle(),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(8),
//                           borderSide: BorderSide(color: Colors.white,width: 10),
                          
//                         ),                                         
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
            
               
//                 Center(
//                   child: SizedBox(
//                     width: 600,
//                     child: TextFormField(
//                       controller: emailController,
//                 //       validator: (value) {
//                 //   if (value == null || value.isEmpty) {
//                 //     return 'Please enter the address';
//                 //   }
//                 //   return null;
//                 // },
//                       decoration: InputDecoration(
//                         labelText: "Email",labelStyle: TextStyle(),
//                         border: OutlineInputBorder(),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//             Center(
//                   child: SizedBox(
//                     width: 600,
//                     child: TextFormField(
//                       controller: phoneController,
//                       validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter the Phone number';
//                   }
//                   return null;
//                 },
//                       decoration: InputDecoration(
//                         labelText: "Phone number",labelStyle: TextStyle(),
//                         border: OutlineInputBorder(),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 Center(
//                   child: SizedBox(
//                     width: 600,
//                     child: TextFormField(
//                       controller:  passwordController,
//                 //       validator: (value) {
//                 //   if (value == null || value.isEmpty) {
//                 //     return 'Please enter the Phone number';
//                 //   }
//                 //   return null;
//                 // },
//                       decoration: InputDecoration(
//                         labelText: "Password",labelStyle: TextStyle(),
//                         border: OutlineInputBorder(),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//             Center(
//                   child: SizedBox(
//                     width: 600,
//                     child: TextFormField(
//                       controller: licnoController,
//                       validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter the Driving License Number';
//                   }
//                   return null;
//                 },
//                       decoration: InputDecoration(
//                         labelText: "Driving License Number",labelStyle: TextStyle(),
//                         border: OutlineInputBorder(),
//                       ),
//                     ),
//                   ),
//                 ),
               
               
              
//                 SizedBox(height: 20),
            
//                 // Submit Button
//                 Center(
//                   child: ElevatedButton(
//                     onPressed: () {
//                      registerDeliveryBoy();
//                       // Handle form submission
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.green,
//                       padding:
//                           EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     ),
//                     child: Text("Add Delivery Personnel",
//                         style: TextStyle(fontSize: 18, color: Colors.white)),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 Container(
//                   color: Colors.black,
//                   padding: EdgeInsets.only(),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Divider(color: Colors.white),
//                       SizedBox(height: 10),
//                       Text(
//                         "CONTACT",
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 13,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(height: 10),
//                       Text(
//                         "AL-SHARIQA TOWER\nFLOOR 7\nJABER AL MUBARAK STREET, BLOCK 2\nKUWAIT CITY",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(color: Colors.white, fontSize: 14),
//                       ),
//                       SizedBox(height: 15),
//                       Text(
//                         "Join our mailing list for updates\nGet news & other events",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(color: Colors.white70, fontSize: 14),
//                       ),
//                       SizedBox(height: 10),
//                       // Padding(
//                       //   padding: EdgeInsets.only(),
//                       //   child: Row(
//                       //     mainAxisAlignment: MainAxisAlignment.center,
//                       //     children: [
//                       //       SizedBox(
//                       //         width: MediaQuery.of(context).size.width / 1.1,
//                       //         child: Center(
//                       //           child: TextField(
//                       //             textAlign: TextAlign.center,
//                       //             decoration: InputDecoration(
//                       //               hintText: "Email",
//                       //               filled: true,
//                       //               fillColor: Colors.white,
//                       //               border: OutlineInputBorder(
//                       //                 borderRadius: BorderRadius.only(),
//                       //               ),
//                       //             ),
//                       //           ),
//                       //         ),
//                       //       ),
//                       //     ],
//                       //   ),
//                       // ),
//                       // SizedBox(
//                       //   height: 10,
//                       // ),
//                       // Container(
//                       //   decoration: BoxDecoration(
//                       //       border: Border.all(color: Colors.red)),
//                       //   width: MediaQuery.of(context).size.width / 1.1,
//                       //   height: 40,
//                       //   child: ElevatedButton(
//                       //       style: ElevatedButton.styleFrom(
//                       //           minimumSize: Size(
//                       //               MediaQuery.of(context).size.width / 1.1,
//                       //               40),
//                       //           shape: RoundedRectangleBorder()),
//                       //       onPressed: () {},
//                       //       child: Text(
//                       //         "Subscribe",
//                       //         style: TextStyle(color: Colors.black),
//                       //       )),
//                       // ),
//                       SizedBox(height: 15),
//                       Text("22260445",
//                           style: TextStyle(
//                               color: Colors.pink[200],
//                               fontWeight: FontWeight.bold)),
//                       Text("INFO@AGTHIA-FOOD.COM.KW",
//                           style: TextStyle(color: Colors.pink[200])),
//                       SizedBox(height: 10),
//                       Divider(color: Colors.white),
//                       SizedBox(height: 5),
//                       Icon(
//                         Icons.copyright,
//                         color: Colors.white,
//                       ),
//                       Text("Copyright", style: TextStyle(color: Colors.white)),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),

//     );
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class AddDelivery extends StatefulWidget {
//   @override
//   _AddDeliveryState createState() => _AddDeliveryState();
// }

// class _AddDeliveryState extends State<AddDelivery> {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController phoneController = TextEditingController();
//   final TextEditingController licnoController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();

//   Future<void> registerDeliveryBoy() async {
//     try {
//       // Check if email already exists
//       QuerySnapshot query = await _firestore
//           .collection("users")
//           .where("email", isEqualTo: emailController.text.trim())
//           .get();

//       if (query.docs.isNotEmpty) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text("Email already exists! Please use a different email.")),
//         );
//         return;
//       }

//       // Create User in Firebase Authentication
//       UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
//         email: emailController.text.trim(),
//         password: passwordController.text.trim(),
//       );

//       String uid = userCredential.user!.uid;

//       // Store User Data in Firestore (users collection)
//       await _firestore.collection("users").doc(uid).set({
//         "uid": uid,
//         "name": nameController.text.trim(),
//         "email": emailController.text.trim(),
//         "phone": phoneController.text.trim(),
//         "role": "delivery_boy", // Role differentiation
//       });

//       // Store Delivery Boy Details (delivery_boys collection)
//       await _firestore.collection("delivery_boys").doc(uid).set({
//         "uid": uid,
//         "name": nameController.text.trim(),
//         "email": emailController.text.trim(),
//         "phone": phoneController.text.trim(),
//         "license": licnoController.text.trim(),
//         "approvedBy": '',
//         "status": 'pending',
//       });

//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text("Registration Successful! Waiting for admin approval.")),
//       );

//       Navigator.pop(context); // Navigate back after successful registration
//     } catch (e) {
//       print("Error: $e");
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text("Registration failed. Please try again later.")),
//       );
//     }
//   }

//   Future<void> assignOrderToDeliveryBoy(String orderId, String deliveryBoyUid) async {
//     try {
//       await _firestore.collection("orders").doc(orderId).update({
//         "deliveryBoyId": deliveryBoyUid,
//         "status": "assigned",
//       });

//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text("Order assigned successfully!")),
//       );
//     } catch (e) {
//       print("Error: $e");
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text("Failed to assign order. Try again later.")),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Register Delivery Boy")),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(controller: nameController, decoration: InputDecoration(labelText: "Name")),
//             TextField(controller: emailController, decoration: InputDecoration(labelText: "Email")),
//             TextField(controller: phoneController, decoration: InputDecoration(labelText: "Phone")),
//             TextField(controller: licnoController, decoration: InputDecoration(labelText: "License No")),
//             TextField(controller: passwordController, decoration: InputDecoration(labelText: "Password"), obscureText: true),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: registerDeliveryBoy,
//               child: Text("Register"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// import 'package:agthia/DeliveryPersonnel_pages/delivery_changepassword.dart';
// import 'package:agthia/DeliveryPersonnel_pages/delivery_home.dart';
// import 'package:agthia/DeliveryPersonnel_pages/delivery_neworders.dart';
// import 'package:agthia/DeliveryPersonnel_pages/delivery_previousorders.dart';
// import 'package:agthia/backend_pages/backend_new/loginpage.dart';

// import 'package:agthia/backend_pages/backendlogin.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class AddDelivery extends StatefulWidget {
//   const AddDelivery({super.key});

//   @override
//   State<AddDelivery> createState() => _AddDeliveryState();
// }

// class _AddDeliveryState extends State<AddDelivery> {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController phoneController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
// final TextEditingController licnoController = TextEditingController();
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   Future<void> registerDeliveryBoy() async {
//     try {
//       // Firebase Authentication - Create User
//       UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
//         email: emailController.text.trim(),
//         password: passwordController.text.trim(),
//       );

//       String uid = userCredential.user!.uid;

//       // Firestore - Store User Data with approval required
//       await _firestore.collection("delivery_boys").doc(uid).set({
//         "uid": uid,
//         "name": nameController.text.trim(),
//         "email": emailController.text.trim(),
//         "phone": phoneController.text.trim(),
//         "license":licnoController.text.trim(),
//         //"approved": false, // Admin needs to approve
//         'approvedBy': '',
//         'status': 'pending',
//       });

//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text("Registration Successful! Waiting for admin approval.")),
//       );

//       Navigator.pop(context); // Go back after registration

//     } catch (e) {
//       print("Error: $e");
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text("Error: $e")),
//       );
//     }}
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
//                   "DELIVERY PERSONNEL",
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
//                         builder: (context) => DeliveryChangepassword()));
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
//                   "Delivery Personnel",
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
//       drawer: Drawer(
//         width: 200,
//         backgroundColor: Color(0xFF282d37),
//         child: ListView(
//           padding: EdgeInsets.all(12),
//           children: [
//             DrawerHeader(
//               decoration: BoxDecoration(color: Color(0xFF282d37)),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   CircleAvatar(
//                     radius: 30,
//                     backgroundColor: Colors.white,
//                     child: Icon(Icons.person),
//                   ),
//                   SizedBox(
//                     height: 7,
//                   ),
//                   Text(
//                     "Delivery Personnel",
//                     style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white),
//                   )
//                 ],
//               ),
//             ),
//             ListTile(
//               title: Text("Home",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>DeliveryHome()));
//               },
//             ),
//             ListTile(
//               title: Text("Add Delivery Personnel",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => AddDelivery()));
//               },
//             ),
//             ListTile(
//               title: Text("New Orders",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => DeliveryNeworders(deliveryBoyId: '',)));
//               },
//             ),
//             ListTile(
//               title: Text("Previous Orders",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => DeliveryPreviousorders()));
//               },
//             ),
//           ],
//         ),
//       ),
//                body: Container(
        
//          width: double.infinity,
//         height: double.infinity,
//         //color: Color.fromARGB(255, 207, 198, 198),
//         decoration: BoxDecoration(
//           color: const Color.fromARGB(255, 200, 213, 219),
//             // image: DecorationImage(
//             //     image: AssetImage("asset/background_image1.jpg"),
//             //     fit: BoxFit.cover)
//             ),

//         child: Padding(
//           padding: EdgeInsets.all(16.0),
//           child: SingleChildScrollView(
//             scrollDirection: Axis.vertical,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Center(
//                     child: Text("Add Delivery Personnel",
//                         style: TextStyle(
//                             fontSize: 22, fontWeight: FontWeight.bold,))),
//                 SizedBox(height: 20),
            
                
//                 Center(
//                   child: SizedBox(
//                     width: 600,
//                     child: TextFormField(
//                       controller: nameController,
//                       validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter the name';
//                   }
//                   return null;
//                 },
//                       decoration: InputDecoration(
//                         labelText: "Name",labelStyle: TextStyle(),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(8),
//                           borderSide: BorderSide(color: Colors.white,width: 10),
                          
//                         ),                                         
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
            
               
//                 Center(
//                   child: SizedBox(
//                     width: 600,
//                     child: TextFormField(
//                       controller: emailController,
//                 //       validator: (value) {
//                 //   if (value == null || value.isEmpty) {
//                 //     return 'Please enter the address';
//                 //   }
//                 //   return null;
//                 // },
//                       decoration: InputDecoration(
//                         labelText: "Email",labelStyle: TextStyle(),
//                         border: OutlineInputBorder(),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//             Center(
//                   child: SizedBox(
//                     width: 600,
//                     child: TextFormField(
//                       controller: phoneController,
//                       validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter the Phone number';
//                   }
//                   return null;
//                 },
//                       decoration: InputDecoration(
//                         labelText: "Phone number",labelStyle: TextStyle(),
//                         border: OutlineInputBorder(),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 Center(
//                   child: SizedBox(
//                     width: 600,
//                     child: TextFormField(
//                       controller:  passwordController,
//                 //       validator: (value) {
//                 //   if (value == null || value.isEmpty) {
//                 //     return 'Please enter the Phone number';
//                 //   }
//                 //   return null;
//                 // },
//                       decoration: InputDecoration(
//                         labelText: "Password",labelStyle: TextStyle(),
//                         border: OutlineInputBorder(),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//             Center(
//                   child: SizedBox(
//                     width: 600,
//                     child: TextFormField(
//                       controller: licnoController,
//                       validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter the Driving License Number';
//                   }
//                   return null;
//                 },
//                       decoration: InputDecoration(
//                         labelText: "Driving License Number",labelStyle: TextStyle(),
//                         border: OutlineInputBorder(),
//                       ),
//                     ),
//                   ),
//                 ),
               
               
              
//                 SizedBox(height: 20),
            
//                 // Submit Button
//                 Center(
//                   child: ElevatedButton(
//                     onPressed: () {
//                      registerDeliveryBoy();
//                       // Handle form submission
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.green,
//                       padding:
//                           EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     ),
//                     child: Text("Add Delivery Personnel",
//                         style: TextStyle(fontSize: 18, color: Colors.white)),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 Container(
//                   color: Colors.black,
//                   padding: EdgeInsets.only(),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Divider(color: Colors.white),
//                       SizedBox(height: 10),
//                       Text(
//                         "CONTACT",
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 13,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(height: 10),
//                       Text(
//                         "AL-SHARIQA TOWER\nFLOOR 7\nJABER AL MUBARAK STREET, BLOCK 2\nKUWAIT CITY",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(color: Colors.white, fontSize: 14),
//                       ),
//                       SizedBox(height: 15),
//                       Text(
//                         "Join our mailing list for updates\nGet news & other events",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(color: Colors.white70, fontSize: 14),
//                       ),
//                       SizedBox(height: 10),
//                       // Padding(
//                       //   padding: EdgeInsets.only(),
//                       //   child: Row(
//                       //     mainAxisAlignment: MainAxisAlignment.center,
//                       //     children: [
//                       //       SizedBox(
//                       //         width: MediaQuery.of(context).size.width / 1.1,
//                       //         child: Center(
//                       //           child: TextField(
//                       //             textAlign: TextAlign.center,
//                       //             decoration: InputDecoration(
//                       //               hintText: "Email",
//                       //               filled: true,
//                       //               fillColor: Colors.white,
//                       //               border: OutlineInputBorder(
//                       //                 borderRadius: BorderRadius.only(),
//                       //               ),
//                       //             ),
//                       //           ),
//                       //         ),
//                       //       ),
//                       //     ],
//                       //   ),
//                       // ),
//                       // SizedBox(
//                       //   height: 10,
//                       // ),
//                       // Container(
//                       //   decoration: BoxDecoration(
//                       //       border: Border.all(color: Colors.red)),
//                       //   width: MediaQuery.of(context).size.width / 1.1,
//                       //   height: 40,
//                       //   child: ElevatedButton(
//                       //       style: ElevatedButton.styleFrom(
//                       //           minimumSize: Size(
//                       //               MediaQuery.of(context).size.width / 1.1,
//                       //               40),
//                       //           shape: RoundedRectangleBorder()),
//                       //       onPressed: () {},
//                       //       child: Text(
//                       //         "Subscribe",
//                       //         style: TextStyle(color: Colors.black),
//                       //       )),
//                       // ),
//                       SizedBox(height: 15),
//                       Text("22260445",
//                           style: TextStyle(
//                               color: Colors.pink[200],
//                               fontWeight: FontWeight.bold)),
//                       Text("INFO@AGTHIA-FOOD.COM.KW",
//                           style: TextStyle(color: Colors.pink[200])),
//                       SizedBox(height: 10),
//                       Divider(color: Colors.white),
//                       SizedBox(height: 5),
//                       Icon(
//                         Icons.copyright,
//                         color: Colors.white,
//                       ),
//                       Text("Copyright", style: TextStyle(color: Colors.white)),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),

//     );
//   }
// }



// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class AddDelivery extends StatefulWidget {
//   @override
//   _AddDeliveryState createState() =>
//       _AddDeliveryState();
// }

// class _AddDeliveryState
//     extends State<AddDelivery> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _phoneController = TextEditingController();




// Future<void> registerDeliveryBoy(BuildContext context, TextEditingController nameController, TextEditingController emailController, TextEditingController phoneController, TextEditingController passwordController) async {
//   try {
//     UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
//       email: emailController.text.trim(),
//       password: passwordController.text.trim(),
//     );

//     String deliveryBoyUid = userCredential.user!.uid;

//     // Store delivery boy details in Firestore
//     await FirebaseFirestore.instance.collection('users').doc(deliveryBoyUid).set({
//       'role': 'Delivery Boy',
//       'name': nameController.text.trim(),
//       'email': emailController.text.trim(),
//       'phone': phoneController.text.trim(),
//       'status': 'pending', // Requires admin approval
//       'createdAt': FieldValue.serverTimestamp(),
//     });

//     await FirebaseFirestore.instance.collection('delivery_boys').doc(deliveryBoyUid).set({
//       'uid': deliveryBoyUid,
//       'name': nameController.text.trim(),
//       'email': emailController.text.trim(),
//       'phone': phoneController.text.trim(),
//       'status': 'pending', // Admin must approve
//       'availability': 'available', // Default to available
//       'createdAt': FieldValue.serverTimestamp(),
//     });

//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//       content: Text('Delivery boy registered successfully! Pending admin approval.'),
//     ));

//     Navigator.pop(context);
//   } catch (e) {
//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//       content: Text('Error registering delivery boy: $e'),
//     ));
//   }
// }


//   // // Function to register the delivery boy
//   // Future<void> registerDeliveryBoy() async {
//   //   try {
//   //     // 1. Register the delivery boy with Firebase Auth
//   //     UserCredential userCredential = await FirebaseAuth.instance
//   //         .createUserWithEmailAndPassword(
//   //             email: _emailController.text.trim(),
//   //             password: _passwordController.text.trim());

//   //     String deliveryBoyUid = userCredential.user!.uid;

//   //     // 2. Store delivery boy details in the `users` collection
//   //     await FirebaseFirestore.instance.collection('users').doc(deliveryBoyUid).set({
//   //       'role': 'Delivery Boy', // Assign role as 'Delivery Boy'
//   //       'name': _nameController.text.trim(),
//   //       'email': _emailController.text.trim(),
//   //       'phone': _phoneController.text.trim(),
//   //       'status': 'active', // You can set this to active or pending
//   //       'createdAt': FieldValue.serverTimestamp(),
//   //     });

//   //     // 3. Store the same `UID` in the `delivery_boys` collection
//   //     await FirebaseFirestore.instance.collection('delivery_boys').doc(deliveryBoyUid).set({
//   //       'uid': deliveryBoyUid,  // Using the same UID from Firebase Auth
//   //       'name': _nameController.text.trim(),
//   //       'email': _emailController.text.trim(),
//   //       'phone': _phoneController.text.trim(),
//   //       'status': 'active', // You can change to inactive or pending if required
//   //       'availability': 'available', // Set the initial availability
//   //       'createdAt': FieldValue.serverTimestamp(),
//   //     });

//   //     // Show success message
//   //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//   //       content: Text('Delivery boy registered successfully!'),
//   //     ));

//   //     // You can redirect them to a login page or another screen
//   //     Navigator.pop(context); // Go back to the previous screen
//   //   } catch (e) {
//   //     // Handle error
//   //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//   //       content: Text('Error registering delivery boy: $e'),
//   //     ));
//   //   }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Register Delivery Boy')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               TextFormField(
//                 controller: _nameController,
//                 decoration: InputDecoration(labelText: 'Name'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter name';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 controller: _phoneController,
//                 decoration: InputDecoration(labelText: 'Phone Number'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter phone number';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 controller: _emailController,
//                 decoration: InputDecoration(labelText: 'Email'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter email';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 controller: _passwordController,
//                 obscureText: true,
//                 decoration: InputDecoration(labelText: 'Password'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter password';
//                   }
//                   return null;
//                 },
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   if (_formKey.currentState!.validate()) {
//                    registerDeliveryBoy(context, _nameController, _emailController, _phoneController, _passwordController);
//                   }
//                 },
//                 child: Text('Register'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class AddDelivery extends StatefulWidget {
//   @override
//   _AddDeliveryState createState() => _AddDeliveryState();
// }

// class _AddDeliveryState extends State<AddDelivery> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _phoneController = TextEditingController();

//   bool _isLoading = false;

//   Future<void> registerDeliveryBoy(BuildContext context, TextEditingController nameController, TextEditingController emailController, TextEditingController phoneController, TextEditingController passwordController) async {
//     try {
//       UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
//         email: emailController.text.trim(),
//         password: passwordController.text.trim(),
//       );

//       String deliveryBoyUid = userCredential.user!.uid;

//       await FirebaseFirestore.instance.collection('users').doc(deliveryBoyUid).set({
//         'role': 'Delivery Boy',
//         'name': nameController.text.trim(),
//         'email': emailController.text.trim(),
//         'phone': phoneController.text.trim(),
//         'status': 'pending',
//         'createdAt': FieldValue.serverTimestamp(),
//       });

//       await FirebaseFirestore.instance.collection('delivery_boys').doc(deliveryBoyUid).set({
//         'uid': deliveryBoyUid,
//         'name': nameController.text.trim(),
//         'email': emailController.text.trim(),
//         'phone': phoneController.text.trim(),
//         'status': 'pending',
//         'availability': 'available',
//         'createdAt': FieldValue.serverTimestamp(),
//       });

//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//         content: Text('Delivery boy registered successfully! Pending admin approval.'),
//       ));

//       Navigator.pop(context);
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//         content: Text('Error registering delivery boy: $e'),
//       ));
//     }
//   }

//   void _register() {
//     if (_formKey.currentState!.validate()) {
//       setState(() {
//         _isLoading = true;
//       });
//       registerDeliveryBoy(context, _nameController, _emailController, _phoneController, _passwordController);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Register Delivery Boy')),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               _buildTextField(_nameController, 'Name', Icons.person, 'Please enter name'),
//               _buildTextField(_phoneController, 'Phone Number', Icons.phone, 'Please enter phone number', isNumeric: true),
//               _buildTextField(_emailController, 'Email', Icons.email, 'Please enter email', isEmail: true),
//               _buildTextField(_passwordController, 'Password', Icons.lock, 'Please enter password', isPassword: true),
//               SizedBox(height: 20),
//               _isLoading
//                   ? Center(child: CircularProgressIndicator())
//                   : SizedBox(
//                       width: double.infinity,
//                       child: ElevatedButton(
//                         onPressed: _register,
//                         style: ElevatedButton.styleFrom(
//                           padding: EdgeInsets.symmetric(vertical: 12),
//                           textStyle: TextStyle(fontSize: 18),
//                         ),
//                         child: Text('Register'),
//                       ),
//                     ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTextField(TextEditingController controller, String label, IconData icon, String errorMessage, {bool isPassword = false, bool isEmail = false, bool isNumeric = false}) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10.0),
//       child: TextFormField(
//         controller: controller,
//         obscureText: isPassword,
//         keyboardType: isNumeric ? TextInputType.phone : (isEmail ? TextInputType.emailAddress : TextInputType.text),
//         decoration: InputDecoration(
//           labelText: label,
//           prefixIcon: Icon(icon),
//           border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
//         ),
//         validator: (value) {
//           if (value == null || value.isEmpty) {
//             return errorMessage;
//           }
//           if (isEmail && !RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}\$').hasMatch(value)) {
//             return 'Enter a valid email';
//           }
//           if (isNumeric && !RegExp(r'^[0-9]{10}\$').hasMatch(value)) {
//             return 'Enter a valid 10-digit phone number';
//           }
//           return null;
//         },
//       ),
//     );
//   }
// }


// import 'package:agthia/DeliveryPersonnel_pages/delivery_changepassword.dart';
// import 'package:agthia/backend_pages/backend_new/loginpage.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class AddDelivery extends StatefulWidget {
//   @override
//   _AddDeliveryState createState() => _AddDeliveryState();
// }

// class _AddDeliveryState extends State<AddDelivery> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _phoneController = TextEditingController();
//   bool _isLoading = false;

//   Future<void> registerDeliveryBoy() async {
//     if (!_formKey.currentState!.validate()) return;

//     setState(() => _isLoading = true);
//     try {
//       UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
//         email: _emailController.text.trim(),
//         password: _passwordController.text.trim(),
//       );

//       String deliveryBoyUid = userCredential.user!.uid;

//       await FirebaseFirestore.instance.collection('users').doc(deliveryBoyUid).set({
//         'role': 'Delivery Boy',
//         'name': _nameController.text.trim(),
//         'email': _emailController.text.trim(),
//         'phone': _phoneController.text.trim(),
//         'status': 'pending',
//         'createdAt': FieldValue.serverTimestamp(),
//       });

//       await FirebaseFirestore.instance.collection('delivery_boys').doc(deliveryBoyUid).set({
//         'uid': deliveryBoyUid,
//         'name': _nameController.text.trim(),
//         'email': _emailController.text.trim(),
//         'phone': _phoneController.text.trim(),
//         'status': 'pending',
//         'availability': 'available',
//         'createdAt': FieldValue.serverTimestamp(),
//       });

//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Delivery boy registered successfully! Pending admin approval.')),
//       );
//       Navigator.pop(context);
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Error registering delivery boy: $e')),
//       );
//     }
//     setState(() => _isLoading = false);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(title: Text('Register Delivery Boy')),
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
//                   "DELIVERY PERSONNEL",
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
//                         builder: (context) => DeliveryChangepassword()));
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
//                   "Delivery Personnel",
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
//       backgroundColor: const Color.fromARGB(255, 218, 223, 232),
      
//       body: Center(
//         child: Container(
//           width: 600,
//           height: 500,
//           color: const Color.fromARGB(255, 194, 204, 220),
//           child: SingleChildScrollView(
//             padding: EdgeInsets.all(16.0),
//             child: Form(
//               key: _formKey,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text("Registration",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green),),
//                   Center(
//                     child: SizedBox(
//                       width: 500,
//                       child: _buildTextField(_nameController, 'Name', Icons.person, 'Please enter name')),
//                   ),
//                   Center(
//                     child: SizedBox(
//                       width: 500,
//                       child: _buildTextField(_phoneController, 'Phone Number', Icons.phone, 'Enter a valid 10-digit phone number', isNumeric: true)),
//                   ),
//                   Center(
//                     child: SizedBox(
//                       width: 500,
//                       child: _buildTextField(_emailController, 'Email', Icons.email, 'Enter a valid email', isEmail: true)),
//                   ),
//                   Center(
//                     child: SizedBox(
//                       width: 500,
//                       child: _buildTextField(_passwordController, 'Password', Icons.lock, 'Password must be at least 6 characters', isPassword: true)),
//                   ),
//                   SizedBox(height: 20),
//                   _isLoading
//                       ? Center(child: CircularProgressIndicator())
//                       : Center(
//                         child: SizedBox(
//                             width: 300,
//                             child: ElevatedButton(
//                               onPressed: registerDeliveryBoy,
//                               style: ElevatedButton.styleFrom(backgroundColor: Colors.green,
//                                 padding: EdgeInsets.symmetric(vertical: 12),
//                                 textStyle: TextStyle(fontSize: 18),
//                               ),
//                               child: Text('Register',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
//                             ),
//                           ),
//                       ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTextField(TextEditingController controller, String label, IconData icon, String errorMessage,
//       {bool isPassword = false, bool isEmail = false, bool isNumeric = false}) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10.0),
//       child: TextFormField(
//         controller: controller,
//         obscureText: isPassword,
//         keyboardType: isNumeric ? TextInputType.phone : (isEmail ? TextInputType.emailAddress : TextInputType.text),
//         decoration: InputDecoration(
//           labelText: label,
//           prefixIcon: Icon(icon),
//           border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
//         ),
//         validator: (value) {
//           if (value == null || value.isEmpty) return errorMessage;
//           if (isEmail && RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}\$').hasMatch(value)) return 'Enter a valid email';
//           if (isNumeric && RegExp(r'^[0-9]{10}\$').hasMatch(value)) return 'Enter a valid 10-digit phone number';
//           if (isPassword && value.length < 6) return 'Password must be at least 6 characters';
//           return null;
//         },
//       ),
//     );
//   }
// }


import 'package:agthia/DeliveryPersonnel_pages/delivery_changepassword.dart';
import 'package:agthia/backend_pages/backend_new/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddDelivery extends StatefulWidget {
  @override
  _AddDeliveryState createState() => _AddDeliveryState();
}

class _AddDeliveryState extends State<AddDelivery> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  bool _isLoading = false;

  Future<void> registerDeliveryBoy() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);
    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );

      String deliveryBoyUid = userCredential.user!.uid;

      await FirebaseFirestore.instance.collection('users').doc(deliveryBoyUid).set({
        'role': 'Delivery Boy',
        'name': _nameController.text.trim(),
        'email': _emailController.text.trim(),
        'phone': _phoneController.text.trim(),
        'status': 'pending',
        'createdAt': FieldValue.serverTimestamp(),
      });

      await FirebaseFirestore.instance.collection('delivery_boys').doc(deliveryBoyUid).set({
        'uid': deliveryBoyUid,
        'name': _nameController.text.trim(),
        'email': _emailController.text.trim(),
        'phone': _phoneController.text.trim(),
        'status': 'pending',
        'availability': 'available',
        'createdAt': FieldValue.serverTimestamp(),
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Delivery boy registered successfully! Pending admin approval.')),
      );
      Navigator.pop(context);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error registering delivery boy: $e')),
      );
    }
    setState(() => _isLoading = false);
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
      backgroundColor: const Color.fromARGB(255, 218, 223, 232),
      body: Center(
        child: Container(
          width: 600,
          height: 500,
          color: const Color.fromARGB(255, 194, 204, 220),
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Registration",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                  Center(
                    child: SizedBox(
                      width: 500,
                      child: _buildTextField(_nameController, 'Name', Icons.person, 'Please enter name'),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: 500,
                      child: _buildTextField(
                        _phoneController,
                        'Phone Number',
                        Icons.phone,
                        'Enter a valid 10-digit phone number',
                        isNumeric: true,
                      ),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: 500,
                      child: _buildTextField(
                        _emailController,
                        'Email',
                        Icons.email,
                        'Enter a valid email',
                        isEmail: true,
                      ),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: 500,
                      child: _buildTextField(
                        _passwordController,
                        'Password',
                        Icons.lock,
                        'Password must be at least 6 characters',
                        isPassword: true,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  _isLoading
                      ? Center(child: CircularProgressIndicator())
                      : Center(
                          child: SizedBox(
                            width: 300,
                            child: ElevatedButton(
                              onPressed: registerDeliveryBoy,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                padding: EdgeInsets.symmetric(vertical: 12),
                                textStyle: TextStyle(fontSize: 18),
                              ),
                              child: Text(
                                'Register',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(
    TextEditingController controller,
    String label,
    IconData icon,
    String errorMessage, {
    bool isPassword = false,
    bool isEmail = false,
    bool isNumeric = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: TextFormField(
        controller: controller,
        obscureText: isPassword,
        keyboardType: isNumeric ? TextInputType.phone : (isEmail ? TextInputType.emailAddress : TextInputType.text),
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icon),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) return errorMessage;
          if (isEmail && !_isValidEmail(value)) return 'Enter a valid email';
          if (isNumeric && !_isValidPhoneNumber(value)) return 'Enter a valid 10-digit phone number';
          if (isPassword && value.length < 6) return 'Password must be at least 6 characters';
          return null;
        },
      ),
    );
  }

  bool _isValidEmail(String email) {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");
    return emailRegExp.hasMatch(email);
  }

  bool _isValidPhoneNumber(String phone) {
    final phoneRegExp = RegExp(r'^[0-9]{10}$'); // Exactly 10 digits
    return phoneRegExp.hasMatch(phone);
  }
}
