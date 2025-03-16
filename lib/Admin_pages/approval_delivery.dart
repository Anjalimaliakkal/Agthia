// import 'package:agthia/Admin_pages/adminChangepassword.dart';
// import 'package:agthia/Restaurant_pages/Add_Restaurant.dart';
// import 'package:agthia/Admin_pages/aboutUsHomePage.dart';
// import 'package:agthia/Admin_pages/addJobVaccancy.dart';
// import 'package:agthia/Admin_pages/addNewsPage.dart';
// import 'package:agthia/Admin_pages/addWordsfromChairman.dart';
// import 'package:agthia/Admin_pages/admin_home.dart';
// import 'package:agthia/Admin_pages/approval_restaurant.dart';
// import 'package:agthia/Admin_pages/ourpeopleHomePage.dart';
// import 'package:agthia/Admin_pages/subscripionViewPage.dart';
// import 'package:agthia/Admin_pages/visionhomepage.dart';
// import 'package:agthia/Restaurant_pages/Restaurant_changepassword.dart';
// import 'package:agthia/login.dart';
// import 'package:flutter/material.dart';

// class ApprovalDelivery extends StatelessWidget {
//   final List<Map<String, dynamic>> orders = [
//     {
//       'personelId': '1567',
//       'name': 'Abhay',
//       'email': 'abhay@gmail.com',
//       'username':'abhay@123',
//       'joinedon': 'Jan 25, 2025',
      
//     },
//     {
//       'personelId': '1578',
//       'name': 'Akhil',
//       'email': 'akhil@gmail.com',
//       'username':'akhil@123',
//       'joinedon': 'Feb 15, 2025',
//     }
//   ];
//    ApprovalDelivery({super.key});

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
//       child: Row(
//               children: [
//                 CircleAvatar(
//                   backgroundColor: const Color.fromARGB(255, 188, 187, 187),
//                   child: Icon(Icons.person, color: Colors.white)), // Profile Icon
//                 SizedBox(width: 5),
//                 Text(
//                   "ADMIN",
//                   style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(width: 5),
//                 Icon(Icons.arrow_drop_down)
//               ],
//             ),
//             onSelected: (value) {
//               if (value == 'change_password') {
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Adminchangepassword()));
//                 // Navigate to change password screen
//               } else if (value == 'logout') {
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
//                 // Perform logout action
//               }
//             },
//             itemBuilder: (BuildContext context) => [
//               // Title Item (Non-clickable)
//               PopupMenuItem<String>(
//                 enabled: false,
//                 child: Text(
//                   "ADMIN",
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

//       // drawer: Drawer(
//       //   width: 200,
//       //   backgroundColor: Color(0xFF282d37),
//       //   child: ListView(
//       //     padding: EdgeInsets.all(12),
//       //     children: [
//       //       DrawerHeader(
//       //         decoration: BoxDecoration(color: Color(0xFF282d37)),
//       //         child: Column(
//       //           mainAxisAlignment: MainAxisAlignment.center,
//       //           crossAxisAlignment: CrossAxisAlignment.start,
//       //           children: [
//       //             CircleAvatar(
//       //               radius: 30,
//       //               backgroundColor: Colors.white,
//       //               child: Icon(Icons.person),
//       //             ),
//       //             SizedBox(
//       //               height: 7,
//       //             ),
//       //             Text(
//       //               "Admin",
//       //               style: TextStyle(
//       //                   fontSize: 20,
//       //                   fontWeight: FontWeight.bold,
//       //                   color: Colors.white),
//       //             )
//       //           ],
//       //         ),
//       //       ),
//       //       ListTile(
//       //         title: Text("Home",
//       //             style: TextStyle(
//       //                 fontWeight: FontWeight.bold, color: Colors.white)),
//       //         onTap: () {
//       //           Navigator.push(context,
//       //               MaterialPageRoute(builder: (context) => AdminHome()));
//       //         },
//       //       ),
//       //       ExpansionTile(
//       //         //tilePadding: const EdgeInsets.only(left: 15, right: 15),
//       //         title: Text(
//       //           "About us",
//       //           style:
//       //               TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
//       //         ),
//       //         children: [
//       //           ListTile(
//       //             title: Text(
//       //               "About",
//       //               style: TextStyle(
//       //                   fontWeight: FontWeight.bold, color: Colors.white),
//       //             ),
//       //             onTap: () {
//       //               Navigator.push(context,
//       //                   MaterialPageRoute(builder: (context) => AboutUsHomePage()));
//       //             },
//       //             contentPadding: EdgeInsets.only(left: 60),
//       //           ),
//       //           ListTile(
//       //             title: Text(
//       //               "Our People",
//       //               style: TextStyle(
//       //                   fontWeight: FontWeight.bold, color: Colors.white),
//       //             ),
//       //             onTap: () {
//       //               Navigator.push(context,
//       //                   MaterialPageRoute(builder: (context) => Ourpeoplehomepage()));
//       //             },
//       //             contentPadding: EdgeInsets.only(left: 60),
//       //           ),
//       //           ListTile(
//       //             title: Text(
//       //               "Mission/Vision",
//       //               style: TextStyle(
//       //                   fontWeight: FontWeight.bold, color: Colors.white),
//       //             ),
//       //             onTap: () {
//       //               Navigator.push(context,
//       //                   MaterialPageRoute(builder: (context) => Visionhomepage()));
//       //             },
//       //             contentPadding: EdgeInsets.only(left: 60),
//       //           ),
//       //           ListTile(
//       //             title: Text(
//       //               "Word from Chairman",
//       //               style: TextStyle(
//       //                   fontWeight: FontWeight.bold, color: Colors.white),
//       //             ),
//       //             onTap: () {
//       //               Navigator.push(
//       //                   context,
//       //                   MaterialPageRoute(
//       //                       builder: (context) => Addwordsfromchairman()));
//       //             },
//       //             contentPadding: EdgeInsets.only(left: 60),
//       //           ),
//       //         ],
//       //       ),
//       //       ListTile(
//       //         title: Text("Media",
//       //             style: TextStyle(
//       //                 fontWeight: FontWeight.bold, color: Colors.white)),
//       //         onTap: () {
//       //           Navigator.push(context,
//       //               MaterialPageRoute(builder: (context) => addNewsPage()));
//       //         },
//       //       ),
//       //       ListTile(
//       //         title: Text("Manage Restaurants",
//       //             style: TextStyle(
//       //                 fontWeight: FontWeight.bold, color: Colors.white)),
//       //         onTap: () {
//       //           Navigator.push(context,
//       //               MaterialPageRoute(builder: (context) => AddRestaurant()));
//       //         },
//       //       ),
//       //       ExpansionTile(
//       //         //tilePadding: const EdgeInsets.only(left: 15, right: 15),
//       //         title: Text(
//       //           "Approvals",
//       //           style:
//       //               TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
//       //         ),
//       //         children: [
//       //           ListTile(
//       //             title: Text(
//       //               "Restaurant",
//       //               style: TextStyle(
//       //                   fontWeight: FontWeight.bold, color: Colors.white),
//       //             ),
//       //             onTap: () {
//       //               Navigator.push(context,
//       //                   MaterialPageRoute(builder: (context) => ApprovalRestaurant()));
//       //             },
//       //             contentPadding: EdgeInsets.only(left: 60),
//       //           ),
//       //           ListTile(
//       //             title: Text(
//       //               "Delivery Personnel",
//       //               style: TextStyle(
//       //                   fontWeight: FontWeight.bold, color: Colors.white),
//       //             ),
//       //             onTap: () {
//       //               Navigator.push(context,
//       //                   MaterialPageRoute(builder: (context) => ApprovalDelivery()));
//       //             },
//       //             contentPadding: EdgeInsets.only(left: 60),
//       //           ),
                
//       //         ],
//       //       ),
//       //       ListTile(
//       //         title: Text("Subscriptions",
//       //             style: TextStyle(
//       //                 fontWeight: FontWeight.bold, color: Colors.white)),
//       //         onTap: () {
//       //           Navigator.push(context,
//       //               MaterialPageRoute(builder: (context) => Subscripionviewpage()));
//       //         },
//       //       ),
//       //       ListTile(
//       //         title: Text("Careers",
//       //             style: TextStyle(
//       //                 fontWeight: FontWeight.bold, color: Colors.white)),
//       //         onTap: () {
//       //           Navigator.push(context,
//       //               MaterialPageRoute(builder: (context) => AddJobVaccancy()));
//       //         },
//       //       ),
//       //     ],
//       //   ),
//       // ),

//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         //color: Color.fromARGB(255, 207, 198, 198), 
//         decoration: BoxDecoration(
//           image: DecorationImage(image: AssetImage("asset/background_image1.jpg"),
//           fit: BoxFit.cover)
//         ),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               SizedBox(height: 20),
//               Text(
//                 'Registered Delivery Personnels',
//                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white),
//               ),
//               SizedBox(height: 30),
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: DataTable(
//                   columnSpacing: 50,
//                   dataRowHeight: 100, // Adjust row height
//                   headingRowColor: MaterialStateColor.resolveWith(
//                       (states) => const Color.fromARGB(255, 178, 208, 223)),
//                   headingTextStyle:
//                       TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                   dataRowColor: MaterialStateColor.resolveWith(
//                       (states) => Colors.grey.shade100),
//                   border: TableBorder.all(color: Colors.black54, width: 0.5),
//                   columns: [
//                     DataColumn(label: Text('Personel ID')),
//                     DataColumn(label: Text('Name')),
//                     DataColumn(label: Text('Email')),
//                     DataColumn(label: Text('Username')),
//                     DataColumn(label: Text(' Action')),
                    
//                   ],
//                   rows: orders.map((order) {
//                     return DataRow(cells: [
//                       DataCell(Text(order['personelId'].toString())),
//                       DataCell(Text(order['name'])),
//                       DataCell(Text(order['email'])),
//                       DataCell(Text(order['username'])),
//                       // DataCell(Text(order['Action'].toString())),
//                       DataCell(Column(
//                         children: [
//                           SizedBox(height: 10),
//                           ElevatedButton(
//                             onPressed: () {},
//                             style: ElevatedButton.styleFrom(
//                               shape: BeveledRectangleBorder(),
//                                 backgroundColor: Colors.green),
//                             child: Text('Activate'),
//                           ),
//                           SizedBox(height: 10),
//                           ElevatedButton(
//                             onPressed: () {},
//                             style: ElevatedButton.styleFrom(
//                               shape: BeveledRectangleBorder(),
//                                 backgroundColor: Colors.red),
//                             child: Text('Deactivate'),
//                           ),
//                         ],
//                       )),
                      
//                     ]);
//                   }).toList(),
//                 ),
//               ),
//               SizedBox(height: 100),
//               Container(
//                 color: Colors.black,
//                 padding: EdgeInsets.only(),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Divider(color: Colors.white),
//                     SizedBox(height: 10),
//                     Text(
//                       "CONTACT",
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 13,
//                           fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(height: 10),
//                     Text(
//                       "AL-SHARIQA TOWER\nFLOOR 7\nJABER AL MUBARAK STREET, BLOCK 2\nKUWAIT CITY",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(color: Colors.white, fontSize: 14),
//                     ),
//                     SizedBox(height: 15),
//                     Text(
//                       "Join our mailing list for updates\nGet news & other events",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(color: Colors.white70, fontSize: 14),
//                     ),
//                     SizedBox(height: 10),
//                     Padding(
//                       padding: EdgeInsets.only(),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           SizedBox(
//                             width: 1400,
//                             child: Center(
//                               child: TextField(
//                                 textAlign: TextAlign.center,
//                                 decoration: InputDecoration(
//                                   hintText: "Email",
//                                   filled: true,
//                                   fillColor: Colors.white,
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.only(),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Container(
//                       decoration:
//                           BoxDecoration(border: Border.all(color: Colors.red)),
//                       width: MediaQuery.of(context).size.width / 1.1,
//                       height: 40,
//                       child: ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                               minimumSize: Size(
//                                   MediaQuery.of(context).size.width / 1.1, 40),
//                               shape: RoundedRectangleBorder()),
//                           onPressed: () {},
//                           child: Text(
//                             "Subscribe",
//                             style: TextStyle(color: Colors.black),
//                           )),
//                     ),
//                     SizedBox(height: 15),
//                     Text("22260445",
//                         style: TextStyle(
//                             color: Colors.pink[200],
//                             fontWeight: FontWeight.bold)),
//                     Text("INFO@AGTHIA-FOOD.COM.KW",
//                         style: TextStyle(color: Colors.pink[200])),
//                     SizedBox(height: 10),
//                     Divider(color: Colors.white),
//                     SizedBox(height: 5),
//                     Icon(
//                       Icons.copyright,
//                       color: Colors.white,
//                     ),
//                     Text("Copyright", style: TextStyle(color: Colors.white)),
//                   ],
//                 ),
//               ),

//             ],
//           ),
//         ),
//       ),

//     );
//   }
// }

// import 'package:agthia/Restaurant_pages/Restaurant_changepassword.dart';
// import 'package:agthia/backend_pages/backend_new/loginpage.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class ApprovalDelivery extends StatelessWidget {
  
//    ApprovalDelivery({super.key});

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
//       child: Row(
//               children: [
//                 CircleAvatar(
//                   backgroundColor: const Color.fromARGB(255, 188, 187, 187),
//                   child: Icon(Icons.person, color: Colors.white)), // Profile Icon
//                 SizedBox(width: 5),
//                 Text(
//                   "ADMIN",
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
//                   "ADMIN",
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

      
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         //color: Color.fromARGB(255, 207, 198, 198), 
//         decoration: BoxDecoration(
//           image: DecorationImage(image: AssetImage("asset/background_image1.jpg"),
//           fit: BoxFit.cover)
//         ),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               SizedBox(height: 20),
//               Text(
//                 'Registered Delivery Personnels',
//                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white),
//               ),
//               SizedBox(height: 30),
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child:  StreamBuilder<QuerySnapshot>(
//         stream: FirebaseFirestore.instance.collection('delivery_boys').snapshots(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator()); // Loading
//           }

//           if (snapshot.hasError) {
//             return Center(child: Text("Error: ${snapshot.error}")); // Show error
//           }

//           if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//             return Center(child: Text("No delivery boys found")); // No data
//           }

//           var deliveryBoys = snapshot.data!.docs;

//           return ListView.builder(
//             itemCount: deliveryBoys.length,
//             itemBuilder: (context, index) {
//               var deliveryBoy = deliveryBoys[index];
//               return ListTile(
//                 title: Text(deliveryBoy['name']),
//                 subtitle: Text(deliveryBoy['email']),
//                 trailing: deliveryBoy['approved'] == true
//                     ? Icon(Icons.check_circle, color: Colors.green)
//                     : Icon(Icons.pending, color: Colors.orange),
//               );
//             },
//           );
//         },
//       ),
//               ),
//               SizedBox(height: 100),
//               Container(
//                 color: Colors.black,
//                 padding: EdgeInsets.only(),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Divider(color: Colors.white),
//                     SizedBox(height: 10),
//                     Text(
//                       "CONTACT",
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 13,
//                           fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(height: 10),
//                     Text(
//                       "AL-SHARIQA TOWER\nFLOOR 7\nJABER AL MUBARAK STREET, BLOCK 2\nKUWAIT CITY",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(color: Colors.white, fontSize: 14),
//                     ),
//                     SizedBox(height: 15),
//                     Text(
//                       "Join our mailing list for updates\nGet news & other events",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(color: Colors.white70, fontSize: 14),
//                     ),
//                     SizedBox(height: 10),
//                     Padding(
//                       padding: EdgeInsets.only(),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           SizedBox(
//                             width: 1400,
//                             child: Center(
//                               child: TextField(
//                                 textAlign: TextAlign.center,
//                                 decoration: InputDecoration(
//                                   hintText: "Email",
//                                   filled: true,
//                                   fillColor: Colors.white,
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.only(),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Container(
//                       decoration:
//                           BoxDecoration(border: Border.all(color: Colors.red)),
//                       width: MediaQuery.of(context).size.width / 1.1,
//                       height: 40,
//                       child: ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                               minimumSize: Size(
//                                   MediaQuery.of(context).size.width / 1.1, 40),
//                               shape: RoundedRectangleBorder()),
//                           onPressed: () {},
//                           child: Text(
//                             "Subscribe",
//                             style: TextStyle(color: Colors.black),
//                           )),
//                     ),
//                     SizedBox(height: 15),
//                     Text("22260445",
//                         style: TextStyle(
//                             color: Colors.pink[200],
//                             fontWeight: FontWeight.bold)),
//                     Text("INFO@AGTHIA-FOOD.COM.KW",
//                         style: TextStyle(color: Colors.pink[200])),
//                     SizedBox(height: 10),
//                     Divider(color: Colors.white),
//                     SizedBox(height: 5),
//                     Icon(
//                       Icons.copyright,
//                       color: Colors.white,
//                     ),
//                     Text("Copyright", style: TextStyle(color: Colors.white)),
//                   ],
//                 ),
//               ),

//             ],
//           ),
//         ),
//       ),

//     );
//   }
// }


// import 'package:agthia/Restaurant_pages/Restaurant_changepassword.dart';
// import 'package:agthia/backend_pages/backend_new/loginpage.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class ApprovalDelivery extends StatefulWidget {
//   ApprovalDelivery({super.key});

//   @override
//   State<ApprovalDelivery> createState() => _ApprovalDeliveryState();
// }

// class _ApprovalDeliveryState extends State<ApprovalDelivery> {
//   final CollectionReference delivery_boys =
//       FirebaseFirestore.instance.collection('delivery_boys');

//   Future<void> ApprovalDelivery(String id, String adminId) async {
//     await delivery_boys.doc(id).update({
//       'status': 'active',
//       'approvedBy': adminId,
//       'updatedAt': FieldValue.serverTimestamp(),
//     });
//   }


//   Future<void> rejectdelivery(String id) async {
//     await delivery_boys.doc(id).delete();
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
//             icon: Row(
//               children: [
//                 CircleAvatar(
//                   backgroundColor: Color.fromARGB(255, 188, 187, 187),
//                   child: Icon(Icons.person, color: Colors.white),
//                 ),
//                 SizedBox(width: 5),
//                 Text(
//                   "ADMIN",
//                   style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(width: 5),
//                 Icon(Icons.arrow_drop_down, color: Colors.white),
//               ],
//             ),
//             onSelected: (value) {
//               if (value == 'change_password') {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) => RestaurantChangepassword()));
//               } else if (value == 'logout') {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
//               }
//             },
//             itemBuilder: (context) => [
//               PopupMenuItem<String>(
//                 enabled: false,
//                 child: Text(
//                   "ADMIN",
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
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("asset/background_image1.jpg"),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               SizedBox(height: 20),
//               Text(
//                 'Registered Delivery Personnels',
//                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
//               ),
//               SizedBox(height: 30),
//               SizedBox(
//                 height: 400, // Fixed height for ListView.builder
//                 child: StreamBuilder<QuerySnapshot>(
//                   stream: FirebaseFirestore.instance.collection('delivery_boys').snapshots(),
//                   builder: (context, snapshot) {
//                     if (snapshot.connectionState == ConnectionState.waiting) {
//                       return Center(child: CircularProgressIndicator());
//                     }

//                     if (snapshot.hasError) {
//                       return Center(child: Text("Error: ${snapshot.error}"));
//                     }

//                     if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//                       return Center(child: Text("No delivery boys found", style: TextStyle(color: Colors.white)));
//                     }

//                     var deliveryBoys = snapshot.data!.docs;

//                     return ListView.builder(
//                       shrinkWrap: true,
//                       itemCount: deliveryBoys.length,
//                       itemBuilder: (context, index) {
//                         var deliveryBoy = deliveryBoys[index];
//                         return Card(
//                           margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
//                           elevation: 3,
//                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//                           child: ListTile(
//                             title: Text(deliveryBoy['name'], style: TextStyle(fontWeight: FontWeight.bold)),
//                             subtitle: Text(deliveryBoy['email']),
//                             // trailing: deliveryBoy['approved'] == true
//                             //     ? Icon(Icons.check_circle, color: Colors.green)
//                             //     : Icon(Icons.pending, color: Colors.orange),
//                             trailing: Row(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 Text("Accept",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
//                                 IconButton(
//                                   icon: Icon(Icons.check, color: Colors.green),
//                                   // onPressed: () => ApprovalDelivery(
//                                   //     deliveryBoy[index].id, "admin123"),
//                                   onPressed: () => ApprovalDelivery(
//     deliveryBoy.id, "admin123"), // Correct access

//                                 ),
//                                 Text("Reject",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
//                                 IconButton(
//                                   icon: Icon(Icons.close, color: Colors.red),
//                                   // onPressed: () =>
//                                   //     rejectdelivery(deliveryBoy[index].id),
//                                   onPressed: () =>
//     rejectdelivery(deliveryBoy.id), // Correct access

//                                 ),
//                               ],
//                             ),
//                           ),
//                         );
//                       },
//                     );
//                   },
//                 ),
//               ),
//               SizedBox(height: 50),
//               FooterSection(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class FooterSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.black,
//       padding: EdgeInsets.all(16),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Divider(color: Colors.white),
//           SizedBox(height: 10),
//           Text(
//             "CONTACT",
//             style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 10),
//           Text(
//             "AL-SHARIQA TOWER\nFLOOR 7\nJABER AL MUBARAK STREET, BLOCK 2\nKUWAIT CITY",
//             textAlign: TextAlign.center,
//             style: TextStyle(color: Colors.white, fontSize: 14),
//           ),
//           SizedBox(height: 15),
//           Text(
//             "Join our mailing list for updates\nGet news & other events",
//             textAlign: TextAlign.center,
//             style: TextStyle(color: Colors.white70, fontSize: 14),
//           ),
//           SizedBox(height: 10),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 20),
//             child: TextField(
//               textAlign: TextAlign.center,
//               decoration: InputDecoration(
//                 hintText: "Email",
//                 filled: true,
//                 fillColor: Colors.white,
//                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//               ),
//             ),
//           ),
//           SizedBox(height: 10),
//           ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.red,
//               padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
//               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//             ),
//             onPressed: () {},
//             child: Text("Subscribe", style: TextStyle(color: Colors.white)),
//           ),
//           SizedBox(height: 15),
//           Text("22260445", style: TextStyle(color: Colors.pink[200], fontWeight: FontWeight.bold)),
//           Text("INFO@AGTHIA-FOOD.COM.KW", style: TextStyle(color: Colors.pink[200])),
//           SizedBox(height: 10),
//           Divider(color: Colors.white),
//           SizedBox(height: 5),
//           Icon(Icons.copyright, color: Colors.white),
//           Text("Copyright", style: TextStyle(color: Colors.white)),
//         ],
//       ),
//     );
//   }
// }


// import 'package:agthia/Restaurant_pages/Restaurant_changepassword.dart';
// import 'package:agthia/backend_pages/backend_new/loginpage.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class ApprovalDelivery extends StatefulWidget {
//   ApprovalDelivery({super.key});

//   @override
//   State<ApprovalDelivery> createState() => _ApprovalDeliveryState();
// }

// class _ApprovalDeliveryState extends State<ApprovalDelivery> {
//   final CollectionReference delivery_boys =
//       FirebaseFirestore.instance.collection('delivery_boys');

//   Future<void> ApprovalDelivery(String id, String adminId) async {
//     await delivery_boys.doc(id).update({
//       'status': 'active', // ✅ Marks as approved
//       'approvedBy': adminId,
//       'updatedAt': FieldValue.serverTimestamp(),
//     });
//   }

//   Future<void> rejectdelivery(String id) async {
//     await delivery_boys.doc(id).delete(); // ✅ Removes from Firestore
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
//             icon: Row(
//               children: [
//                 CircleAvatar(
//                   backgroundColor: Color.fromARGB(255, 188, 187, 187),
//                   child: Icon(Icons.person, color: Colors.white),
//                 ),
//                 SizedBox(width: 5),
//                 Text(
//                   "ADMIN",
//                   style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(width: 5),
//                 Icon(Icons.arrow_drop_down, color: Colors.white),
//               ],
//             ),
//             onSelected: (value) {
//               if (value == 'change_password') {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) => RestaurantChangepassword()));
//               } else if (value == 'logout') {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
//               }
//             },
//             itemBuilder: (context) => [
//               PopupMenuItem<String>(
//                 enabled: false,
//                 child: Text(
//                   "ADMIN",
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
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("asset/background_image1.jpg"),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               SizedBox(height: 20),
//               Text(
//                 'Registered Delivery Personnels',
//                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
//               ),
//               SizedBox(height: 30),
//               SizedBox(
//                 height: 400, // Fixed height for ListView.builder
//                 child: StreamBuilder<QuerySnapshot>(
//                   stream: FirebaseFirestore.instance
//                       .collection('delivery_boys')
//                       .where('status', isEqualTo: 'pending') // ✅ Only fetch pending delivery boys
//                       .snapshots(),
//                   builder: (context, snapshot) {
//                     if (snapshot.connectionState == ConnectionState.waiting) {
//                       return Center(child: CircularProgressIndicator());
//                     }

//                     if (snapshot.hasError) {
//                       return Center(child: Text("Error: ${snapshot.error}"));
//                     }

//                     if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//                       return Center(child: Text("No pending delivery personnel", style: TextStyle(color: Colors.white)));
//                     }

//                     var deliveryBoys = snapshot.data!.docs;

//                     return ListView.builder(
//                       shrinkWrap: true,
//                       itemCount: deliveryBoys.length,
//                       itemBuilder: (context, index) {
//                         var deliveryBoy = deliveryBoys[index];

//                         return Card(
//                           margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
//                           elevation: 3,
//                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//                           child: ListTile(
//                             title: Text(deliveryBoy['name'], style: TextStyle(fontWeight: FontWeight.bold)),
//                             subtitle: Text(deliveryBoy['email']),
//                             trailing: Row(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 Text("Accept", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
//                                 IconButton(
//                                   icon: Icon(Icons.check, color: Colors.green),
//                                   onPressed: () => ApprovalDelivery(deliveryBoy.id, "admin123"),
//                                 ),
//                                 Text("Reject", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
//                                 IconButton(
//                                   icon: Icon(Icons.close, color: Colors.red),
//                                   onPressed: () => rejectdelivery(deliveryBoy.id),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         );
//                       },
//                     );
//                   },
//                 ),
//               ),
//               SizedBox(height: 50),
             
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


// import 'package:agthia/Restaurant_pages/Restaurant_changepassword.dart';
// import 'package:agthia/backend_pages/backend_new/loginpage.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class ApprovalDelivery extends StatefulWidget {
//   ApprovalDelivery({super.key});

//   @override
//   State<ApprovalDelivery> createState() => _ApprovalDeliveryState();
// }

// class _ApprovalDeliveryState extends State<ApprovalDelivery> {
//   final CollectionReference delivery_boys =
//       FirebaseFirestore.instance.collection('delivery_boys');

//   // Future<void> approveDelivery(String id, String adminId) async {
//   //   try {
//   //     await delivery_boys.doc(id).update({
//   //       'status': 'active',
//   //       'approvedBy': adminId,
//   //       'updatedAt': FieldValue.serverTimestamp(),
//   //     });
//   //     print("Delivery Boy Approved: $id by $adminId");

//   //     setState(() {}); // ✅ Refresh UI
//   //   } catch (e) {
//   //     print("Error approving delivery boy: $e");
//   //   }
//   // }
//   Future<void> approveDelivery(String id, String adminId) async {
//   try {
//     DocumentReference docRef = delivery_boys.doc(id);

//     await docRef.update({
//       'status': 'active',
//       'approvedBy': adminId,
//       'availability': 'available', // ✅ Ensure this updates
//       'updatedAt': FieldValue.serverTimestamp(),
//     });

//     // Fetch updated document to verify changes
//     DocumentSnapshot updatedDoc = await docRef.get();
//     print("Updated Document Data: ${updatedDoc.data()}"); // Debugging

//     setState(() {}); // ✅ Refresh UI
//   } catch (e) {
//     print("Error approving delivery boy: $e");
//   }
// }

//   Future<void> rejectDelivery(String id) async {
//     try {
//       await delivery_boys.doc(id).delete();
//       print("Delivery Boy Rejected: $id");

//       setState(() {}); // ✅ Refresh UI
//     } catch (e) {
//       print("Error rejecting delivery boy: $e");
//     }
//   }

//   Future<void> fetchPendingDeliveryBoys() async {
//     QuerySnapshot snapshot = await FirebaseFirestore.instance
//         .collection('delivery_boys')
//         .where('status', isEqualTo: 'pending')
//         .get();

//     if (snapshot.docs.isEmpty) {
//       print("No pending delivery boys found.");
//     } else {
//       for (var doc in snapshot.docs) {
//         print("Pending Delivery Boy: ${doc.id} - ${doc['name']}");
//       }
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
//             icon: Row(
//               children: [
//                 CircleAvatar(
//                   backgroundColor: Color.fromARGB(255, 188, 187, 187),
//                   child: Icon(Icons.person, color: Colors.white),
//                 ),
//                 SizedBox(width: 5),
//                 Text(
//                   "ADMIN",
//                   style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(width: 5),
//                 Icon(Icons.arrow_drop_down, color: Colors.white),
//               ],
//             ),
//             onSelected: (value) {
//               if (value == 'change_password') {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => RestaurantChangepassword()));
//               } else if (value == 'logout') {
//                 Navigator.push(
//                     context, MaterialPageRoute(builder: (context) => LoginPage()));
//               }
//             },
//             itemBuilder: (context) => [
//               PopupMenuItem<String>(
//                 enabled: false,
//                 child: Text(
//                   "ADMIN",
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
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("asset/background_image1.jpg"),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               SizedBox(height: 20),
//               Text(
//                 'Registered Delivery Personnels',
//                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
//               ),
//               SizedBox(height: 20),

//               /// PENDING DELIVERY BOYS
//               Text(
//                 "Pending Approvals",
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
//               ),
//               SizedBox(
//                 height: 250,
//                 child: StreamBuilder<QuerySnapshot>(
//                   stream: delivery_boys.where('status', isEqualTo: 'pending').snapshots(),
//                   builder: (context, snapshot) {
//                     if (snapshot.connectionState == ConnectionState.waiting) {
//                       return Center(child: CircularProgressIndicator());
//                     }

//                     if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//                       print("No documents found in Firestore.");  // Debugging print
//                       return Center(
//                         child: Text("No pending delivery personnel",
//                             style: TextStyle(color: Colors.white)),
//                       );
//                     }

//                     print(snapshot.data!.docs);  // Debugging print

//                     var deliveryBoys = snapshot.data!.docs;

//                     return ListView.builder(
//                       shrinkWrap: true,
//                       itemCount: deliveryBoys.length,
//                       itemBuilder: (context, index) {
//                         var deliveryBoy = deliveryBoys[index];

//                         return Card(
//                           margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
//                           elevation: 3,
//                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//                           child: ListTile(
//                             title: Text(deliveryBoy['name'], style: TextStyle(fontWeight: FontWeight.bold)),
//                             subtitle: Text(deliveryBoy['email']),
//                             trailing: Row(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 IconButton(
//                                   icon: Icon(Icons.check, color: Colors.green),
//                                   onPressed: () => approveDelivery(deliveryBoy.id, "admin123"),
//                                 ),
//                                 IconButton(
//                                   icon: Icon(Icons.close, color: Colors.red),
//                                   onPressed: () => rejectDelivery(deliveryBoy.id),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         );
//                       },
//                     );
//                   },
//                 ),
//               ),

//               SizedBox(height: 20),

//               /// APPROVED DELIVERY BOYS
//               Text(
//                 "Approved Delivery Boys",
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
//               ),
//               SizedBox(
//                 height: 250,
//                 child: StreamBuilder<QuerySnapshot>(
//                   stream: delivery_boys.where('status', isEqualTo: 'active').snapshots(),
//                   builder: (context, snapshot) {
//                     if (snapshot.connectionState == ConnectionState.waiting) {
//                       return Center(child: CircularProgressIndicator());
//                     }

//                     if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//                       return Center(
//                         child: Text("No approved delivery personnel",
//                             style: TextStyle(color: Colors.white)),
//                       );
//                     }

//                     var approvedDeliveryBoys = snapshot.data!.docs;

//                     return ListView.builder(
//                       shrinkWrap: true,
//                       itemCount: approvedDeliveryBoys.length,
//                       itemBuilder: (context, index) {
//                         var deliveryBoy = approvedDeliveryBoys[index];

//                         return Card(
//                           margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
//                           elevation: 3,
//                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//                           child: ListTile(
//                             title: Text(deliveryBoy['name'], style: TextStyle(fontWeight: FontWeight.bold)),
//                             subtitle: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(deliveryBoy['email']),
//                                 // Safe check for approvedBy field
//                                 Text(
//                                   "Approved By: ${(deliveryBoy.data() as Map<String, dynamic>)['approvedBy'] ?? 'Not Available'}",
//                                 ),
//                               ],
//                             ),
//                           ),
//                         );
//                       },
//                     );
//                   },
//                 ),
//               ),

//               SizedBox(height: 50),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:agthia/Restaurant_pages/Restaurant_changepassword.dart';
import 'package:agthia/backend_pages/backend_new/loginpage.dart';
import 'package:agthia/backend_pages/backendlogin.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ApprovalDelivery extends StatefulWidget {
  ApprovalDelivery({super.key});

  @override
  State<ApprovalDelivery> createState() => _ApprovalDeliveryState();
}

class _ApprovalDeliveryState extends State<ApprovalDelivery> {
  final CollectionReference delivery_boys =
      FirebaseFirestore.instance.collection('delivery_boys');
      Future<void> approveDelivery(String id, String adminId) async {
  try {
    DocumentReference docRef = delivery_boys.doc(id);

    await docRef.update({
      'status': 'active',
      'approvedBy': adminId,
      'availability': 'available', // ✅ Ensure this updates
      'updatedAt': FieldValue.serverTimestamp(),
    });

    // Fetch updated document to verify changes
    DocumentSnapshot updatedDoc = await docRef.get();
    print("Updated Document Data: ${updatedDoc.data()}"); // Debugging

    setState(() {}); // ✅ Refresh UI
  } catch (e) {
    print("Error approving delivery boy: $e");
}
}

  // Future<void> approveDelivery(String id, String adminId) async {
  //   try {
  //     await delivery_boys.doc(id).update({
  //       'status': 'active',
  //       'approvedBy': adminId,
  //       'updatedAt': FieldValue.serverTimestamp(),
  //     });
  //     print("Delivery Boy Approved: $id by $adminId");

  //     setState(() {}); // ✅ Refresh UI
  //   } catch (e) {
  //     print("Error approving delivery boy: $e");
  //   }
  // }

  Future<void> rejectDelivery(String id) async {
    try {
      await delivery_boys.doc(id).delete();
      print("Delivery Boy Rejected: $id");

      setState(() {}); // ✅ Refresh UI
    } catch (e) {
      print("Error rejecting delivery boy: $e");
    }
  }

  Future<void> fetchPendingDeliveryBoys() async {
    QuerySnapshot snapshot = await FirebaseFirestore.instance
        .collection('delivery_boys')
        .where('status', isEqualTo: 'pending')
        .get();

    if (snapshot.docs.isEmpty) {
      print("No pending delivery boys found.");
    } else {
      for (var doc in snapshot.docs) {
        print("Pending Delivery Boy: ${doc.id} - ${doc['name']}");
      }
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
        actions: [
          PopupMenuButton<String>(
            icon: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 188, 187, 187),
                  child: Icon(Icons.person, color: Colors.white),
                ),
                SizedBox(width: 5),
                Text(
                  "ADMIN",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5),
                Icon(Icons.arrow_drop_down, color: Colors.white),
              ],
            ),
            onSelected: (value) {
              if (value == 'change_password') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RestaurantChangepassword()));
              } else if (value == 'logout') {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => LoginPage()));
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem<String>(
                enabled: false,
                child: Text(
                  "ADMIN",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("asset/background_image1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                'Registered Delivery Personnels',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20),

              /// PENDING DELIVERY BOYS
              Text(
                "Pending Approvals",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(
                height: 250,
                child: StreamBuilder<QuerySnapshot>(
                  stream: delivery_boys.where('status', isEqualTo: 'pending').snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    }

                    if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                      print("No documents found in Firestore.");  // Debugging print
                      return Center(
                        child: Text("No pending delivery personnel",
                            style: TextStyle(color: Colors.white)),
                      );
                    }

                    print(snapshot.data!.docs);  // Debugging print

                    var deliveryBoys = snapshot.data!.docs;

                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: deliveryBoys.length,
                      itemBuilder: (context, index) {
                        var deliveryBoy = deliveryBoys[index];

                        return Card(
                          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          elevation: 3,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          child: ListTile(
                            title: Text(deliveryBoy['name'], style: TextStyle(fontWeight: FontWeight.bold)),
                            subtitle: Text(deliveryBoy['email']),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.check, color: Colors.green),
                                  onPressed: () => approveDelivery(deliveryBoy.id, "admin123"),
                                ),
                                IconButton(
                                  icon: Icon(Icons.close, color: Colors.red),
                                  onPressed: () => rejectDelivery(deliveryBoy.id),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),

              SizedBox(height: 20),

              /// APPROVED DELIVERY BOYS
              Text(
                "Approved Delivery Boys",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(
                height: 250,
                child: StreamBuilder<QuerySnapshot>(
                  stream: delivery_boys.where('status', isEqualTo: 'active').snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    }

                    if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                      return Center(
                        child: Text("No approved delivery personnel",
                            style: TextStyle(color: Colors.white)),
                      );
                    }

                    var approvedDeliveryBoys = snapshot.data!.docs;

                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: approvedDeliveryBoys.length,
                      itemBuilder: (context, index) {
                        var deliveryBoy = approvedDeliveryBoys[index];

                        return Card(
                          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          elevation: 3,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          child: ListTile(
                            title: Text(deliveryBoy['name'], style: TextStyle(fontWeight: FontWeight.bold)),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(deliveryBoy['email']),
                                // Safe check for approvedBy field
                                Text(
                                  "Approved By: ${(deliveryBoy.data() as Map<String, dynamic>)['approvedBy'] ?? 'Not Available'}",
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),

              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
