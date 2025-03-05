// import 'package:agthia/Restaurant_pages/Restaurant_changepassword.dart';
// import 'package:agthia/login.dart';
// import 'package:flutter/material.dart';

// class ApprovalRestaurant extends StatelessWidget {
//   final List<Map<String, dynamic>> orders = [
//     {
//       'restaurantname': 'Al Bustan Restaurant',
//       'registerno': '56465',
//       'status': 'active',
//       'brands':'Burger Inn, Beefbar',
//       'seatingcapacity': '50',
      
//     },
//     {
//       'restaurantname': 'Da Gusto - Trattoria Italiana',
//       'registerno': '87576',
//       'status': 'active',
//       'brands':'Dinand, Ferdi',
//       'seatingcapacity': '60',
//     }
//   ];
//    ApprovalRestaurant({super.key});

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
//       //               "Restaurant",
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
//       //           Navigator.push(
//       //               context,
//       //               MaterialPageRoute(
//       //                   builder: (context) => RestaurantHome()));
//       //         },
//       //       ),
//       //       ListTile(
//       //         title: Text("Add Restaurant",
//       //             style: TextStyle(
//       //                 fontWeight: FontWeight.bold, color: Colors.white)),
//       //         onTap: () {
//       //           Navigator.push(
//       //               context,
//       //               MaterialPageRoute(
//       //                   builder: (context) => AddRestaurant()));
//       //         },
//       //       ),
//       //       ListTile(
//       //         title: Text("View Orders",
//       //             style: TextStyle(
//       //                 fontWeight: FontWeight.bold, color: Colors.white)),
//       //         onTap: () {
//       //           Navigator.push(
//       //               context,
//       //               MaterialPageRoute(
//       //                   builder: (context) => RestaurantVieworders()));
//       //         },
//       //       ),
//       //       ListTile(
//       //         title: Text("View Delivery Personnel",
//       //             style: TextStyle(
//       //                 fontWeight: FontWeight.bold, color: Colors.white)),
//       //         onTap: () {
//       //           Navigator.push(
//       //               context,
//       //               MaterialPageRoute(
//       //                   builder: (context) => RestaurantViewdelivery()));
//       //         },
//       //       ),
//       //       ListTile(
//       //         title: Text("Allocate Delivery Personnel",
//       //             style: TextStyle(
//       //                 fontWeight: FontWeight.bold, color: Colors.white)),
//       //         onTap: () {
//       //           Navigator.push(
//       //               context,
//       //               MaterialPageRoute(
//       //                   builder: (context) => DeliveryAllocation()));
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
//                 'Registered Restaurants',
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
//                     DataColumn(label: Text('Restaurant Name')),
//                     DataColumn(label: Text('Registered ID')),
//                     DataColumn(label: Text('Restaurant Status')),
//                     DataColumn(label: Text('Brands')),
//                     DataColumn(label: Text(' Seating Capacity')),
//                     DataColumn(label: Text(' Action')),
                    
//                   ],
//                   rows: orders.map((order) {
//                     return DataRow(cells: [
//                       DataCell(Text(order['restaurantname'])),
//                       DataCell(Text(order['registerno'].toString())),
//                       DataCell(Text(order['status'])),
//                       DataCell(Text(order['brands'])),
//                       DataCell(Text(order['seatingcapacity'].toString())),
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

import 'package:agthia/Admin_pages/adminChangepassword.dart';
import 'package:agthia/backend_pages/backend_new/loginpage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ApprovalRestaurant extends StatefulWidget {
  ApprovalRestaurant({super.key});

  @override
  State<ApprovalRestaurant> createState() => _ApprovalRestaurantState();
}

class _ApprovalRestaurantState extends State<ApprovalRestaurant> {
  final CollectionReference restaurants =
      FirebaseFirestore.instance.collection('restaurants');

  Future<void> approveRestaurant(String id, String adminId) async {
    await restaurants.doc(id).update({
      'status': 'active',
      'approvedBy': adminId,
      'updatedAt': FieldValue.serverTimestamp(),
    });
  }

  Future<void> rejectRestaurant(String id) async {
    await restaurants.doc(id).delete();
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
            child: Row(
              children: [
                CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 188, 187, 187),
                    child: Icon(Icons.person,
                        color: Colors.white)), // Profile Icon
                SizedBox(width: 5),
                Text(
                  "ADMIN",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5),
                Icon(Icons.arrow_drop_down)
              ],
            ),
            onSelected: (value) {
              if (value == 'change_password') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Adminchangepassword()));
                // Navigate to change password screen
              } else if (value == 'logout') {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
                // Perform logout action
              }
            },
            itemBuilder: (BuildContext context) => [
              // Title Item (Non-clickable)
              PopupMenuItem<String>(
                enabled: false,
                child: Text(
                  "ADMIN",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              PopupMenuDivider(),

              // Change Password
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

              // Logout
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
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child:
                Image.asset("asset/background_image1.jpg", fit: BoxFit.cover),
          ),
          Column(
            children: [
              Text(
                "Registered Restaurant",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
              Expanded(
                child: StreamBuilder<QuerySnapshot>(
                  stream: restaurants
                      .where('status', isEqualTo: 'pending')
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return Center(child: CircularProgressIndicator());
                    }

                    var docs = snapshot.data!.docs;

                    if (docs.isEmpty) {
                      return Center(
                        child: Text("No pending restaurants",style: TextStyle(color: Colors.white,fontSize: 20),),
                      );
                    }

                    return ListView.builder(
                      itemCount: docs.length,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        var data = docs[index].data() as Map<String, dynamic>;

                        return Card(
                          child: ListTile(
                            title: Text(data['name'] ?? 'No Name'),
                            subtitle: Text(data['brandType'] ?? 'No Type'),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("Accept",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                IconButton(
                                  icon: Icon(Icons.check, color: Colors.green),
                                  onPressed: () => approveRestaurant(
                                      docs[index].id, "admin123"),
                                ),
                                Text("Reject",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                IconButton(
                                  icon: Icon(Icons.close, color: Colors.red),
                                  onPressed: () =>
                                      rejectRestaurant(docs[index].id),
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
              ContactSectionWidget(),
            ],
          ),
        ],
      ),

//       Container(
//         width: double.infinity,
//         height: double.infinity,
//         //color: Color.fromARGB(255, 207, 198, 198),
//         decoration: BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage("asset/background_image1.jpg"),
//                 fit: BoxFit.cover)),
//         child: Column(
//           children: [
//             SingleChildScrollView(
//               child: Column(
//                 children: [
//                   SizedBox(height: 20),
//                   Text(
//                     'Registered Restaurants',
//                     style: TextStyle(
//                         fontSize: 22,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white),
//                   ),
//                   SizedBox(height: 30),
//                   SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: StreamBuilder<QuerySnapshot>(
//                       stream: restaurants
//                           .where('status', isEqualTo: 'pending')
//                           .snapshots(),
//                       builder: (context, snapshot) {
//                         if (!snapshot.hasData)
//                           return Center(child: CircularProgressIndicator());

//                         var docs = snapshot.data!.docs;

//                         return ListView.builder(
//                           itemCount: docs.length,
//                           itemBuilder: (context, index) {
//                             var data =
//                                 docs[index].data() as Map<String, dynamic>;

//                             return Card(
//                               child: ListTile(
//                                 title: Text(data['name']),
//                                 subtitle: Text(data['brandType']),
//                                 trailing: Row(
//                                   mainAxisSize: MainAxisSize.min,
//                                   children: [
//                                     IconButton(
//                                       icon: Icon(Icons.check,
//                                           color: Colors.green),
//                                       onPressed: () => approveRestaurant(
//                                           docs[index].id, "admin123"),
//                                     ),
//                                     IconButton(
//                                       icon:
//                                           Icon(Icons.close, color: Colors.red),
//                                       onPressed: () =>
//                                           rejectRestaurant(docs[index].id),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             );
//                           },
//                         );
//                       },
//                     ),
//                   ),
//                   SizedBox(height: 100),
//                 ],
//               ),
//             ),
//             Positioned(bottom: 0, child: ContactSectionWidget())
//           ],
//         ),
//       ),
    );
  }
}

class ContactSectionWidget extends StatelessWidget {
  const ContactSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black,
      // padding: const EdgeInsets.symmetric(vertical: 16.0),
      // child: Column(
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     const Divider(color: Colors.white),
      //     const SizedBox(height: 10),
      //     const Text(
      //       "CONTACT",
      //       style: TextStyle(
      //           color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),
      //     ),
      //     const SizedBox(height: 10),
      //     const Text(
      //       "AL-SHARIQA TOWER\nFLOOR 7\nJABER AL MUBARAK STREET, BLOCK 2\nKUWAIT CITY",
      //       textAlign: TextAlign.center,
      //       style: TextStyle(color: Colors.white, fontSize: 14),
      //     ),
      //     const SizedBox(height: 15),
      //     const Text(
      //       "Join our mailing list for updates\nGet news & other events",
      //       textAlign: TextAlign.center,
      //       style: TextStyle(color: Colors.white70, fontSize: 14),
      //     ),
      //     const SizedBox(height: 10),
      //     Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 16.0),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           SizedBox(
      //             width: 300, // Adjusted for better responsiveness
      //             child: TextField(
      //               textAlign: TextAlign.center,
      //               decoration: InputDecoration(
      //                 hintText: "Email",
      //                 filled: true,
      //                 fillColor: Colors.white,
      //                 border: OutlineInputBorder(
      //                   borderRadius: BorderRadius.circular(8),
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //     const SizedBox(height: 15),
      //     Text(
      //       "22260445",
      //       style:
      //           TextStyle(color: Colors.pink[200], fontWeight: FontWeight.bold),
      //     ),
      //     Text(
      //       "INFO@AGTHIA-FOOD.COM.KW",
      //       style: TextStyle(color: Colors.pink[200]),
      //     ),
      //     const SizedBox(height: 10),
      //     const Divider(color: Colors.white),
      //     const SizedBox(height: 5),
      //     const Icon(Icons.copyright, color: Colors.white),
      //     const Text("Copyright", style: TextStyle(color: Colors.white)),
      //   ],
      // ),
    );
  }
}
