// import 'package:agthia/Restaurant_pages/Restaurant_changepassword.dart';
// import 'package:agthia/Restaurant_pages/Restaurant_viewdelivery.dart';
// import 'package:agthia/Restaurant_pages/Restaurant_vieworders.dart';
// import 'package:agthia/Restaurant_pages/delivery_allocation.dart';
// import 'package:agthia/Restaurant_pages/restaurant_home.dart';
// import 'package:agthia/login.dart';
// import 'package:flutter/material.dart';

// class AddRestaurant extends StatefulWidget {
//   const AddRestaurant({super.key});

//   @override
//   State<AddRestaurant> createState() => _AddRestaurantState();
// }

// class _AddRestaurantState extends State<AddRestaurant> {
//   final _formKey = GlobalKey<FormState>();
//   String restaurantStatus = "Active";
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController registerNumberController =
//       TextEditingController();
//   final TextEditingController seatingCapacityController =
//       TextEditingController();
//   String? selectedBrand;
//   final List<String> brands = [
//     "Beefbar",
//     "Dinand",
//     "Ferdi",
//     "Novikov",
//     "Philippe",
//     "Bu Masoud",
//     "Burger Inn",
//     "Fatayer Al Tayer",
//     "Namlet"
//   ];

//     void _submitForm() {
//     if (_formKey.currentState!.validate()) {
//       // Process the form submission
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Restaurant added successfully!')),
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
//                   "Restaurant",
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
//                         builder: (context) => RestaurantChangepassword()));
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
//                   "Restaurant",
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
//                     "Restaurant",
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
//                     MaterialPageRoute(builder: (context) => RestaurantHome()));
//               },
//             ),
//             ListTile(
//               title: Text("Add Restaurant",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => AddRestaurant()));
//               },
//             ),
//             ListTile(
//               title: Text("View Orders",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => RestaurantVieworders()));
//               },
//             ),
//             ListTile(
//               title: Text("View Delivery Personnel",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => RestaurantViewdelivery()));
//               },
//             ),
//             ListTile(
//               title: Text("Allocate Delivery Personnel",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => DeliveryAllocation()));
//               },
//             ),
//           ],
//         ),
//       ),
//             body: Container(
        
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
//                       child: Text("Add Restaurant",
//                           style: TextStyle(
//                               fontSize: 22, fontWeight: FontWeight.bold,))),
//                   SizedBox(height: 20),
              
//                   // Restaurant Name
//                   Center(
//                     child: SizedBox(
//                       width: 600,
//                       child: TextFormField(
//                         controller: nameController,
//                         validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter the restaurant name';
//                     }
//                     return null;
//                   },
//                         decoration: InputDecoration(
//                           labelText: "Restaurant Name",labelStyle: TextStyle(),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(8),
//                             borderSide: BorderSide(color: Colors.white,width: 10),
                            
//                           ),                                         
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 20),
              
//                   // Register Number
//                   Center(
//                     child: SizedBox(
//                       width: 600,
//                       child: TextFormField(
//                         controller: registerNumberController,
//                         validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter the restaurant register number';
//                     }
//                     return null;
//                   },
//                         decoration: InputDecoration(
//                           labelText: "Register Number",labelStyle: TextStyle(),
//                           border: OutlineInputBorder(),
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 20),
              
//                   SizedBox(height: 20),
              
//                   // Restaurant Status
//                   Center(child: Text("Restaurant Status",style: TextStyle(),)),
//                   Center(
//                     child: SizedBox(
//                       width: 200,
//                       child: Center(
//                         child: Row(
//                           children: [
//                             Center(
//                               child: Radio(
//                                 value: "Active",
//                                 groupValue: restaurantStatus,
//                                 onChanged: (value) {
//                                   setState(() {
//                                     restaurantStatus = value.toString();
//                                   });
//                                 },
//                               ),
//                             ),
//                             Center(child: Text("Active",style: TextStyle(),)),
//                             SizedBox(width: 20),
//                             Center(
//                               child: Radio(
//                                 value: "Inactive",
//                                 groupValue: restaurantStatus,
//                                 onChanged: (value) {
//                                   setState(() {
//                                     restaurantStatus = value.toString();
//                                   });
//                                 },
//                               ),
//                             ),
//                             Center(child: Text("Inactive",style: TextStyle(),)),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   // Brands Dropdown
//                   SizedBox(
//                       width: 1000, child: Center(child: Text("Select Brand",style:  TextStyle(),))),
//                   SizedBox(height: 10),
//                   Center(
//                     child: SizedBox(
//                       width: 600,
//                       child: DropdownButtonFormField<String>(
//                         value: selectedBrand,
//                         items: brands.map((brand) {
//                           return DropdownMenuItem<String>(
//                             value: brand,
//                             child: Text(brand),
//                           );
//                         }).toList(),
//                         onChanged: (value) {
//                           setState(() {
//                             selectedBrand = value;
//                           });
//                         },
//                         validator: (value) {
//                     if (value == null) {
//                       return 'Please select a brand';
//                     }
//                     return null;
//                   },
//                         decoration: InputDecoration(
//                           border: OutlineInputBorder(),
//                           labelText: "Brand",labelStyle: TextStyle(),
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 20),
              
//                   // Seating Capacity
//                   Center(
//                     child: SizedBox(
//                       width: 600,
//                       child: Center(
//                         child: TextFormField(
//                           controller: seatingCapacityController,
//                           validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter the seating capacity';
//                     }
//                     if (int.tryParse(value) == null) {
//                       return 'Please enter a valid number';
//                     }
//                     return null;
//                   },
//                           keyboardType: TextInputType.number,
//                           decoration: InputDecoration(
//                             labelText: "Seating Capacity",labelStyle: TextStyle(),
//                             border: OutlineInputBorder(),
//                           ),
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
//                       child: Text("ADD RESTAURANT",
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


//import 'dart:io';
// import 'dart:typed_data';

// import 'package:agthia/Restaurant_pages/Restaurant_changepassword.dart';
// import 'package:agthia/Restaurant_pages/Restaurant_viewdelivery.dart';
// import 'package:agthia/Restaurant_pages/Restaurant_vieworders.dart';
// import 'package:agthia/Restaurant_pages/delivery_allocation.dart';
// import 'package:agthia/Restaurant_pages/restaurant_home.dart';
// import 'package:agthia/backend_pages/backend_new/loginpage.dart';
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// // import 'package:image_picker/image_picker.dart';
// // import 'package:image_picker_web/image_picker_web.dart';

// class AddRestaurant extends StatefulWidget {
//   const AddRestaurant({super.key});

//   @override
//   State<AddRestaurant> createState() => _AddRestaurantState();
// }

// class _AddRestaurantState extends State<AddRestaurant> {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController brandTypeController = TextEditingController();
//   final TextEditingController reservationUrlController =
//       TextEditingController();
//   final TextEditingController instagramUrlController = TextEditingController();
//   final TextEditingController facebookUrlController = TextEditingController();
//   final TextEditingController twitterUrlController = TextEditingController();
//   final TextEditingController description1Controller = TextEditingController();
//   final TextEditingController description2Controller = TextEditingController();
//   final TextEditingController registerNoController = TextEditingController();
//   final TextEditingController seatingCapacityController =
//       TextEditingController();

//   Uint8List? logoBytes;
//   Uint8List? imageBytes;
//   String? logoUrl;
//   String? imageUrl;

//   final CollectionReference restaurants =
//       FirebaseFirestore.instance.collection('restaurants');

//   Future<String?> uploadImage(Uint8List imageData, String path) async {
//     try {
//       Reference storageRef = FirebaseStorage.instance.ref().child(path);
//       UploadTask uploadTask = storageRef.putData(imageData);
//       TaskSnapshot taskSnapshot = await uploadTask;
//       return await taskSnapshot.ref.getDownloadURL();
//     } catch (e) {
//       print("Error uploading image: $e");
//       return null;
//     }
//   }

//   Future<void> addRestaurant() async {
//     // if (logoBytes != null) {
//     //   logoUrl = await uploadImage(logoBytes!, 'restaurant_logos/${DateTime.now().millisecondsSinceEpoch}');
//     // }
//     // if (imageBytes != null) {
//     //   imageUrl = await uploadImage(imageBytes!, 'restaurant_images/${DateTime.now().millisecondsSinceEpoch}');
//     // }

//     await restaurants.add({
//       'name': nameController.text,
//       // 'logoUrl': logoUrl ?? '',
//       // 'imageUrl': imageUrl ?? '',
//       'brandType': brandTypeController.text,
//       'reservationUrl': reservationUrlController.text,
//       'instagramUrl': instagramUrlController.text,
//       'facebookUrl': facebookUrlController.text,
//       'twitterUrl': twitterUrlController.text,
//       'description1': description1Controller.text,
//       'description2': description2Controller.text,
//       'registerNo': registerNoController.text,
//       'seatingCapacity': int.tryParse(seatingCapacityController.text) ?? 0,
//       'status': 'pending',
//       'approvedBy': '',
//       'createdAt': FieldValue.serverTimestamp(),
//       'updatedAt': FieldValue.serverTimestamp(),
//     });

//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text('Restaurant added, awaiting admin approval')),
//     );

//     setState(() {
//       logoBytes = null;
//       imageBytes = null;
//     });

//     nameController.clear();
//     brandTypeController.clear();
//     reservationUrlController.clear();
//     instagramUrlController.clear();
//     facebookUrlController.clear();
//     twitterUrlController.clear();
//     description1Controller.clear();
//     description2Controller.clear();
//     registerNoController.clear();
//     seatingCapacityController.clear();
//   }

//   // Future<void> pickImage(bool isLogo) async {
//   //   Uint8List? bytes = await ImagePickerWeb.getImageAsBytes();
//   //   if (bytes != null) {
//   //     setState(() {
//   //       if (isLogo) {
//   //         logoBytes = bytes;
//   //       } else {
//   //         imageBytes = bytes;
//   //       }
//   //     });
//   //   }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         iconTheme: IconThemeData(color: Colors.white),
//         //leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.white,)),
//         title: Center(
//           child: Transform.translate(
//             offset: Offset(12.0, 0.0),
//             child: Image.asset(
//               'asset/logo_agthia.jpg',
//               height: 43, // Adjust height based on your design
//               fit: BoxFit.contain, // Ensures the image fits well
//             ),
//           ),
//         ),
//         backgroundColor: Color(0xFF282d37),
//         actions: [
//           PopupMenuButton<String>(
//       child: Row(
//               children: [
//                 CircleAvatar(
//                   backgroundColor: const Color.fromARGB(255, 188, 187, 187),
//                   child: Icon(Icons.person, color: Colors.white)), // Profile Icon
//                 SizedBox(width: 5),
//                 Text(
//                   "RESTAURANT",
//                   style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(width: 5),
//                 Icon(Icons.arrow_drop_down)
//               ],
//             ),
//             onSelected: (value) {
//               if (value == 'change_password') {
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>RestaurantChangepassword()));
//                 // Navigate to change password screen
//               } else if (value == 'logout') {
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
//                 // Perform logout action
//               }
//             },
//             itemBuilder: (BuildContext context) => [
//               // Title Item (Non-clickable)
//               PopupMenuItem<String>(
//                 enabled: false,
//                 child: Text(
//                   "Restaurant",
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
//       backgroundColor: const Color.fromARGB(255, 208, 217, 224),
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
//                     "Restaurant",
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
//                     MaterialPageRoute(builder: (context) => RestaurantHome()));
//               },
//             ),
//             ListTile(
//               title: Text("Add Restaurant",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => AddRestaurant()));
//               },
//             ),
//             ListTile(
//               title: Text("View Orders",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => RestaurantVieworders()));
//               },
//             ),
//             ListTile(
//               title: Text("View Delivery Personnel",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => RestaurantViewdelivery()));
//               },
//             ),
//             ListTile(
//               title: Text("Allocate Delivery Personnel",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => DeliveryAllocation()));
//               },
//             ),
//           ],
//         ),
//       ),

//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Padding(
//           padding: const EdgeInsets.all(15),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "Add Restaurant",
//                 style: TextStyle(
//                     fontFamily: 'Timesnewroman',
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               //   Text("Upload logo",style: TextStyle(fontSize: 16),),
//               //    ElevatedButton(
//               //   onPressed: () => pickImage(true),
//               //   child: Text("Select Logo"),
//               // ),
//               // logoBytes != null
//               //     ? Image.memory(logoBytes!, height: 100)
//               //     : Container(),
//               //   IconButton(
//               //   icon: Icon(Icons.image),
//               //   onPressed: () => pickImage(ImageSource.gallery, true),
//               // ),
//               // logoFile != null ? Image.file(logoFile!, height: 100) : Container(),
//               //    GestureDetector(
//               //   onTap: () => pickImage(true),
//               //   child: Container(
//               //     height: 100,
//               //     decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1)),
//               //     child: _logoImage != null
//               //         ? Image.file(_logoImage!, fit: BoxFit.cover)
//               //         : Center(child: Icon(Icons.camera_alt, size: 40)),
//               //   ),
//               // ),
//               // Container(
//               //   height: 50,
//               //   decoration: BoxDecoration(
//               //       border: Border.all(color: Colors.grey,width: 1)
//               //   ),
//               //   child: TextFormField(
//               //     decoration: InputDecoration(
//               //         labelText: '',
//               //         border: InputBorder.none,
//               //         contentPadding: EdgeInsets.all(5)
//               //     ),
//               //   ),
//               // ),SizedBox(height: 20,),
//               //Text("Upload image",style: TextStyle(fontSize: 16)),
//               // Container(
//               //   height: 50,
//               //   decoration: BoxDecoration(
//               //       border: Border.all(color: Colors.grey,width: 1)
//               //   ),
//               //   child: TextFormField(
//               //     decoration: InputDecoration(
//               //         labelText: '',
//               //         border: InputBorder.none,
//               //         contentPadding: EdgeInsets.all(5)
//               //     ),
//               //   ),
//               // ),
//               //   GestureDetector(
//               //   onTap: () => pickImage(false),
//               //   child: Container(
//               //     height: 100,
//               //     decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1)),
//               //     child: _restaurantImage != null
//               //         ? Image.file(_restaurantImage!, fit: BoxFit.cover)
//               //         : Center(child: Icon(Icons.camera_alt, size: 40)),
//               //   ),
//               // ),
//               // IconButton(
//               //   icon: Icon(Icons.image),
//               //   onPressed: () => pickImage(ImageSource.gallery, false),
//               // ),
//               // imageFile != null ? Image.file(imageFile!, height: 100) : Container(),
//               // ElevatedButton(
//               //   onPressed: () => pickImage(false),
//               //   child: Text("Select Image"),
//               // ),
//               // imageBytes != null
//               //     ? Image.memory(imageBytes!, height: 100)
//               //     : Container(),
//               SizedBox(
//                 height: 20,
//               ),
//               Text("Name", style: TextStyle(fontSize: 16)),
//               Container(
//                 height: 50,
//                 decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey, width: 1)),
//                 child: TextFormField(
//                   controller: nameController,
//                   decoration: InputDecoration(
//                       labelText: '',
//                       border: InputBorder.none,
//                       contentPadding: EdgeInsets.all(5)),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Text("Brand Type", style: TextStyle(fontSize: 16)),
//               Container(
//                 height: 50,
//                 decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey, width: 1)),
//                 child: TextFormField(
//                   controller: brandTypeController,
//                   decoration: InputDecoration(
//                       labelText: '',
//                       border: InputBorder.none,
//                       contentPadding: EdgeInsets.all(5)),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Text("Register No:", style: TextStyle(fontSize: 16)),
//               Container(
//                 height: 50,
//                 decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey, width: 1)),
//                 child: TextFormField(
//                   controller: registerNoController,
//                   decoration: InputDecoration(
//                       labelText: '',
//                       border: InputBorder.none,
//                       contentPadding: EdgeInsets.all(5)),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Text("Seat Capacity", style: TextStyle(fontSize: 16)),
//               Container(
//                 height: 50,
//                 decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey, width: 1)),
//                 child: TextFormField(
//                   controller: seatingCapacityController,
//                   decoration: InputDecoration(
//                       labelText: '',
//                       border: InputBorder.none,
//                       contentPadding: EdgeInsets.all(5)),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Text("Reservation URL", style: TextStyle(fontSize: 16)),
//               Container(
//                 height: 50,
//                 decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey, width: 1)),
//                 child: TextFormField(
//                   controller: reservationUrlController,
//                   decoration: InputDecoration(
//                       labelText: '',
//                       border: InputBorder.none,
//                       contentPadding: EdgeInsets.all(5)),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Text("Instgram URL", style: TextStyle(fontSize: 16)),
//               Container(
//                 height: 50,
//                 decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey, width: 1)),
//                 child: TextFormField(
//                   controller: instagramUrlController,
//                   decoration: InputDecoration(
//                       labelText: '',
//                       border: InputBorder.none,
//                       contentPadding: EdgeInsets.all(5)),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Text("Facebook URL", style: TextStyle(fontSize: 16)),
//               Container(
//                 height: 50,
//                 decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey, width: 1)),
//                 child: TextFormField(
//                   controller: facebookUrlController,
//                   decoration: InputDecoration(
//                       labelText: '',
//                       border: InputBorder.none,
//                       contentPadding: EdgeInsets.all(5)),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Text("Twitter URL", style: TextStyle(fontSize: 16)),
//               Container(
//                 height: 50,
//                 decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey, width: 1)),
//                 child: TextFormField(
//                   controller: twitterUrlController,
//                   decoration: InputDecoration(
//                       labelText: '',
//                       border: InputBorder.none,
//                       contentPadding: EdgeInsets.all(5)),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Text("Description (first paragraph)",
//                   style: TextStyle(fontSize: 16)),
//               Container(
//                 height: 150,
//                 decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey, width: 1)),
//                 child: TextFormField(
//                   controller: description1Controller,
//                   decoration: InputDecoration(
//                       labelText: '',
//                       border: InputBorder.none,
//                       contentPadding: EdgeInsets.all(5)),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Text("Description (second paragraph)",
//                   style: TextStyle(fontSize: 16)),
//               Container(
//                 height: 150,
//                 decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey, width: 1)),
//                 child: TextFormField(
//                   controller: description2Controller,
//                   decoration: InputDecoration(
//                       labelText: '',
//                       border: InputBorder.none,
//                       contentPadding: EdgeInsets.all(5)),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Center(
//                     child: ElevatedButton(
//                       onPressed: () {
//                         addRestaurant();
//                         // Handle form submission
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.green,
//                         padding:
//                             EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                       ),
//                       child: Text("Submit for Approval",
//                           style: TextStyle(fontSize: 18, color: Colors.white)),
//                     ),
//                   ),

              
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


// import 'dart:typed_data';
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:image_picker_web/image_picker_web.dart';

// class AddRestaurant extends StatefulWidget {
//   const AddRestaurant({super.key});

//   @override
//   State<AddRestaurant> createState() => _AddRestaurantState();
// }

// class _AddRestaurantState extends State<AddRestaurant> {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController brandTypeController = TextEditingController();
//   final TextEditingController reservationUrlController = TextEditingController();
//   final TextEditingController instagramUrlController = TextEditingController();
//   final TextEditingController facebookUrlController = TextEditingController();
//   final TextEditingController twitterUrlController = TextEditingController();
//   final TextEditingController description1Controller = TextEditingController();
//   final TextEditingController description2Controller = TextEditingController();
//   final TextEditingController registerNoController = TextEditingController();
//   final TextEditingController seatingCapacityController = TextEditingController();
//   final TextEditingController menuItemsController = TextEditingController();
//   final TextEditingController locationsController = TextEditingController();

//   Uint8List? logoBytes;
//   Uint8List? imageBytes;
//   String? logoUrl;
//   String? imageUrl;

//   final CollectionReference restaurants = FirebaseFirestore.instance.collection('restaurants');

//   // Upload image to Firebase Storage
//   Future<String?> uploadImage(Uint8List imageData, String path) async {
//     try {
//       Reference storageRef = FirebaseStorage.instance.ref().child(path);
//       UploadTask uploadTask = storageRef.putData(imageData);
//       TaskSnapshot taskSnapshot = await uploadTask;
//       return await taskSnapshot.ref.getDownloadURL();
//     } catch (e) {
//       print("Error uploading image: $e");
//       return null;
//     }
//   }

//   // Add a new restaurant
//   Future<void> addRestaurant() async {
//     try {
//       // Upload images if they are selected
//       String? uploadedLogoUrl = logoBytes != null
//           ? await uploadImage(logoBytes!, 'restaurants/logos/${nameController.text}.png')
//           : null;
//       String? uploadedImageUrl = imageBytes != null
//           ? await uploadImage(imageBytes!, 'restaurants/images/${nameController.text}.png')
//           : null;

//       // Add restaurant to Firestore
//       DocumentReference docRef = await restaurants.add({
//         'name': nameController.text,
//         'brandType': brandTypeController.text,
//         'reservationUrl': reservationUrlController.text,
//         'instagramUrl': instagramUrlController.text,
//         'facebookUrl': facebookUrlController.text,
//         'twitterUrl': twitterUrlController.text,
//         'description1': description1Controller.text,
//         'description2': description2Controller.text,
//         'registerNo': registerNoController.text,
//         'seatingCapacity': int.tryParse(seatingCapacityController.text) ?? 0,
//         'menuItems': menuItemsController.text.split(','),
//         'locations': locationsController.text.split(','),
//         'status': 'pending',
//         'approvedBy': '',
//         'createdAt': FieldValue.serverTimestamp(),
//         'updatedAt': FieldValue.serverTimestamp(),
//         'logoUrl': uploadedLogoUrl ?? '',
//         'imageUrl': uploadedImageUrl ?? '',
//       });

//       // Store generated restaurant ID inside the document
//       await docRef.update({'restaurantID': docRef.id});

//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Restaurant added successfully! Awaiting approval.')),
//       );

//       // Reset form fields
//       setState(() {
//         logoBytes = null;
//         imageBytes = null;
//       });

//       nameController.clear();
//       brandTypeController.clear();
//       reservationUrlController.clear();
//       instagramUrlController.clear();
//       facebookUrlController.clear();
//       twitterUrlController.clear();
//       description1Controller.clear();
//       description2Controller.clear();
//       registerNoController.clear();
//       seatingCapacityController.clear();
//       menuItemsController.clear();
//       locationsController.clear();
//     } catch (e) {
//       print("Error adding restaurant: $e");
//     }
//   }

//   // Pick an image (logo or main image)
//   Future<void> pickImage(bool isLogo) async {
//     Uint8List? bytes = await ImagePickerWeb.getImageAsBytes();
//     if (bytes != null) {
//       setState(() {
//         if (isLogo) {
//           logoBytes = bytes;
//         } else {
//           imageBytes = bytes;
//         }
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         iconTheme: IconThemeData(color: Colors.white),
//         title: Center(
//           child: Transform.translate(
//             offset: Offset(12.0, 0.0),
//             child: Image.asset(
//               'asset/logo_agthia.jpg',
//               height: 43,
//               fit: BoxFit.contain,
//             ),
//           ),
//         ),
//         backgroundColor: Color(0xFF282d37),
//         actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(15),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text("Add Restaurant", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//             SizedBox(height: 20),

//             buildTextField("Name", nameController),
//             buildTextField("Brand Type", brandTypeController),
//             buildTextField("Register No", registerNoController),
//             buildTextField("Seat Capacity", seatingCapacityController),
//             buildTextField("Reservation URL", reservationUrlController),
//             buildTextField("Instagram URL", instagramUrlController),
//             buildTextField("Facebook URL", facebookUrlController),
//             buildTextField("Twitter URL", twitterUrlController),
//             buildTextField("Description (First Paragraph)", description1Controller, isMultiline: true),
//             buildTextField("Description (Second Paragraph)", description2Controller, isMultiline: true),
//             buildTextField("Menu Items (comma-separated)", menuItemsController),
//             buildTextField("Locations (comma-separated)", locationsController),

//             SizedBox(height: 20),

//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 ElevatedButton(
//                   onPressed: () => pickImage(true),
//                   child: Text("Upload Logo"),
//                 ),
//                 logoBytes != null ? Icon(Icons.check, color: Colors.green) : SizedBox(),
//               ],
//             ),
//             SizedBox(height: 10),

//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 ElevatedButton(
//                   onPressed: () => pickImage(false),
//                   child: Text("Upload Main Image"),
//                 ),
//                 imageBytes != null ? Icon(Icons.check, color: Colors.green) : SizedBox(),
//               ],
//             ),
//             SizedBox(height: 20),

//             ElevatedButton(
//               onPressed: addRestaurant,
//               child: Text('Submit for Approval'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildTextField(String label, TextEditingController controller, {bool isMultiline = false}) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(label, style: TextStyle(fontSize: 16)),
//         SizedBox(height: 5),
//         Container(
//           decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1)),
//           child: TextFormField(
//             controller: controller,
//             maxLines: isMultiline ? 3 : 1,
//             decoration: InputDecoration(border: InputBorder.none, contentPadding: EdgeInsets.all(8)),
//           ),
//         ),
//         SizedBox(height: 20),
//       ],
//     );
//   }
// }


// import 'dart:typed_data';
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// //import 'package:image_picker_web/image_picker_web.dart';

// class AddRestaurant extends StatefulWidget {
//   const AddRestaurant({super.key});

//   @override
//   State<AddRestaurant> createState() => _AddRestaurantState();
// }

// class _AddRestaurantState extends State<AddRestaurant> {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController brandTypeController = TextEditingController();
//   final TextEditingController reservationUrlController = TextEditingController();
//   final TextEditingController instagramUrlController = TextEditingController();
//   final TextEditingController facebookUrlController = TextEditingController();
//   final TextEditingController twitterUrlController = TextEditingController();
//   final TextEditingController description1Controller = TextEditingController();
//   final TextEditingController description2Controller = TextEditingController();
//   final TextEditingController registerNoController = TextEditingController();
//   final TextEditingController seatingCapacityController = TextEditingController();
//   final TextEditingController menuItemsController = TextEditingController();
//   final TextEditingController locationsController = TextEditingController();

//   Uint8List? logoBytes;
//   Uint8List? imageBytes;
//   String? logoUrl;
//   String? imageUrl;
//   bool isUploading = false;

//   final CollectionReference restaurants = FirebaseFirestore.instance.collection('restaurants');

//   // Upload image to Firebase Storage
//   Future<String?> uploadImage(Uint8List imageData, String path) async {
//     try {
//       Reference storageRef = FirebaseStorage.instance.ref().child(path);
//       UploadTask uploadTask = storageRef.putData(imageData);
//       TaskSnapshot taskSnapshot = await uploadTask;
//       return await taskSnapshot.ref.getDownloadURL();
//     } catch (e) {
//       showSnackbar("Error uploading image: $e");
//       return null;
//     }
//   }

//   // Show Snackbar
//   void showSnackbar(String message) {
//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
//   }

//   // Validate form before submitting
//   bool validateForm() {
//     if (nameController.text.isEmpty ||
//         brandTypeController.text.isEmpty ||
//         registerNoController.text.isEmpty ||
//         seatingCapacityController.text.isEmpty) {
//       showSnackbar("Please fill in all required fields.");
//       return false;
//     }
//     return true;
//   }

//   // Add a new restaurant
//   Future<void> addRestaurant() async {
//     if (!validateForm()) return;

//     setState(() => isUploading = true);

//     try {
//       // Upload images if selected
//       String? uploadedLogoUrl = logoBytes != null
//           ? await uploadImage(logoBytes!, 'restaurants/logos/${nameController.text}.png')
//           : null;
//       String? uploadedImageUrl = imageBytes != null
//           ? await uploadImage(imageBytes!, 'restaurants/images/${nameController.text}.png')
//           : null;

//       // Add restaurant to Firestore
//       DocumentReference docRef = await restaurants.add({
//         'name': nameController.text,
//         'brandType': brandTypeController.text,
//         'reservationUrl': reservationUrlController.text,
//         'instagramUrl': instagramUrlController.text,
//         'facebookUrl': facebookUrlController.text,
//         'twitterUrl': twitterUrlController.text,
//         'description1': description1Controller.text,
//         'description2': description2Controller.text,
//         'registerNo': registerNoController.text,
//         'seatingCapacity': int.tryParse(seatingCapacityController.text) ?? 0,
//         'menuItems': menuItemsController.text.split(','),
//         'locations': locationsController.text.split(','),
//         'status': 'pending',
//         'approvedBy': '',
//         'createdAt': FieldValue.serverTimestamp(),
//         'updatedAt': FieldValue.serverTimestamp(),
//         'logoUrl': uploadedLogoUrl ?? '',
//         'imageUrl': uploadedImageUrl ?? '',
//       });

//       // Store generated restaurant ID inside the document
//       await docRef.update({'restaurantID': docRef.id});

//       showSnackbar('Restaurant added successfully! Awaiting approval.');

//       // Reset form fields
//       setState(() {
//         logoBytes = null;
//         imageBytes = null;
//         isUploading = false;
//       });

//       nameController.clear();
//       brandTypeController.clear();
//       reservationUrlController.clear();
//       instagramUrlController.clear();
//       facebookUrlController.clear();
//       twitterUrlController.clear();
//       description1Controller.clear();
//       description2Controller.clear();
//       registerNoController.clear();
//       seatingCapacityController.clear();
//       menuItemsController.clear();
//       locationsController.clear();
//     } catch (e) {
//       showSnackbar("Error adding restaurant: $e");
//     } finally {
//       setState(() => isUploading = false);
//     }
//   }

//   // Pick an image (logo or main image)
//   // Future<void> pickImage(bool isLogo) async {
//   //   Uint8List? bytes = await ImagePickerWeb.getImageAsBytes();
//   //   if (bytes != null) {
//   //     setState(() {
//   //       if (isLogo) {
//   //         logoBytes = bytes;
//   //       } else {
//   //         imageBytes = bytes;
//   //       }
//   //     });
//   //   }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         iconTheme: IconThemeData(color: Colors.white),
//         title: Center(
//           child: Image.asset(
//             'asset/logo_agthia.jpg',
//             height: 43,
//             fit: BoxFit.contain,
//           ),
//         ),
//         backgroundColor: Color(0xFF282d37),
//         actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
//       ),
//       backgroundColor: const Color.fromARGB(255, 213, 220, 226),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(15),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text("Add Restaurant", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//             SizedBox(height: 20),

//             buildTextField("Name *", nameController),
//             buildTextField("Brand Type *", brandTypeController),
//             buildTextField("Register No *", registerNoController),
//             buildTextField("Seat Capacity *", seatingCapacityController),
//             buildTextField("Reservation URL", reservationUrlController),
//             buildTextField("Instagram URL", instagramUrlController),
//             buildTextField("Facebook URL", facebookUrlController),
//             buildTextField("Twitter URL", twitterUrlController),
//             buildTextField("Description (First Paragraph)", description1Controller, isMultiline: true),
//             buildTextField("Description (Second Paragraph)", description2Controller, isMultiline: true),
//             buildTextField("Menu Items (comma-separated) *", menuItemsController),
//             buildTextField("Locations *", locationsController),

//             SizedBox(height: 20),

//             // buildImagePicker("Upload Logo", () => pickImage(true), logoBytes),
//             // buildImagePicker("Upload Main Image", () => pickImage(false), imageBytes),

//             SizedBox(height: 20),

//             // Center(
//             //   child: ElevatedButton(
//             //     onPressed: isUploading ? null : addRestaurant,
//             //     child: isUploading ? CircularProgressIndicator() : Text('Submit for Approval'),
//             //   ),
//             // ),
//             Center(
//   child: ElevatedButton(
//     onPressed: isUploading ? null : addRestaurant,
//     style: ElevatedButton.styleFrom(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10), // Rounded corners
//       ),
//       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15), // Button padding
//       elevation: 5, // Adds shadow effect
//       backgroundColor: Colors.green, // Change button color
//     ),
//     child: isUploading
//         ? SizedBox(
//             width: 24,
//             height: 24,
//             child: CircularProgressIndicator(
//               strokeWidth: 3,
//               color: Colors.white,
//             ),
//           )
//         : Text(
//             'Submit for Approval',
//             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
//           ),
//   ),
// ),

//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildTextField(String label, TextEditingController controller, {bool isMultiline = false}) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 20),
//       child: TextFormField(
//         controller: controller,
//         maxLines: isMultiline ? 3 : 1,
//         decoration: InputDecoration(
//           labelText: label,
//           border: OutlineInputBorder(),
//         ),
//       ),
//     );
//   }

//   Widget buildImagePicker(String label, VoidCallback onPressed, Uint8List? imageBytes) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         ElevatedButton(onPressed: onPressed, child: Text(label)),
//         imageBytes != null ? Icon(Icons.check, color: Colors.green) : SizedBox(),
//       ],
//     );
//   }
// }


// import 'dart:typed_data';
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:image_picker_web/image_picker_web.dart';

// class AddRestaurant extends StatefulWidget {
//   const AddRestaurant({super.key});

//   @override
//   State<AddRestaurant> createState() => _AddRestaurantState();
// }

// class _AddRestaurantState extends State<AddRestaurant> {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController brandTypeController = TextEditingController();
//   final TextEditingController reservationUrlController = TextEditingController();
//   final TextEditingController instagramUrlController = TextEditingController();
//   final TextEditingController facebookUrlController = TextEditingController();
//   final TextEditingController twitterUrlController = TextEditingController();
//   final TextEditingController description1Controller = TextEditingController();
//   final TextEditingController description2Controller = TextEditingController();
//   final TextEditingController registerNoController = TextEditingController();
//   final TextEditingController seatingCapacityController = TextEditingController();
  
//   List<TextEditingController> menuItemControllers = [];
//   List<TextEditingController> priceControllers = [];
//   List<Uint8List?> menuImages = [];

//   Uint8List? logoBytes;
//   Uint8List? imageBytes;
//   String? logoUrl;
//   String? imageUrl;

//   final CollectionReference restaurants = FirebaseFirestore.instance.collection('restaurants');

//   // Upload image to Firebase Storage
//   Future<String?> uploadImage(Uint8List imageData, String path) async {
//     try {
//       Reference storageRef = FirebaseStorage.instance.ref().child(path);
//       UploadTask uploadTask = storageRef.putData(imageData);
//       TaskSnapshot taskSnapshot = await uploadTask;
//       return await taskSnapshot.ref.getDownloadURL();
//     } catch (e) {
//       print("Error uploading image: $e");
//       return null;
//     }
//   }

//   // Add a new restaurant with menu items
//   Future<void> addRestaurant() async {
//     try {
//       // Upload restaurant logo and main image
//       String? uploadedLogoUrl = logoBytes != null
//           ? await uploadImage(logoBytes!, 'restaurants/logos/${nameController.text}.png')
//           : null;
//       String? uploadedImageUrl = imageBytes != null
//           ? await uploadImage(imageBytes!, 'restaurants/images/${nameController.text}.png')
//           : null;

//       // Add restaurant to Firestore
//       DocumentReference restaurantRef = await restaurants.add({
//         'name': nameController.text,
//         'brandType': brandTypeController.text,
//         'reservationUrl': reservationUrlController.text,
//         'instagramUrl': instagramUrlController.text,
//         'facebookUrl': facebookUrlController.text,
//         'twitterUrl': twitterUrlController.text,
//         'description1': description1Controller.text,
//         'description2': description2Controller.text,
//         'registerNo': registerNoController.text,
//         'seatingCapacity': int.tryParse(seatingCapacityController.text) ?? 0,
//         'status': 'pending',
//         'createdAt': FieldValue.serverTimestamp(),
//         'updatedAt': FieldValue.serverTimestamp(),
//         'logoUrl': uploadedLogoUrl ?? '',
//         'imageUrl': uploadedImageUrl ?? '',
//       });

//       // Store restaurant ID inside the document
//       await restaurantRef.update({'restaurantID': restaurantRef.id});

//       // Add menu items as a subcollection
//       CollectionReference menuRef = restaurantRef.collection('menu');
//       for (int i = 0; i < menuItemControllers.length; i++) {
//         if (menuItemControllers[i].text.trim().isNotEmpty) {
//           // Upload menu item image
//           String? menuImageUrl = menuImages[i] != null
//               ? await uploadImage(menuImages[i]!, 'restaurants/${restaurantRef.id}/menu/${menuItemControllers[i].text}.png')
//               : '';

//           await menuRef.add({
//             'name': menuItemControllers[i].text.trim(),
//             'price': double.tryParse(priceControllers[i].text) ?? 0.0,
//             'image': menuImageUrl ?? '',
//             'createdAt': FieldValue.serverTimestamp(),
//           });
//         }
//       }

//       // Show success message
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Restaurant and menu items added successfully! Awaiting approval.')),
//       );

//       // Reset form fields
//       setState(() {
//         logoBytes = null;
//         imageBytes = null;
//         menuItemControllers.clear();
//         priceControllers.clear();
//         menuImages.clear();
//       });

//       nameController.clear();
//       brandTypeController.clear();
//       reservationUrlController.clear();
//       instagramUrlController.clear();
//       facebookUrlController.clear();
//       twitterUrlController.clear();
//       description1Controller.clear();
//       description2Controller.clear();
//       registerNoController.clear();
//       seatingCapacityController.clear();
//     } catch (e) {
//       print("Error adding restaurant: $e");
//     }
//   }

//   // Pick an image (logo, main image, or menu image)
//   Future<void> pickImage(bool isLogo, {int? index}) async {
//     Uint8List? bytes = await ImagePickerWeb.getImageAsBytes();
//     if (bytes != null) {
//       setState(() {
//         if (isLogo) {
//           logoBytes = bytes;
//         } else if (index != null) {
//           menuImages[index] = bytes;
//         } else {
//           imageBytes = bytes;
//         }
//       });
//     }
//   }

//   // Add a new menu item input field
//   void addMenuItem() {
//     setState(() {
//       menuItemControllers.add(TextEditingController());
//       priceControllers.add(TextEditingController());
//       menuImages.add(null);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Add Restaurant"),
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(15),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             buildTextField("Name", nameController),
//             buildTextField("Brand Type", brandTypeController),
//             buildTextField("Register No", registerNoController),
//             buildTextField("Seat Capacity", seatingCapacityController),
//             buildTextField("Reservation URL", reservationUrlController),
//             buildTextField("Instagram URL", instagramUrlController),
//             buildTextField("Facebook URL", facebookUrlController),
//             buildTextField("Twitter URL", twitterUrlController),
//             buildTextField("Description 1", description1Controller, isMultiline: true),
//             buildTextField("Description 2", description2Controller, isMultiline: true),

//             SizedBox(height: 20),

//             Text("Menu Items", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//             ...List.generate(menuItemControllers.length, (index) {
//               return Column(
//                 children: [
//                   buildTextField("Item Name", menuItemControllers[index]),
//                   buildTextField("Price", priceControllers[index]),
//                   // ElevatedButton(
//                   //   onPressed: () => pickImage(false, index: index),
//                   //   child: Text("Upload Image"),
//                   // ),
//                   menuImages[index] != null ? Icon(Icons.check, color: Colors.green) : SizedBox(),
//                   SizedBox(height: 10),
//                 ],
//               );
//             }),

//             ElevatedButton(
//               onPressed: addMenuItem,
//               child: Text("Add Menu Item"),
//             ),
//             SizedBox(height: 20),

//             ElevatedButton(
//               onPressed: addRestaurant,
//               child: Text('Submit for Approval'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildTextField(String label, TextEditingController controller, {bool isMultiline = false}) {
//     return TextField(
//       controller: controller,
//       maxLines: isMultiline ? 3 : 1,
//       decoration: InputDecoration(labelText: label),
//     );
//   }
// }




import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

class AddRestaurant extends StatefulWidget {
  const AddRestaurant({super.key});

  @override
  State<AddRestaurant> createState() => _AddRestaurantState();
}

class _AddRestaurantState extends State<AddRestaurant> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController brandTypeController = TextEditingController();
  final TextEditingController reservationUrlController = TextEditingController();
  final TextEditingController instagramUrlController = TextEditingController();
  final TextEditingController facebookUrlController = TextEditingController();
  final TextEditingController twitterUrlController = TextEditingController();
  final TextEditingController description1Controller = TextEditingController();
  final TextEditingController description2Controller = TextEditingController();
  final TextEditingController registerNoController = TextEditingController();
  final TextEditingController seatingCapacityController = TextEditingController();

  List<TextEditingController> menuItemControllers = [];
  List<TextEditingController> priceControllers = [];
  List<Uint8List?> menuImages = [];

  Uint8List? logoBytes;
  Uint8List? imageBytes;

  final CollectionReference restaurants = FirebaseFirestore.instance.collection('restaurants');

  Future<String?> uploadImage(Uint8List imageData, String path) async {
    try {
      Reference storageRef = FirebaseStorage.instance.ref().child(path);
      UploadTask uploadTask = storageRef.putData(imageData);
      TaskSnapshot taskSnapshot = await uploadTask;
      return await taskSnapshot.ref.getDownloadURL();
    } catch (e) {
      print("Error uploading image: $e");
      return null;
    }
  }

  Future<void> addRestaurant() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    try {
      String? uploadedLogoUrl = logoBytes != null
          ? await uploadImage(logoBytes!, 'restaurants/logos/${nameController.text}.png')
          : null;
      String? uploadedImageUrl = imageBytes != null
          ? await uploadImage(imageBytes!, 'restaurants/images/${nameController.text}.png')
          : null;

      DocumentReference restaurantRef = await restaurants.add({
        'name': nameController.text,
        'brandType': brandTypeController.text,
        'reservationUrl': reservationUrlController.text,
        'instagramUrl': instagramUrlController.text,
        'facebookUrl': facebookUrlController.text,
        'twitterUrl': twitterUrlController.text,
        'description1': description1Controller.text,
        'description2': description2Controller.text,
        'registerNo': registerNoController.text,
        'seatingCapacity': int.tryParse(seatingCapacityController.text) ?? 0,
        'status': 'pending',
        'createdAt': FieldValue.serverTimestamp(),
        'updatedAt': FieldValue.serverTimestamp(),
        'logoUrl': uploadedLogoUrl ?? '',
        'imageUrl': uploadedImageUrl ?? '',
      });

      await restaurantRef.update({'restaurantID': restaurantRef.id});

      CollectionReference menuRef = restaurantRef.collection('menu');
      for (int i = 0; i < menuItemControllers.length; i++) {
        if (menuItemControllers[i].text.trim().isNotEmpty) {
          String? menuImageUrl = menuImages[i] != null
              ? await uploadImage(menuImages[i]!, 'restaurants/${restaurantRef.id}/menu/${menuItemControllers[i].text}.png')
              : '';

          await menuRef.add({
            'name': menuItemControllers[i].text.trim(),
            'price': double.tryParse(priceControllers[i].text) ?? 0.0,
            'image': menuImageUrl ?? '',
            'createdAt': FieldValue.serverTimestamp(),
          });
        }
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Restaurant and menu items added successfully! Awaiting approval.')),
      );

      setState(() {
        logoBytes = null;
        imageBytes = null;
        menuItemControllers.clear();
        priceControllers.clear();
        menuImages.clear();
      });

      nameController.clear();
      brandTypeController.clear();
      reservationUrlController.clear();
      instagramUrlController.clear();
      facebookUrlController.clear();
      twitterUrlController.clear();
      description1Controller.clear();
      description2Controller.clear();
      registerNoController.clear();
      seatingCapacityController.clear();
    } catch (e) {
      print("Error adding restaurant: $e");
    }
  }

  // Future<void> pickImage(bool isLogo, {int? index}) async {
  //   Uint8List? bytes = await ImagePickerWeb.getImageAsBytes();
  //   if (bytes != null) {
  //     setState(() {
  //       if (isLogo) {
  //         logoBytes = bytes;
  //       } else if (index != null) {
  //         menuImages[index] = bytes;
  //       } else {
  //         imageBytes = bytes;
  //       }
  //     });
  //   }
  // }

  void addMenuItem() {
    setState(() {
      menuItemControllers.add(TextEditingController());
      priceControllers.add(TextEditingController());
      menuImages.add(null);
    });
  }

  Widget buildTextField(String label, TextEditingController controller, {bool isMultiline = false, bool isNumber = false, bool isRequired = false}) {
    return TextFormField(
      controller: controller,
      maxLines: isMultiline ? 3 : 1,
      keyboardType: isNumber ? TextInputType.number : TextInputType.text,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      ),
      validator: isRequired
          ? (value) {
              if (value == null || value.trim().isEmpty) {
                return '$label is required';
              }
              return null;
            }
          : null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Restaurant"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTextField("Name", nameController, isRequired: true),
              buildTextField("Brand Type", brandTypeController, isRequired: true),
              buildTextField("Register No", registerNoController, isRequired: true),
              buildTextField("Seat Capacity", seatingCapacityController, isNumber: true, isRequired: true),
              buildTextField("Reservation URL", reservationUrlController),
              buildTextField("Instagram URL", instagramUrlController),
              buildTextField("Facebook URL", facebookUrlController),
              buildTextField("Twitter URL", twitterUrlController),
              buildTextField("Description 1", description1Controller, isMultiline: true),
              buildTextField("Description 2", description2Controller, isMultiline: true),

              SizedBox(height: 20),
              Text("Menu Items", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

              ...List.generate(menuItemControllers.length, (index) {
                return Column(
                  children: [
                    buildTextField("Item Name", menuItemControllers[index], isRequired: true),
                    buildTextField("Price", priceControllers[index], isNumber: true, isRequired: true),
                    menuImages[index] != null ? Icon(Icons.check, color: Colors.green) : SizedBox(),
                    SizedBox(height: 10),
                  ],
                );
              }),

              ElevatedButton(
                
                onPressed: addMenuItem,
                child: Text("Add Menu Item"),
              ),
              SizedBox(height: 20),

              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(shape: BeveledRectangleBorder(),backgroundColor: Colors.green),
                  onPressed: addRestaurant,
                  child: Text('Submit for Approval',style: TextStyle(color: Colors.white),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

