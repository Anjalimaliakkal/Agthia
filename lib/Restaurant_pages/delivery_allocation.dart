// import 'package:agthia/Restaurant_pages/Restaurant_changepassword.dart';
// import 'package:agthia/Restaurant_pages/Restaurant_viewdelivery.dart';
// import 'package:agthia/Restaurant_pages/Restaurant_vieworders.dart';
// import 'package:agthia/Restaurant_pages/assign_order.dart';
// import 'package:agthia/backend_pages/backend_new/loginpage.dart';
// import 'package:agthia/Restaurant_pages/restaurant_home.dart';
// import 'package:flutter/material.dart';

// class DeliveryAllocation extends StatefulWidget {

//    const DeliveryAllocation({super.key});

//   @override
//   State<DeliveryAllocation> createState() => _DeliveryAllocationState();
// }

// class _DeliveryAllocationState extends State<DeliveryAllocation> {
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
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => RestaurantHome()));
//               },
//             ),
//              ListTile(
//               title: Text("Add Restaurant",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => RestaurantHome()));
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
//                 'Allocate Delivery Personnels',
//                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white),
//               ),
//               SizedBox(height: 30),
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: DataTable(
//                   columnSpacing: 50,
//                   dataRowHeight: 60, // Adjust row height
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
//                     DataColumn(label: Text('Joined On')),
//                     DataColumn(label: Text('Allocation')),
                    
//                   ],
//                   rows: orders.map((order) {
//                     return DataRow(cells: [
//                       DataCell(Text(order['personelId'].toString())),
//                       DataCell(Text(order['name'])),
//                       DataCell(Text(order['email'])),
//                       DataCell(Text(order['username'])),
//                       DataCell(Text(order['joinedon'].toString())),
//                       DataCell(Column(
//                         children: [
//                           SizedBox(height: 10),
//                           ElevatedButton(
//                             onPressed: () {
//                               Navigator.push(context, MaterialPageRoute(builder: (context)=>AssignOrder()));
//                             },
//                             style: ElevatedButton.styleFrom(
//                               shape: BeveledRectangleBorder(),
//                                 backgroundColor: Colors.green),
//                             child: Text('Assign Order'),
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
//                             width: MediaQuery.of(context).size.width / 1.1,
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


// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class DeliveryAllocation extends StatefulWidget {
//   final String orderId;
//   DeliveryAllocation({required this.orderId});

//   @override
//   _DeliveryAllocationState createState() => _DeliveryAllocationState();
// }

// class _DeliveryAllocationState extends State<DeliveryAllocation> {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   // Function to assign a delivery boy to an order
//   Future<void> assignDeliveryBoy(String deliveryBoyId) async {
//     try {
//       // Get the order data from Firestore
//       DocumentSnapshot orderSnapshot =
//           await _firestore.collection('orders').doc(widget.orderId).get();

//       if (orderSnapshot.exists) {
//         Map<String, dynamic> orderData =
//             orderSnapshot.data() as Map<String, dynamic>;

//         String status = orderData['status'] ?? '';
//         if (status != 'Approved') {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(content: Text('Order has not been approved by the restaurant!')),
//           );
//           return;
//         }

//         // Get the delivery boy data from Firestore
//         DocumentSnapshot deliveryBoySnapshot =
//             await _firestore.collection('delivery_boys').doc(deliveryBoyId).get();

//         if (deliveryBoySnapshot.exists) {
//           Map<String, dynamic> deliveryBoyData =
//               deliveryBoySnapshot.data() as Map<String, dynamic>;

//           // Check if the delivery boy is active and available
//           if (deliveryBoyData['status'] != 'active') {
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(content: Text('This delivery boy is not active!')),
//             );
//             return;
//           }

//           if (deliveryBoyData['availability'] != 'available') {
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(content: Text('This delivery boy is not available!')),
//             );
//             return;
//           }

//           // Assign the delivery boy to the order and change the order status to 'Out for Delivery'
//           await _firestore.collection('orders').doc(widget.orderId).update({
//             'assignedDeliveryBoyId': deliveryBoyId,
//             'status': 'Out for Delivery', // Update order status
//           });

//           // Mark the delivery boy as busy
//           await _firestore.collection('delivery_boys').doc(deliveryBoyId).update({
//             'availability': 'busy', // Update delivery boy availability to busy
//           });

//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(content: Text('Delivery boy assigned successfully!')),
//           );
//         } else {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(content: Text('Delivery boy not found!')),
//           );
//         }
//       }
//     } catch (e) {
//       // Handle any errors here
//       print("Error assigning delivery boy: $e");
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Something went wrong. Please try again later.')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Assign Delivery Boy')),
//       body: StreamBuilder<QuerySnapshot>(
//         stream: _firestore
//             .collection('delivery_boys')
//             .where('availability', isEqualTo: 'available')
//             .where('status', isEqualTo: 'active')
//             .snapshots(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }

//           if (snapshot.hasError) {
//             return Center(
//               child: Text("Something went wrong: ${snapshot.error}"),
//             );
//           }

//           if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//             return Center(child: Text('No available delivery boys.'));
//           }

//           var deliveryBoys = snapshot.data!.docs;

//           return ListView.builder(
//             itemCount: deliveryBoys.length,
//             itemBuilder: (context, index) {
//               var deliveryBoy = deliveryBoys[index];

//               return Card(
//                 child: ListTile(
//                   title: Text(deliveryBoy['name']),
//                   subtitle: Text(deliveryBoy['email']),
//                   trailing: ElevatedButton(
//                     onPressed: () {
//                       assignDeliveryBoy(deliveryBoy.id);
//                     },
//                     child: Text('Assign'),
//                   ),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }


// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class DeliveryAllocation extends StatefulWidget {
//   final String orderId;
//   DeliveryAllocation({required this.orderId});

//   @override
//   _DeliveryAllocationState createState() => _DeliveryAllocationState();
// }

// class _DeliveryAllocationState extends State<DeliveryAllocation> {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   // Function to assign a delivery boy to an order
//   Future<void> assignDeliveryBoy(String deliveryBoyId) async {
//     try {
//       // Get the order data from Firestore
//       DocumentSnapshot orderSnapshot =
//           await _firestore.collection('orders').doc(widget.orderId).get();

//       if (orderSnapshot.exists) {
//         Map<String, dynamic> orderData =
//             orderSnapshot.data() as Map<String, dynamic>;

//         String status = orderData['status'] ?? '';
//         if (status != 'Approved') {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(content: Text('Order has not been approved by the restaurant!')),
//           );
//           return;
//         }

//         // Get the delivery boy data from Firestore
//         DocumentSnapshot deliveryBoySnapshot =
//             await _firestore.collection('delivery_boys').doc(deliveryBoyId).get();

//         if (deliveryBoySnapshot.exists) {
//           Map<String, dynamic> deliveryBoyData =
//               deliveryBoySnapshot.data() as Map<String, dynamic>;

//           // Check if the delivery boy is active and available
//           if (deliveryBoyData['status'] != 'active') {
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(content: Text('This delivery boy is not active!')),
//             );
//             return;
//           }

//           if (deliveryBoyData['availability'] != 'available') {
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(content: Text('This delivery boy is not available!')),
//             );
//             return;
//           }

//           // Assign the delivery boy to the order and change the order status to 'Out for Delivery'
//           await _firestore.collection('orders').doc(widget.orderId).update({
//             'assignedDeliveryBoyId': deliveryBoyId,
//             'status': 'Out for Delivery', // Update order status
//           });

//           // Mark the delivery boy as busy
//           await _firestore.collection('delivery_boys').doc(deliveryBoyId).update({
//             'availability': 'busy', // Update delivery boy availability to busy
//           });

//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(content: Text('Delivery boy assigned successfully!')),
//           );
//         } else {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(content: Text('Delivery boy not found!')),
//           );
//         }
//       }
//     } catch (e) {
//       // Handle any errors here
//       print("Error assigning delivery boy: $e");
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Something went wrong. Please try again later.')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Assign Delivery Boy')),
//       body: StreamBuilder<QuerySnapshot>(
//         stream: _firestore
//             .collection('delivery_boys')
//             .where('availability', isEqualTo: 'available')
//             .where('status', isEqualTo: 'active')
//             .snapshots(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }

//           if (snapshot.hasError) {
//             return Center(
//               child: Text("Something went wrong: ${snapshot.error}"),
//             );
//           }

//           if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//             return Center(child: Text('No available delivery boys.'));
//           }

//           var deliveryBoys = snapshot.data!.docs;

//           return ListView.builder(
//             itemCount: deliveryBoys.length,
//             itemBuilder: (context, index) {
//               var deliveryBoy = deliveryBoys[index];

//               return Card(
//                 child: ListTile(
//                   title: Text(deliveryBoy['name']),
//                   subtitle: Text(deliveryBoy['email']),
//                   trailing: ElevatedButton(
//                     onPressed: () {
//                       assignDeliveryBoy(deliveryBoy.id);
//                     },
//                     child: Text('Assign'),
//                   ),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }


// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class DeliveryAllocation extends StatefulWidget {
//   final String orderId;
//   DeliveryAllocation({required this.orderId});

//   @override
//   _DeliveryAllocationState createState() => _DeliveryAllocationState();
// }

// class _DeliveryAllocationState extends State<DeliveryAllocation> {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   // Function to assign a delivery boy to an order
//   Future<void> assignDeliveryBoy(String deliveryBoyId) async {
//     try {
//       // Get the order data from Firestore
//       DocumentSnapshot orderSnapshot =
//           await _firestore.collection('orders').doc(widget.orderId).get();

//       if (orderSnapshot.exists) {
//         Map<String, dynamic> orderData =
//             orderSnapshot.data() as Map<String, dynamic>;

//         String status = orderData['status'] ?? '';
//         if (status != 'Approved') {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(content: Text('Order has not been approved by the restaurant!')),
//           );
//           return;
//         }

//         // Get the delivery boy data from Firestore
//         DocumentSnapshot deliveryBoySnapshot =
//             await _firestore.collection('delivery_boys').doc(deliveryBoyId).get();

//         if (deliveryBoySnapshot.exists) {
//           Map<String, dynamic> deliveryBoyData =
//               deliveryBoySnapshot.data() as Map<String, dynamic>;

//           // Check if the delivery boy is active and available
//           if (deliveryBoyData['status'] != 'active') {
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(content: Text('This delivery boy is not active!')),
//             );
//             return;
//           }

//           if (deliveryBoyData['availability'] != 'available') {
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(content: Text('This delivery boy is not available!')),
//             );
//             return;
//           }

//           // Assign the delivery boy to the order and change the order status to 'Out for Delivery'
//           await _firestore.collection('orders').doc(widget.orderId).update({
//             'assignedDeliveryBoyId': deliveryBoyId,
//             'status': 'Out for Delivery', // Update order status
//           });

//           // Mark the delivery boy as busy
//           await _firestore.collection('delivery_boys').doc(deliveryBoyId).update({
//             'availability': 'busy', // Update delivery boy availability to busy
//           });

//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(content: Text('Delivery boy assigned successfully!')),
//           );
//         } else {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(content: Text('Delivery boy not found!')),
//           );
//         }
//       }
//     } catch (e) {
//       // Handle any errors here
//       print("Error assigning delivery boy: $e");
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Something went wrong. Please try again later.')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Assign Delivery Boy')),
//       body: StreamBuilder<QuerySnapshot>(
//         stream: _firestore
//             .collection('delivery_boys')
//             .where('availability', isEqualTo: 'available')
//             .where('status', isEqualTo: 'active')
//             .snapshots(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }

//           if (snapshot.hasError) {
//             return Center(
//               child: Text("Something went wrong: ${snapshot.error}"),
//             );
//           }

//           if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//             return Center(child: Text('No available delivery boys.'));
//           }

//           var deliveryBoys = snapshot.data!.docs;

//           return ListView.builder(
//             itemCount: deliveryBoys.length,
//             itemBuilder: (context, index) {
//               var deliveryBoy = deliveryBoys[index];

//               return Card(
//                 child: ListTile(
//                   title: Text(deliveryBoy['name']),
//                   subtitle: Text(deliveryBoy['email']),
//                   trailing: ElevatedButton(
//                     onPressed: () {
//                       assignDeliveryBoy(deliveryBoy.id);
//                     },
//                     child: Text('Assign'),
//                   ),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }


// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// // This screen displays the list of orders.
// class OrderListScreen extends StatelessWidget {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Orders')),
//       body: StreamBuilder<QuerySnapshot>(
//         stream: _firestore.collection('orders').snapshots(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }

//           if (snapshot.hasError) {
//             return Center(child: Text("Something went wrong: ${snapshot.error}"));
//           }

//           if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//             return Center(child: Text('No orders available.'));
//           }

//           var orders = snapshot.data!.docs;

//           return ListView.builder(
//             itemCount: orders.length,
//             itemBuilder: (context, index) {
//               var order = orders[index];
//               var orderId = order.id; // This is the actual orderId you need

//               return Card(
//                 child: ListTile(
//                   title: Text(order['name']), // Example: order name
//                   subtitle: Text(order['status']), // Example: order status
//                   onTap: () {
//                     // When tapped, navigate to the DeliveryAllocation screen
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => DeliveryAllocation(orderId: orderId),
//                       ),
//                     );
//                   },
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// // This screen handles the delivery boy assignment for a specific order.
// class DeliveryAllocation extends StatefulWidget {
//   final String orderId;
//   DeliveryAllocation({required this.orderId, Key? key}) : super(key: key);

//   @override
//   _DeliveryAllocationState createState() => _DeliveryAllocationState();
// }

// class _DeliveryAllocationState extends State<DeliveryAllocation> {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   // Function to assign a delivery boy to an order
//   Future<void> assignDeliveryBoy(String deliveryBoyId) async {
//     try {
//       // Get the order data from Firestore using the actual orderId
//       DocumentSnapshot orderSnapshot =
//           await _firestore.collection('orders').doc(widget.orderId).get();

//       if (!orderSnapshot.exists) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Order not found!')),
//         );
//         return;
//       }

//       Map<String, dynamic> orderData = orderSnapshot.data() as Map<String, dynamic>;

//       String status = orderData['status'] ?? '';
//       if (status != 'Approved') {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Order has not been approved by the restaurant!')),
//         );
//         return;
//       }

//       // Get the delivery boy data from Firestore
//       DocumentSnapshot deliveryBoySnapshot =
//           await _firestore.collection('delivery_boys').doc(deliveryBoyId).get();

//       if (!deliveryBoySnapshot.exists) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Delivery boy not found!')),
//         );
//         return;
//       }

//       Map<String, dynamic> deliveryBoyData =
//           deliveryBoySnapshot.data() as Map<String, dynamic>;

//       // Check if the delivery boy is active and available
//       if (deliveryBoyData['status'] != 'active') {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('This delivery boy is not active!')),
//         );
//         return;
//       }

//       if (deliveryBoyData['availability'] != 'available') {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('This delivery boy is not available!')),
//         );
//         return;
//       }

//       // Assign the delivery boy to the order and change the order status to 'Out for Delivery'
//       await _firestore.collection('orders').doc(widget.orderId).update({
//         'assignedDeliveryBoyId': deliveryBoyId,
//         'status': 'Out for Delivery', // Update order status
//       }).then((_) {
//         print("Order updated successfully!");
//       }).catchError((error) {
//         print("Error updating order: $error");
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Failed to update order!')),
//         );
//       });

//       // Mark the delivery boy as busy
//       await _firestore.collection('delivery_boys').doc(deliveryBoyId).update({
//         'availability': 'busy', // Update delivery boy availability to busy
//       }).then((_) {
//         print("Delivery boy marked as busy!");
//       }).catchError((error) {
//         print("Error marking delivery boy as busy: $error");
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Failed to update delivery boy!')),
//         );
//       });

//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Delivery boy assigned successfully!')),
//       );
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Something went wrong. Please try again later.')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Assign Delivery Boy')),
//       body: StreamBuilder<QuerySnapshot>(
//         stream: _firestore
//             .collection('delivery_boys')
//             .where('availability', isEqualTo: 'available')
//             .where('status', isEqualTo: 'active')
//             .snapshots(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }

//           if (snapshot.hasError) {
//             return Center(child: Text("Something went wrong: ${snapshot.error}"));
//           }

//           if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//             return Center(child: Text('No available delivery boys.'));
//           }

//           var deliveryBoys = snapshot.data!.docs;

//           return ListView.builder(
//             itemCount: deliveryBoys.length,
//             itemBuilder: (context, index) {
//               var deliveryBoy = deliveryBoys[index];

//               return Card(
//                 child: ListTile(
//                   title: Text(deliveryBoy['name']),
//                   subtitle: Text(deliveryBoy['email']),
//                   onTap: () {
//                     // Assign the selected delivery boy
//                     assignDeliveryBoy(deliveryBoy.id);
//                   },
//                   trailing: ElevatedButton(
//                     onPressed: () {
//                       // Assign the selected delivery boy
//                       assignDeliveryBoy(deliveryBoy.id);
//                     },
//                     child: Text('Assign'),
//                   ),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }


// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// // This screen displays the list of orders.
// class OrderListScreen extends StatelessWidget {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Orders')),
//       body: StreamBuilder<QuerySnapshot>(
//         stream: _firestore.collection('orders').snapshots(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }

//           if (snapshot.hasError) {
//             return Center(child: Text("Something went wrong: ${snapshot.error}"));
//           }

//           if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//             return Center(child: Text('No orders available.'));
//           }

//           var orders = snapshot.data!.docs;

//           return ListView.builder(
//             itemCount: orders.length,
//             itemBuilder: (context, index) {
//               var order = orders[index];
//               var orderId = order.id; // This is the actual `orderId` you need

//               return Card(
//                 child: ListTile(
//                   title: Text(order['name']), // Example: order name
//                   subtitle: Text(order['status'] ?? 'Status not available'), // Safely access 'status'
//                   onTap: () {
//                     // When tapped, navigate to the DeliveryAllocation screen
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => DeliveryAllocation(orderId: orderId),
//                       ),
//                     );
//                   },
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// // This screen handles the delivery boy assignment for a specific order.
// class DeliveryAllocation extends StatefulWidget {
//   final String orderId;
//   DeliveryAllocation({required this.orderId, Key? key}) : super(key: key);

//   @override
//   _DeliveryAllocationState createState() => _DeliveryAllocationState();
// }

// class _DeliveryAllocationState extends State<DeliveryAllocation> {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   // Function to assign a delivery boy to an order
//   Future<void> assignDeliveryBoy(String deliveryBoyId) async {
//     try {
//       // Get the order data from Firestore using the actual orderId
//       DocumentSnapshot orderSnapshot =
//           await _firestore.collection('orders').doc(widget.orderId).get();

//       if (!orderSnapshot.exists) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Order not found!')),
//         );
//         return;
//       }

//       Map<String, dynamic> orderData = orderSnapshot.data() as Map<String, dynamic>;

//       // Safely check if 'status' field exists
//       String status = orderData.containsKey('status') ? orderData['status'] : '';
//       if (status != 'Approved') {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Order has not been approved by the restaurant!')),
//         );
//         return;
//       }

//       // Get the delivery boy data from Firestore
//       DocumentSnapshot deliveryBoySnapshot =
//           await _firestore.collection('delivery_boys').doc(deliveryBoyId).get();

//       if (!deliveryBoySnapshot.exists) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Delivery boy not found!')),
//         );
//         return;
//       }

//       Map<String, dynamic> deliveryBoyData =
//           deliveryBoySnapshot.data() as Map<String, dynamic>;

//       // Check if the delivery boy is active and available
//       if (deliveryBoyData['status'] != 'active') {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('This delivery boy is not active!')),
//         );
//         return;
//       }

//       if (deliveryBoyData['availability'] != 'available') {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('This delivery boy is not available!')),
//         );
//         return;
//       }

//       // Assign the delivery boy to the order and change the order status to 'Out for Delivery'
//       await _firestore.collection('orders').doc(widget.orderId).update({
//         'assignedDeliveryBoyId': deliveryBoyId,
//         'status': 'Out for Delivery', // Update order status
//       }).then((_) {
//         print("Order updated successfully!");
//       }).catchError((error) {
//         print("Error updating order: $error");
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Failed to update order!')),
//         );
//       });

//       // Mark the delivery boy as busy
//       await _firestore.collection('delivery_boys').doc(deliveryBoyId).update({
//         'availability': 'busy', // Update delivery boy availability to busy
//       }).then((_) {
//         print("Delivery boy marked as busy!");
//       }).catchError((error) {
//         print("Error marking delivery boy as busy: $error");
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Failed to update delivery boy!')),
//         );
//       });

//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Delivery boy assigned successfully!')),
//       );
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Something went wrong. Please try again later.')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Assign Delivery Boy')),
//       body: StreamBuilder<QuerySnapshot>(
//         stream: _firestore
//             .collection('delivery_boys')
//             .where('availability', isEqualTo: 'available')
//             .where('status', isEqualTo: 'active')
//             .snapshots(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }

//           if (snapshot.hasError) {
//             return Center(child: Text("Something went wrong: ${snapshot.error}"));
//           }

//           if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//             return Center(child: Text('No available delivery boys.'));
//           }

//           var deliveryBoys = snapshot.data!.docs;

//           return ListView.builder(
//             itemCount: deliveryBoys.length,
//             itemBuilder: (context, index) {
//               var deliveryBoy = deliveryBoys[index];

//               return Card(
//                 child: ListTile(
//                   title: Text(deliveryBoy['name']),
//                   subtitle: Text(deliveryBoy['email']),
//                   onTap: () {
//                     // Assign the selected delivery boy
//                     assignDeliveryBoy(deliveryBoy.id);
//                   },
//                   trailing: ElevatedButton(
//                     onPressed: () {
//                       // Assign the selected delivery boy
//                       assignDeliveryBoy(deliveryBoy.id);
//                     },
//                     child: Text('Assign'),
//                   ),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }


// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class OrderListScreen extends StatelessWidget {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Orders')),
//       body: StreamBuilder<QuerySnapshot>(
//         stream: _firestore.collection('orders').snapshots(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }

//           if (snapshot.hasError) {
//             return Center(child: Text("Error: ${snapshot.error}"));
//           }

//           if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//             return Center(child: Text('No orders available.'));
//           }

//           var orders = snapshot.data!.docs;

//           return ListView.builder(
//             itemCount: orders.length,
//             itemBuilder: (context, index) {
//               var order = orders[index];
//               var orderId = order.id;

//               return Card(
//                 child: ListTile(
//                   title: Text(order['name'] ?? 'No Name'),
//                   subtitle: Text(order['status'] ?? 'No Status'),
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => DeliveryAllocation(orderId: orderId),
//                       ),
//                     );
//                   },
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// class DeliveryAllocation extends StatefulWidget {
//   final String orderId;
//   DeliveryAllocation({required this.orderId, Key? key}) : super(key: key);

//   @override
//   _DeliveryAllocationState createState() => _DeliveryAllocationState();
// }

// class _DeliveryAllocationState extends State<DeliveryAllocation> {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   Future<void> assignDeliveryBoy(String deliveryBoyId) async {
//     try {
//       DocumentSnapshot orderSnapshot =
//           await _firestore.collection('orders').doc(widget.orderId).get();

//       if (!orderSnapshot.exists) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Order not found!')),
//         );
//         return;
//       }

//       Map<String, dynamic> orderData = orderSnapshot.data() as Map<String, dynamic>;
//       String status = orderData.containsKey('status') ? orderData['status'] : '';

//       if (status != 'Approved') {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Order is not approved by the restaurant!')),
//         );
//         return;
//       }

//       DocumentSnapshot deliveryBoySnapshot =
//           await _firestore.collection('delivery_boys').doc(deliveryBoyId).get();

//       if (!deliveryBoySnapshot.exists) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Delivery boy not found!')),
//         );
//         return;
//       }

//       Map<String, dynamic> deliveryBoyData =
//           deliveryBoySnapshot.data() as Map<String, dynamic>;

//       if (deliveryBoyData['status'] != 'active') {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('This delivery boy is not active!')),
//         );
//         return;
//       }

//       if (deliveryBoyData['availability'] != 'available') {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('This delivery boy is not available!')),
//         );
//         return;
//       }

//       await _firestore.collection('orders').doc(widget.orderId).update({
//         'assignedDeliveryBoyId': deliveryBoyId,
//         'status': 'Out for Delivery',
//       });

//       await _firestore.collection('delivery_boys').doc(deliveryBoyId).update({
//         'availability': 'busy',
//       });

//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Delivery boy assigned successfully!')),
//       );
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Something went wrong. Try again later.')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Assign Delivery Boy')),
//       body: StreamBuilder<QuerySnapshot>(
//         stream: _firestore
//             .collection('delivery_boys')
//             .where('availability', isEqualTo: 'available')
//             .where('status', isEqualTo: 'active')
//             .snapshots(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }

//           if (snapshot.hasError) {
//             return Center(child: Text("Error: ${snapshot.error}"));
//           }

//           if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//             return Center(child: Text('No available delivery boys.'));
//           }

//           var deliveryBoys = snapshot.data!.docs;

//           return ListView.builder(
//             itemCount: deliveryBoys.length,
//             itemBuilder: (context, index) {
//               var deliveryBoy = deliveryBoys[index];

//               return Card(
//                 child: ListTile(
//                   title: Text(deliveryBoy['name']),
//                   subtitle: Text(deliveryBoy['email']),
//                   trailing: ElevatedButton(
//                     onPressed: () {
//                       assignDeliveryBoy(deliveryBoy.id);
//                     },
//                     child: Text('Assign'),
//                   ),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }



// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// // This screen displays the list of orders.
// class OrderListScreen extends StatelessWidget {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Orders')),
//       body: StreamBuilder<QuerySnapshot>(
//         stream: _firestore.collection('orders').snapshots(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }

//           if (snapshot.hasError) {
//             return Center(child: Text("Something went wrong: ${snapshot.error}"));
//           }

//           if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//             return Center(child: Text('No orders available.'));
//           }

//           var orders = snapshot.data!.docs;

//           return ListView.builder(
//             itemCount: orders.length,
//             itemBuilder: (context, index) {
//               var order = orders[index];
//               var orderId = order.id; // This is the actual `orderId` you need

//               return Card(
//                 child: ListTile(
//                   title: Text(order['name']), // Example: order name
//                   subtitle: Text(order['status'] ?? 'Status not available'), // Safely access 'status'
//                   onTap: () {
//                     // When tapped, navigate to the DeliveryAllocation screen
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => DeliveryAllocation(orderId: orderId),
//                       ),
//                     );
//                   },
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// // This screen handles the delivery boy assignment for a specific order.
// class DeliveryAllocation extends StatefulWidget {
//   final String orderId;
//   DeliveryAllocation({required this.orderId, Key? key}) : super(key: key);

//   @override
//   _DeliveryAllocationState createState() => _DeliveryAllocationState();
// }

// class _DeliveryAllocationState extends State<DeliveryAllocation> {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   // Function to assign a delivery boy to an order
//   Future<void> assignDeliveryBoy(String deliveryBoyId) async {
//     try {
//       // Get the order data from Firestore using the actual orderId
//       DocumentSnapshot orderSnapshot =
//           await _firestore.collection('orders').doc(widget.orderId).get();

//       if (!orderSnapshot.exists) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Order not found!')),
//         );
//         return;
//       }

//       Map<String, dynamic> orderData = orderSnapshot.data() as Map<String, dynamic>;

//       // Safely check if 'status' field exists
//       String status = orderData.containsKey('status') ? orderData['status'] : '';
//       if (status != 'Approved') {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Order has not been approved by the restaurant!')),
//         );
//         return;
//       }

//       // Get the delivery boy data from Firestore
//       DocumentSnapshot deliveryBoySnapshot =
//           await _firestore.collection('delivery_boys').doc(deliveryBoyId).get();

//       if (!deliveryBoySnapshot.exists) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Delivery boy not found!')),
//         );
//         return;
//       }

//       Map<String, dynamic> deliveryBoyData =
//           deliveryBoySnapshot.data() as Map<String, dynamic>;

//       // Check if the delivery boy is active and available
//       if (deliveryBoyData['status'] != 'active') {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('This delivery boy is not active!')),
//         );
//         return;
//       }

//       if (deliveryBoyData['availability'] != 'available') {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('This delivery boy is not available!')),
//         );
//         return;
//       }

//       // Assign the delivery boy to the order and change the order status to 'Out for Delivery'
//       await _firestore.collection('orders').doc(widget.orderId).update({
//         'assignedDeliveryBoyId': deliveryBoyId,
//         'status': 'Out for Delivery', // Update order status
//       }).then((_) {
//         print("Order updated successfully!");
//       }).catchError((error) {
//         print("Error updating order: $error");
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Failed to update order!')),
//         );
//       });

//       // Mark the delivery boy as busy
//       await _firestore.collection('delivery_boys').doc(deliveryBoyId).update({
//         'availability': 'busy', // Update delivery boy availability to busy
//       }).then((_) {
//         print("Delivery boy marked as busy!");
//       }).catchError((error) {
//         print("Error marking delivery boy as busy: $error");
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Failed to update delivery boy!')),
//         );
//       });

//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Delivery boy assigned successfully!')),
//       );
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Something went wrong. Please try again later.')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Assign Delivery Boy')),
//       body: StreamBuilder<QuerySnapshot>(
//         stream: _firestore
//             .collection('delivery_boys')
//             .where('availability', isEqualTo: 'available')
//             .where('status', isEqualTo: 'active')
//             .snapshots(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }

//           if (snapshot.hasError) {
//             return Center(child: Text("Something went wrong: ${snapshot.error}"));
//           }

//           if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//             return Center(child: Text('No available delivery boys.'));
//           }

//           var deliveryBoys = snapshot.data!.docs;

//           return ListView.builder(
//             itemCount: deliveryBoys.length,
//             itemBuilder: (context, index) {
//               var deliveryBoy = deliveryBoys[index];

//               return Card(
//                 child: ListTile(
//                   title: Text(deliveryBoy['name']),
//                   subtitle: Text(deliveryBoy['email']),
//                   onTap: () {
//                     // Assign the selected delivery boy
//                     assignDeliveryBoy(deliveryBoy.id);
//                   },
//                   trailing: ElevatedButton(
//                     onPressed: () {
//                       // Assign the selected delivery boy
//                       assignDeliveryBoy(deliveryBoy.id);
//                     },
//                     child: Text('Assign'),
//                   ),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }



// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'delivery_allocation.dart'; // Import the allocation screen

// class OrderListScreen extends StatelessWidget {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Orders')),
//       body: StreamBuilder<QuerySnapshot>(
//         stream: _firestore.collection('orders').snapshots(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }

//           if (snapshot.hasError) {
//             return Center(child: Text("Something went wrong: ${snapshot.error}"));
//           }

//           if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//             return Center(child: Text('No orders available.'));
//           }

//           var orders = snapshot.data!.docs;

//           return ListView.builder(
//             itemCount: orders.length,
//             itemBuilder: (context, index) {
//               var order = orders[index];
//               var orderId = order.id; // Get the orderId

//               return Card(
//                 child: ListTile(
//                   title: Text(order['name'] ?? 'Unknown Order'),
//                   subtitle: Text(order['status'] ?? 'Status not available'),
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => DeliveryAllocation(orderId: orderId),
//                       ),
//                     );
//                   },
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }


// class DeliveryAllocation extends StatefulWidget {
//   final String orderId;
//   DeliveryAllocation({required this.orderId, Key? key}) : super(key: key);

//   @override
//   _DeliveryAllocationState createState() => _DeliveryAllocationState();
// }

// class _DeliveryAllocationState extends State<DeliveryAllocation> {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   // Function to assign a delivery boy to an order
//   Future<void> assignDeliveryBoy(String deliveryBoyId) async {
//     try {
//       print("Assigning delivery boy: $deliveryBoyId to order: ${widget.orderId}");

//       // Fetch order details
//       DocumentSnapshot orderSnapshot =
//           await _firestore.collection('orders').doc(widget.orderId).get();

//       if (!orderSnapshot.exists) {
//         print("Error: Order not found!");
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Order not found!')));
//         return;
//       }

//       Map<String, dynamic> orderData = orderSnapshot.data() as Map<String, dynamic>;

//       if (orderData['status'] != 'Approved') {
//         print("Error: Order is not approved!");
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Order not approved!')));
//         return;
//       }

//       // Fetch delivery boy details
//       DocumentSnapshot deliveryBoySnapshot =
//           await _firestore.collection('delivery_boys').doc(deliveryBoyId).get();

//       if (!deliveryBoySnapshot.exists) {
//         print("Error: Delivery boy not found!");
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Delivery boy not found!')));
//         return;
//       }

//       Map<String, dynamic> deliveryBoyData =
//           deliveryBoySnapshot.data() as Map<String, dynamic>;

//       if (deliveryBoyData['status'] != 'active' || deliveryBoyData['availability'] != 'available') {
//         print("Error: Delivery boy is not available!");
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Delivery boy is not available!')));
//         return;
//       }

//       // Assign delivery boy and update order status
//       await _firestore.collection('orders').doc(widget.orderId).update({
//         'assignedDeliveryBoyId': deliveryBoyId,
//         'status': 'Out for Delivery',
//       });

//       // Update delivery boy's availability to 'busy'
//       await _firestore.collection('delivery_boys').doc(deliveryBoyId).update({
//         'availability': 'busy',
//       });

//       print("Success: Delivery boy assigned!");
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Delivery boy assigned!')));
//       Navigator.pop(context); // Go back after assignment
//     } catch (e) {
//       print("Error: $e");
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Something went wrong!')));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Assign Delivery Boy')),
//       body: StreamBuilder<QuerySnapshot>(
//         stream: _firestore
//             .collection('delivery_boys')
//             .where('availability', isEqualTo: 'available')
//             .where('status', isEqualTo: 'active')
//             .snapshots(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }

//           if (snapshot.hasError) {
//             return Center(child: Text("Something went wrong: ${snapshot.error}"));
//           }

//           if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//             return Center(child: Text('No available delivery boys.'));
//           }

//           var deliveryBoys = snapshot.data!.docs;

//           return ListView.builder(
//             itemCount: deliveryBoys.length,
//             itemBuilder: (context, index) {
//               var deliveryBoy = deliveryBoys[index];

//               return Card(
//                 child: ListTile(
//                   title: Text(deliveryBoy['name']),
//                   subtitle: Text(deliveryBoy['email']),
//                   onTap: () {
//                     assignDeliveryBoy(deliveryBoy.id);
//                   },
//                   trailing: ElevatedButton(
//                     onPressed: () {
//                       assignDeliveryBoy(deliveryBoy.id);
//                     },
//                     child: Text('Assign'),
//                   ),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }


// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'delivery_allocation.dart'; // Import the allocation screen

// class OrderListScreen extends StatelessWidget {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Orders', style: TextStyle(fontWeight: FontWeight.bold)),
//         centerTitle: true,
//       ),
//       body: StreamBuilder<QuerySnapshot>(
//         stream: _firestore.collection('orders').snapshots(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }

//           if (snapshot.hasError) {
//             return Center(child: Text("Something went wrong: ${snapshot.error}"));
//           }

//           if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//             return Center(child: Text('No orders available.', style: TextStyle(fontSize: 16)));
//           }

//           var orders = snapshot.data!.docs;

//           return ListView.builder(
//             padding: EdgeInsets.all(10),
//             itemCount: orders.length,
//             itemBuilder: (context, index) {
//               var order = orders[index];
//               var orderId = order.id;

//               return Card(
//                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//                 elevation: 5,
//                 margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
//                 child: ListTile(
//                   contentPadding: EdgeInsets.all(12),
//                   title: Text(order['name'] ?? 'Unknown Order',
//                       style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
//                   subtitle: Text(order['status'] ?? 'Status not available',
//                       style: TextStyle(fontSize: 14, color: Colors.grey[600])),
//                   trailing: Icon(Icons.arrow_forward_ios, color: Colors.blueAccent),
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => DeliveryAllocation(orderId: orderId),
//                       ),
//                     );
//                   },
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// class DeliveryAllocation extends StatefulWidget {
//   final String orderId;
//   DeliveryAllocation({required this.orderId, Key? key}) : super(key: key);

//   @override
//   _DeliveryAllocationState createState() => _DeliveryAllocationState();
// }

// class _DeliveryAllocationState extends State<DeliveryAllocation> {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   Future<void> assignDeliveryBoy(String deliveryBoyId) async {
//     try {
//       print("Assigning delivery boy: $deliveryBoyId to order: ${widget.orderId}");
//       DocumentSnapshot orderSnapshot =
//           await _firestore.collection('orders').doc(widget.orderId).get();

//       if (!orderSnapshot.exists) {
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Order not found!')));
//         return;
//       }

//       Map<String, dynamic> orderData = orderSnapshot.data() as Map<String, dynamic>;

//       if (orderData['status'] != 'Approved') {
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Order not approved!')));
//         return;
//       }

//       DocumentSnapshot deliveryBoySnapshot =
//           await _firestore.collection('delivery_boys').doc(deliveryBoyId).get();

//       if (!deliveryBoySnapshot.exists) {
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Delivery boy not found!')));
//         return;
//       }

//       Map<String, dynamic> deliveryBoyData =
//           deliveryBoySnapshot.data() as Map<String, dynamic>;

//       if (deliveryBoyData['status'] != 'active' || deliveryBoyData['availability'] != 'available') {
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Delivery boy is not available!')));
//         return;
//       }

//       await _firestore.collection('orders').doc(widget.orderId).update({
//         'assignedDeliveryBoyId': deliveryBoyId,
//         'status': 'Out for Delivery',
//       });

//       await _firestore.collection('delivery_boys').doc(deliveryBoyId).update({
//         'availability': 'busy',
//       });

//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Delivery boy assigned!')));
//       Navigator.pop(context);
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Something went wrong!')));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Assign Delivery Boy', style: TextStyle(fontWeight: FontWeight.bold))),
//       body: StreamBuilder<QuerySnapshot>(
//         stream: _firestore
//             .collection('delivery_boys')
//             .where('availability', isEqualTo: 'available')
//             .where('status', isEqualTo: 'active')
//             .snapshots(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }

//           if (snapshot.hasError) {
//             return Center(child: Text("Something went wrong: ${snapshot.error}"));
//           }

//           if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//             return Center(child: Text('No available delivery boys.', style: TextStyle(fontSize: 16)));
//           }

//           var deliveryBoys = snapshot.data!.docs;

//           return ListView.builder(
//             padding: EdgeInsets.all(10),
//             itemCount: deliveryBoys.length,
//             itemBuilder: (context, index) {
//               var deliveryBoy = deliveryBoys[index];

//               return Card(
//                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//                 elevation: 5,
//                 margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
//                 child: ListTile(
//                   contentPadding: EdgeInsets.all(12),
//                   title: Text(deliveryBoy['name'],
//                       style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
//                   subtitle: Text(deliveryBoy['email'],
//                       style: TextStyle(fontSize: 14, color: Colors.grey[600])),
//                   trailing: ElevatedButton(
//                     onPressed: () {
//                       assignDeliveryBoy(deliveryBoy.id);
//                     },
//                     style: ElevatedButton.styleFrom(
//                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//                       padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//                     ),
//                     child: Text('Assign', style: TextStyle(fontSize: 16)),
//                   ),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:agthia/Restaurant_pages/Restaurant_changepassword.dart';
import 'package:agthia/Restaurant_pages/view_approved_orders.dart';
import 'package:agthia/backend_pages/backend_new/loginpage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'delivery_allocation.dart'; // Import the allocation screen

class OrderListScreen extends StatelessWidget {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('All Orders', style: TextStyle(fontWeight: FontWeight.bold)),
      //   centerTitle: true,
      // ),
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
                  "RESTAURANT",
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
                        builder: (context) => RestaurantChangepassword()));
                // Navigate to change password screen
              } else if (value == 'logout') {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => LoginPage()));
                // Perform logout action
              }
            },
            itemBuilder: (BuildContext context) => [
              // Title Item (Non-clickable)
              PopupMenuItem<String>(
                enabled: false,
                child: Text(
                  "Restaurant",
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
      body: StreamBuilder<QuerySnapshot>(
        stream: _firestore.collection('orders').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text("Something went wrong: \${snapshot.error}"));
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Center(child: Text('No orders available.', style: TextStyle(fontSize: 16)));
          }

          var orders = snapshot.data!.docs;

          return ListView.builder(
            padding: EdgeInsets.all(10),
            itemCount: orders.length,
            itemBuilder: (context, index) {
              var order = orders[index];
              var orderId = order.id;
              var orderName = order['name'] ?? 'Unknown Order';
              var status = order['status'] ?? 'Status not available';

              return Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                elevation: 5,
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                child: ListTile(
                  contentPadding: EdgeInsets.all(12),
                  title: Text(orderName, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                  subtitle: Text('Status: $status',
                      style: TextStyle(
                          fontSize: 14,
                          color: status == 'Approved' ? Colors.red : Colors.green)),
                  // trailing: Icon(Icons.arrow_forward_ios, color: Colors.blueAccent),
                  // onTap: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => DeliveryAllocation(orderId: orderId),
                  //     ),
                  //   );
                  // },
                ),
              );
            },
          );
        },
      ),
    );
  }
}