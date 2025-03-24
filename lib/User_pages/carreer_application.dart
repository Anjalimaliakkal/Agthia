// import 'package:agthia/User_pages/About.dart';
// import 'package:agthia/User_pages/brandspage.dart';
// import 'package:agthia/User_pages/carreerpage.dart';
// import 'package:agthia/User_pages/contactus.dart';
// import 'package:agthia/User_pages/homescreen.dart';
// import 'package:agthia/User_pages/mediapage.dart';
// import 'package:agthia/User_pages/mission.dart';
// import 'package:agthia/User_pages/ourpeople.dart';
// import 'package:agthia/User_pages/user_changepassword.dart';
// import 'package:agthia/User_pages/words_from_chairman.dart';
// import 'package:agthia/backend_pages/backend_new/loginpage.dart';
// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/material.dart';
// import 'dart:io';

// class CarreerApplication extends StatefulWidget {
//   const CarreerApplication({super.key});

//   @override
//   State<CarreerApplication> createState() => _CarreerApplicationState();
// }

// class _CarreerApplicationState extends State<CarreerApplication> {
//   final _formKey = GlobalKey<FormState>();
//   TextEditingController fullNameController = TextEditingController();
//   TextEditingController phoneController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController addressController = TextEditingController();
//   File? selectedFile;

//   Future<void> pickFile() async {
//     FilePickerResult? result = await FilePicker.platform.pickFiles(
//       type: FileType.custom,
//       allowedExtensions: ['pdf', 'doc', 'docx'],
//     );

//     if (result != null) {
//       setState(() {
//         selectedFile = File(result.files.single.path!);
//       });
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
//               } else if (value == 'logout') {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => LoginPage()));
//               }
//             },
//             itemBuilder: (BuildContext context) => [
//               PopupMenuItem<String>(
//                 enabled: false,
//                 child: Text(
//                   "User",
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//               ),
//               PopupMenuDivider(),

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
//                     "User",
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
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => Homescreen()));
//               },
//             ),
//             ExpansionTile(
//               title: Text(
//                 "About us",
//                 style:
//                     TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
//               ),
//               children: [
//                 ListTile(
//                   title: Text(
//                     "About",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.white),
//                   ),
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => About()));
//                   },
//                   contentPadding: EdgeInsets.only(left: 60),
//                 ),
//                 ListTile(
//                   title: Text(
//                     "Our People",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.white),
//                   ),
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => Ourpeople()));
//                   },
//                   contentPadding: EdgeInsets.only(left: 60),
//                 ),
//                 ListTile(
//                   title: Text(
//                     "Mission/Vision",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.white),
//                   ),
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => Mission()));
//                   },
//                   contentPadding: EdgeInsets.only(left: 60),
//                 ),
//                 ListTile(
//                   title: Text(
//                     "Word from Chairman",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.white),
//                   ),
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => WordsFromChairman()));
//                   },
//                   contentPadding: EdgeInsets.only(left: 60),
//                 ),
//               ],
//             ),
//             ListTile(
//               title: Text("Brands",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => Brandspage()));
//               },
//             ),
//             ListTile(
//               title: Text("Media",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => Mediapage()));
//               },
//             ),
//             ListTile(
//               title: Text("Carrier",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => Carreerpage()));
//               },
//             ),
//             ListTile(
//               title: Text("Contact us",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => Contactus()));
//               },
//             ),
//           ],
//         ),
//       ),
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Column(
//           children: [
//             SizedBox(
//               height: 300,
//               child: Stack(
//                 children: [
//                   Positioned.fill(
//                       child: Image(
//                     image: AssetImage("asset/our_people.jpg"),
//                     fit: BoxFit.cover,
//                   ))
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(10),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black12,
//                     blurRadius: 6,
//                     spreadRadius: 2,
//                     offset: Offset(2, 4),
//                   ),
//                 ],
//               ),

//               //width: MediaQuery.of(context).size.width,
//               //color: Color(0xFFf3eddf),
//               width: 500,
//               height: 800,

//               child: Padding(
//                 padding: EdgeInsets.all(20),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Center(
//                         child: Text(
//                       "Job Application Form",
//                       style:
//                           TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
//                     )),
//                     SizedBox(height: 10),
//                     Divider(
//                       color: Colors.orange,
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Column(
//                       children: [
//                         SizedBox(height: 10),
//                         TextFormField(
//                           controller: fullNameController,
//                           decoration: InputDecoration(labelText: "Full Name"),
//                           validator: (value) {
//                             if (value!.isEmpty)
//                               return "Please enter your full name";
//                             return null;
//                           },
//                         ),
//                         SizedBox(height: 10),
//                         TextFormField(
//                           controller: phoneController,
//                           decoration: InputDecoration(labelText: "Phone"),
//                           keyboardType: TextInputType.phone,
//                           validator: (value) {
//                             if (value!.isEmpty)
//                               return "Please enter your phone number";
//                             return null;
//                           },
//                         ),
//                         SizedBox(height: 10),
//                         TextFormField(
//                           controller: emailController,
//                           decoration: InputDecoration(labelText: "Email"),
//                           keyboardType: TextInputType.emailAddress,
//                           validator: (value) {
//                             if (value!.isEmpty)
//                               return "Please enter your email";
//                             return null;
//                           },
//                         ),
//                         SizedBox(height: 10),
//                         TextFormField(
//                           controller: addressController,
//                           decoration: InputDecoration(labelText: "Address"),
//                           maxLines: 3,
//                           validator: (value) {
//                             if (value!.isEmpty)
//                               return "Please enter your address";
//                             return null;
//                           },
//                         ),
//                         SizedBox(height: 10),
//                         SizedBox(
//                             width: 500,
//                             child: Text("Resume:",
//                                 style: TextStyle(fontWeight: FontWeight.bold))),
//                         SizedBox(height: 10),
//                         Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             ElevatedButton(
//                               onPressed: pickFile,
//                               child: Text("Choose File"),
//                             ),
//                             if (selectedFile != null)
//                               Padding(
//                                 padding: EdgeInsets.only(top: 5),
//                                 child: Text(
//                                   "Selected File: ${selectedFile!.path.split('/').last}",
//                                   style: TextStyle(
//                                       color: Colors.green,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                               ),
//                           ],
//                         ),
//                         SizedBox(height: 30),
//                         Center(
//                           child: Row(
//                             children: [
//                               ElevatedButton(
//                                 onPressed: () {
//                                   if (_formKey.currentState!.validate()) {
//                                     // Submit form logic
//                                   }
//                                 },
//                                 child: Text(
//                                   "Submit",
//                                   style: TextStyle(color: Colors.white),
//                                 ),
//                                 style: ElevatedButton.styleFrom(
//                                     shape: BeveledRectangleBorder(),
//                                     backgroundColor: Colors.green),
//                               ),
//                               SizedBox(
//                                 width: 30,
//                               ),
//                               ElevatedButton(
//                                 onPressed: () {
//                                   _formKey.currentState!.reset();
//                                   fullNameController.clear();
//                                   phoneController.clear();
//                                   emailController.clear();
//                                   addressController.clear();
//                                   setState(() {
//                                     selectedFile = null;
//                                   });
//                                 },
//                                 child: Text(
//                                   "Cancel",
//                                   style: TextStyle(color: Colors.white),
//                                 ),
//                                 style: ElevatedButton.styleFrom(
//                                     shape: BeveledRectangleBorder(),
//                                     backgroundColor: Colors.red),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             Container(
//               color: Colors.black,
//               padding: EdgeInsets.only(),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Divider(color: Colors.white),
//                   SizedBox(height: 10),
//                   Text(
//                     "CONTACT",
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 13,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     "AL-SHARIQA TOWER\nFLOOR 7\nJABER AL MUBARAK STREET, BLOCK 2\nKUWAIT CITY",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(color: Colors.white, fontSize: 14),
//                   ),
//                   SizedBox(height: 15),
//                   Text(
//                     "Join our mailing list for updates\nGet news & other events",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(color: Colors.white70, fontSize: 14),
//                   ),
//                   SizedBox(height: 10),
//                   Padding(
//                     padding: EdgeInsets.only(),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         SizedBox(
//                           width: MediaQuery.of(context).size.width / 1.1,
//                           child: Center(
//                             child: TextField(
//                               textAlign: TextAlign.center,
//                               decoration: InputDecoration(
//                                 hintText: "Email",
//                                 filled: true,
//                                 fillColor: Colors.white,
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.only(),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Container(
//                     decoration:
//                         BoxDecoration(border: Border.all(color: Colors.red)),
//                     width: MediaQuery.of(context).size.width / 1.1,
//                     height: 40,
//                     child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                             minimumSize: Size(
//                                 MediaQuery.of(context).size.width / 1.1, 40),
//                             shape: RoundedRectangleBorder()),
//                         onPressed: () {},
//                         child: Text(
//                           "Subscribe",
//                           style: TextStyle(color: Colors.black),
//                         )),
//                   ),
//                   SizedBox(height: 15),
//                   Text("22260445",
//                       style: TextStyle(
//                           color: Colors.pink[200],
//                           fontWeight: FontWeight.bold)),
//                   Text("INFO@AGTHIA-FOOD.COM.KW",
//                       style: TextStyle(color: Colors.pink[200])),
//                   SizedBox(height: 10),
//                   Divider(color: Colors.white),
//                   SizedBox(height: 5),
//                   Icon(
//                     Icons.copyright,
//                     color: Colors.white,
//                   ),
//                   Text("Copyright", style: TextStyle(color: Colors.white)),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// import 'package:agthia/User_pages/About.dart';
// import 'package:agthia/User_pages/brandspage.dart';
// import 'package:agthia/User_pages/carreerpage.dart';
// import 'package:agthia/User_pages/contactus.dart';
// import 'package:agthia/User_pages/homescreen.dart';
// import 'package:agthia/User_pages/mediapage.dart';
// import 'package:agthia/User_pages/mission.dart';
// import 'package:agthia/User_pages/ourpeople.dart';
// import 'package:agthia/User_pages/user_changepassword.dart';
// import 'package:agthia/User_pages/words_from_chairman.dart';
// import 'package:agthia/backend_pages/backend_new/loginpage.dart';
// //import 'package:file_picker/file_picker.dart';
// import 'package:flutter/material.dart';
// import 'dart:io';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:file_picker/file_picker.dart';

// class CarreerApplication extends StatefulWidget {
//   final String jobId;
//   final String jobTitle;
  
//   const CarreerApplication({
//     Key? key,
//     required this.jobId,
//     required this.jobTitle,
//   }) : super(key: key);

//   @override
//   State<CarreerApplication> createState() => _CarreerApplicationState();
// }

// class _CarreerApplicationState extends State<CarreerApplication> {
//   final _formKey = GlobalKey<FormState>();
//   TextEditingController fullNameController = TextEditingController();
//   TextEditingController phoneController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController addressController = TextEditingController();
//   File? selectedFile;

//   // Future<void> pickFile() async {
//   //   FilePickerResult? result = await FilePicker.platform.pickFiles(
//   //     type: FileType.custom,
//   //     allowedExtensions: ['pdf', 'doc', 'docx'],
//   //   );
//   //   if (result != null) {
//   //     setState(() {
//   //       selectedFile = File(result.files.single.path!);
//   //     });
//   //   }
//   // }
// // Future<void> pickFile() async {
// //   FilePickerResult? result = await FilePicker.platform.pickFiles(
// //     type: FileType.custom,
// //     allowedExtensions: ['pdf', 'doc', 'docx'],
// //   );

// //   if (result != null && result.files.isNotEmpty) {
// //     // On mobile, use the file path
// //     String? filePath = result.files.single.path;
// //     if (filePath != null) {
// //       setState(() {
// //         selectedFile = File(filePath);
// //       });
// //     } else {
// //       // On web, file path is null. Use file bytes.
// //       // You can save result.files.single.bytes or process accordingly.
// //       // For example:
// //       print("File picked on web. Use result.files.single.bytes to process the file.");
// //     }
// //   }
// // }
// Future<void> pickFile() async {
//   FilePickerResult?result=await FilePicker.platform.pickFiles(
//   type:FileType.custom,
//   allowedExtensions:['pdf','doc','docx']);
//   // FilePickerResult? result = await FilePicker.platform.pickFiles(
//   //   type: FileType.custom,
//   //   allowedExtensions: ['pdf', 'doc', 'docx'],
//   // );
//   if (result != null && result.files.isNotEmpty) {
//     // On mobile, use the file path:
//     String? filePath = result.files.single.path;
//     if (filePath != null) {
//       setState(() {
//         selectedFile = File(filePath);
//       });
//     } else {
//       // On web, filePath is null. Use file bytes.
//       print("File picked on web: ${result.files.single.bytes}");
//     }
//   }
// }

//   Future<void> submitApplication() async {
//     if (_formKey.currentState!.validate()) {
//       Map<String, dynamic> applicationData = {
//         "jobId": widget.jobId,
//         "jobTitle": widget.jobTitle,
//         "fullName": fullNameController.text,
//         "phone": phoneController.text,
//         "email": emailController.text,
//         "address": addressController.text,
//         "submittedAt": FieldValue.serverTimestamp(),
//         "resumeFileName": selectedFile != null ? selectedFile!.path.split('/').last : null,
//       };

//       try {
//         await FirebaseFirestore.instance
//             .collection("job_applications")
//             .add(applicationData);
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text("Application submitted successfully!")),
//         );
//         _formKey.currentState!.reset();
//         fullNameController.clear();
//         phoneController.clear();
//         emailController.clear();
//         addressController.clear();
//         setState(() {
//           selectedFile = null;
//         });
//       } catch (e) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text("Error submitting application: $e")),
//         );
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Apply for ${widget.jobTitle}"),
//         iconTheme: IconThemeData(color: Colors.white),
//         backgroundColor: Color(0xFF282d37),
//         actions: [
//           PopupMenuButton<String>(
//             child: Row(
//               children: [
//                 CircleAvatar(
//                   backgroundColor: Color.fromARGB(255, 188, 187, 187),
//                   child: Icon(Icons.person, color: Colors.white),
//                 ),
//                 SizedBox(width: 5),
//                 Text(
//                   "User",
//                   style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(width: 5),
//                 Icon(Icons.arrow_drop_down)
//               ],
//             ),
//             onSelected: (value) {
//               if (value == 'change_password') {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) => UserChangepassword()));
//               } else if (value == 'logout') {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
//               }
//             },
//             itemBuilder: (BuildContext context) => [
//               PopupMenuItem<String>(
//                 enabled: false,
//                 child: Text("User", style: TextStyle(fontWeight: FontWeight.bold)),
//               ),
//               PopupMenuDivider(),
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
//             drawer: Drawer(
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
//                     "User",
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
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => Homescreen()));
//               },
//             ),
//             ExpansionTile(
//               title: Text(
//                 "About us",
//                 style:
//                     TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
//               ),
//               children: [
//                 ListTile(
//                   title: Text(
//                     "About",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.white),
//                   ),
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => About()));
//                   },
//                   contentPadding: EdgeInsets.only(left: 60),
//                 ),
//                 ListTile(
//                   title: Text(
//                     "Our People",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.white),
//                   ),
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => Ourpeople()));
//                   },
//                   contentPadding: EdgeInsets.only(left: 60),
//                 ),
//                 ListTile(
//                   title: Text(
//                     "Mission/Vision",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.white),
//                   ),
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => Mission()));
//                   },
//                   contentPadding: EdgeInsets.only(left: 60),
//                 ),
//                 ListTile(
//                   title: Text(
//                     "Word from Chairman",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.white),
//                   ),
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => WordsFromChairman()));
//                   },
//                   contentPadding: EdgeInsets.only(left: 60),
//                 ),
//               ],
//             ),
//             ListTile(
//               title: Text("Brands",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => Brandspage()));
//               },
//             ),
//             ListTile(
//               title: Text("Media",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => Mediapage()));
//               },
//             ),
//             ListTile(
//               title: Text("Carrier",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => Carreerpage()));
//               },
//             ),
//             ListTile(
//               title: Text("Contact us",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => Contactus()));
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


//import 'dart:nativewrappers/_internal/vm/lib/internal_patch.dart';

import 'package:agthia/User_pages/About.dart';
import 'package:agthia/User_pages/brandspage.dart';
import 'package:agthia/User_pages/carreerpage.dart';
import 'package:agthia/User_pages/contactus.dart';
import 'package:agthia/User_pages/homescreen.dart';
import 'package:agthia/User_pages/mediapage.dart';
import 'package:agthia/User_pages/mission.dart';
import 'package:agthia/User_pages/ourpeople.dart';
import 'package:agthia/User_pages/user_changepassword.dart';
import 'package:agthia/User_pages/words_from_chairman.dart';
import 'package:agthia/backend_pages/backend_new/loginpage.dart';
//import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CarreerApplication extends StatefulWidget {
  final String jobId;
  final String jobTitle;
  
  const CarreerApplication({
    Key? key,
    required this.jobId,
    required this.jobTitle,
  }) : super(key: key);

  @override
  State<CarreerApplication> createState() => _CarreerApplicationState();
}

class _CarreerApplicationState extends State<CarreerApplication> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController qualificationController = TextEditingController();
  File? selectedFile;

  // Future<void> pickFile() async {
  //   FilePickerResult? result = await FilePicker.platform.pickFiles(
  //     type: FileType.custom,
  //     allowedExtensions: ['pdf', 'doc', 'docx'],
  //   );
  //   if (result != null) {
  //     setState(() {
  //       selectedFile = File(result.files.single.path!);
  //     });
  //   }
  // }
// Future<void> pickFile() async {
//   FilePickerResult? result = await FilePicker.platform.pickFiles(
//     type: FileType.custom,
//     allowedExtensions: ['pdf', 'doc', 'docx'],
//   );

//   if (result != null && result.files.isNotEmpty) {
//     // On mobile, use the file path
//     String? filePath = result.files.single.path;
//     if (filePath != null) {
//       setState(() {
//         selectedFile = File(filePath);
//       });
//     } else {
//       // On web, file path is null. Use file bytes.
//       // You can save result.files.single.bytes or process accordingly.
//       // For example:
//       print("File picked on web. Use result.files.single.bytes to process the file.");
//     }
//   }
// }
Future<void> pickFile() async {
  FilePickerResult?result=await FilePicker.platform.pickFiles(
  type:FileType.custom,
  allowedExtensions:['pdf','doc','docx']);
  // FilePickerResult? result = await FilePicker.platform.pickFiles(
  //   type: FileType.custom,
  //   allowedExtensions: ['pdf', 'doc', 'docx'],
  // );
  if (result != null && result.files.isNotEmpty) {
    // On mobile, use the file path:
    String? filePath = result.files.single.path;
    if (filePath != null) {
      setState(() {
        selectedFile = File(filePath);
      });
    } else {
      // On web, filePath is null. Use file bytes.
      print("File picked on web: ${result.files.single.bytes}");
    }
  }
}

  Future<void> submitApplication() async {
    if (_formKey.currentState!.validate()) {
      Map<String, dynamic> applicationData = {
        "jobId": widget.jobId,
        "jobTitle": widget.jobTitle,
        "fullName": fullNameController.text,
        "phone": phoneController.text,
        "email": emailController.text,
        "address": addressController.text,
        "submittedAt": FieldValue.serverTimestamp(),
        "resumeFileName": selectedFile != null ? selectedFile!.path.split('/').last : null,
        "qualification": qualificationController.text,
      };

      try {
        await FirebaseFirestore.instance
            .collection("job_applications")
            .add(applicationData);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Application submitted successfully!")),
        );
        _formKey.currentState!.reset();
        fullNameController.clear();
        phoneController.clear();
        emailController.clear();
        addressController.clear();
        qualificationController.clear();
        setState(() {
          selectedFile = null;
        });
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Error submitting application: $e")),
        );
      }
    }
  }

   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // Function to add user subscription to Firestore
Future<void> subscribeUser() async {
  User? user = _auth.currentUser;

  if (user != null) {
    String userEmail = user.email!.toLowerCase(); // Convert email to lowercase

    try {
      // Reference to the Firestore collection
      CollectionReference subscriptions = _firestore.collection('subscriptions');

      // Check if the user already exists in the 'subscriptions' collection
      QuerySnapshot querySnapshot = await subscriptions
          .where('email', isEqualTo: userEmail)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        // User is already subscribed, do not add again
        print('User is already subscribed.');
      } else {
        // User is not subscribed, add them
        await subscriptions.add({
          'email': userEmail,
          'subscriptionDate': Timestamp.now(),
        });
        print('Subscription successful!');
      }
    } catch (e) {
      print('Error subscribing user: $e');
    }
  } else {
    print('No user logged in');
  }
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         
        title: Center(
          child: Transform.translate(
            offset: Offset(-10.0, 0.0),
            child: Image.asset(
              "asset/logo_agthia.jpg",
              height: 50,
              fit: BoxFit.contain,
            ),
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF282d37),
        // title: Text("Apply for ${widget.jobTitle}"),
       
        actions: [
          PopupMenuButton<String>(
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 188, 187, 187),
                  child: Icon(Icons.person, color: Colors.white),
                ),
                SizedBox(width: 5),
                Text(
                  "User",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5),
                Icon(Icons.arrow_drop_down)
              ],
            ),
            onSelected: (value) {
              if (value == 'change_password') {
                Navigator.push(context, MaterialPageRoute(builder: (context) => UserChangepassword()));
              } else if (value == 'logout') {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
              }
            },
            itemBuilder: (BuildContext context) => [
              PopupMenuItem<String>(
                enabled: false,
                child: Text("User", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              PopupMenuDivider(),
              PopupMenuItem<String>(
                value: 'change_password',
                child: Row(
                  children: [
                    Icon(Icons.lock, color: Colors.black),
                    SizedBox(width: 10),
                    Text("Change Password"),
                  ],
                ),
              ),
              PopupMenuItem<String>(
                value: 'logout',
                child: Row(
                  children: [
                    Icon(Icons.logout, color: Colors.black),
                    SizedBox(width: 10),
                    Text("Logout"),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(width: 10),
        ],
      ),
      drawer: Drawer(
        width: 200,
        backgroundColor: Color(0xFF282d37),
        child: ListView(
          padding: EdgeInsets.all(12),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF282d37)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person),
                  ),
                  SizedBox(height: 7),
                  Text("User", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                ],
              ),
            ),
            ListTile(
              title: Text("Home", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Homescreen()));
              },
            ),
            ExpansionTile(
              title: Text("About us", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
              children: [
                ListTile(
                  title: Text("About", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => About()));
                  },
                  contentPadding: EdgeInsets.only(left: 60),
                ),
                ListTile(
                  title: Text("Our People", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Ourpeople()));
                  },
                  contentPadding: EdgeInsets.only(left: 60),
                ),
                ListTile(
                  title: Text("Mission/Vision", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Mission()));
                  },
                  contentPadding: EdgeInsets.only(left: 60),
                ),
                ListTile(
                  title: Text("Word from Chairman", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => WordsFromChairman()));
                  },
                  contentPadding: EdgeInsets.only(left: 60),
                ),
              ],
            ),
            ListTile(
              title: Text("Brands", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Brandspage()));
              },
            ),
            ListTile(
              title: Text("Media", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Mediapage()));
              },
            ),
            ListTile(
              title: Text("Carrier", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Carreerpage()));
              },
            ),
            ListTile(
              title: Text("Contact us", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Contactus()));
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // Header Image
            SizedBox(
              height: 300,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      "asset/our_people.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            // Application Form Container
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
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
              width: 500,
              height: 600,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Center(child: Text("Apply for ${widget.jobTitle}",style: TextStyle(fontWeight: FontWeight.bold),)),
                        Center(
                          child: Text(
                            "Job Application Form",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                          ),
                        ),
                        Center(child: Text("Apply for ${widget.jobTitle}",style: TextStyle(fontWeight: FontWeight.bold),)),
                        SizedBox(height: 10),
                        Divider(color: Colors.orange),
                        SizedBox(height: 10),
                        TextFormField(
                          controller: fullNameController,
                          decoration: InputDecoration(labelText: "Full Name"),
                          validator: (value) {
                            if (value!.isEmpty) return "Please enter your full name";
                            return null;
                          },
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          controller: phoneController,
                          decoration: InputDecoration(labelText: "Phone"),
                          keyboardType: TextInputType.phone,
                          validator: (value) {
                            if (value!.isEmpty) return "Please enter your phone number";
                            return null;
                          },
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(labelText: "Email"),
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value!.isEmpty) return "Please enter your email";
                            return null;
                          },
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          controller: addressController,
                          decoration: InputDecoration(labelText: "Address"),
                          //maxLines: 3,
                          validator: (value) {
                            if (value!.isEmpty) return "Please enter your address";
                            return null;
                          },
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          controller: qualificationController,
                          decoration: InputDecoration(labelText: "Qualification"),
                          //maxLines: 3,
                          validator: (value) {
                            if (value!.isEmpty) return "Please enter your Qualification";
                            return null;
                          },
                        ),
                        SizedBox(height: 10),
                        // SizedBox(
                        //   width: 500,
                        //   child: Text("Resume:", style: TextStyle(fontWeight: FontWeight.bold)),
                        // ),
                        SizedBox(height: 10),
                        // Row(
                        //   crossAxisAlignment: CrossAxisAlignment.start,
                        //   children: [
                        //     ElevatedButton(
                        //       onPressed: pickFile,
                        //       child: Text("Choose File"),
                        //     ),
                        //     if (selectedFile != null)
                        //       Padding(
                        //         padding: EdgeInsets.only(top: 5),
                        //         child: Text(
                        //           "Selected File: ${selectedFile!.path.split('/').last}",
                        //           style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                        //         ),
                        //       ),
                        //   ],
                        // ),
                        SizedBox(height: 30),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: submitApplication,
                                child: Text(
                                  "Submit",
                                  style: TextStyle(color: Colors.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                    shape: BeveledRectangleBorder(),
                                    backgroundColor: Colors.green),
                              ),
                              SizedBox(width: 30),
                              ElevatedButton(
                                onPressed: () {
                                  _formKey.currentState!.reset();
                                  fullNameController.clear();
                                  phoneController.clear();
                                  emailController.clear();
                                  addressController.clear();
                                  setState(() {
                                    selectedFile = null;
                                  });
                                },
                                child: Text(
                                  "Cancel",
                                  style: TextStyle(color: Colors.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                    shape: BeveledRectangleBorder(),
                                    backgroundColor: Colors.red),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Footer
            Container(
              color: Colors.black,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Divider(color: Colors.white),
                  SizedBox(height: 10),
                  Text(
                    "CONTACT",
                    style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),
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
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  // Container(
                  //   decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                  //   width: MediaQuery.of(context).size.width / 1.1,
                  //   height: 40,
                  //   child: ElevatedButton(
                  //     style: ElevatedButton.styleFrom(
                  //         minimumSize: Size(MediaQuery.of(context).size.width / 1.1, 40),
                  //         shape: RoundedRectangleBorder()),
                  //     onPressed: () {},
                  //     child: Text("Subscribe", style: TextStyle(color: Colors.black)),
                  //   ),
                  // ),
                  Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.red)),
                    width: MediaQuery.of(context).size.width / 1.1,
                    height: 40,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(
                                MediaQuery.of(context).size.width / 1.1, 40),
                            shape: RoundedRectangleBorder()),
                        onPressed: () async {
           
            await subscribeUser();
            
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Subscription Successful")),
            );
          },
                        child: Text(
                          "Subscribe",
                          style: TextStyle(color: Colors.black),
                        )),
                  ),
                  SizedBox(height: 15),
                  Text("22260445",
                      style: TextStyle(color: Colors.pink[200], fontWeight: FontWeight.bold)),
                  Text("INFO@AGTHIA-FOOD.COM.KW", style: TextStyle(color: Colors.pink[200])),
                  SizedBox(height: 10),
                  Divider(color: Colors.white),
                  SizedBox(height: 5),
                  Icon(Icons.copyright, color: Colors.white),
                  Text("Copyright", style: TextStyle(color: Colors.white)),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
