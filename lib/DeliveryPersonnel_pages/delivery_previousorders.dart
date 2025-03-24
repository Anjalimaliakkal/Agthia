// import 'package:agthia/DeliveryPersonnel_pages/add_Delivery.dart';
// import 'package:agthia/DeliveryPersonnel_pages/delivery_changepassword.dart';
// import 'package:agthia/DeliveryPersonnel_pages/delivery_neworders.dart';
// import 'package:agthia/login.dart';
// import 'package:flutter/material.dart';
// import 'package:agthia/DeliveryPersonnel_pages/delivery_home.dart';

// class DeliveryPreviousorders extends StatefulWidget {
//   const DeliveryPreviousorders({super.key});

//   @override
//   State<DeliveryPreviousorders> createState() => _DeliveryPreviousordersState();
// }

// class _DeliveryPreviousordersState extends State<DeliveryPreviousorders> {
//   final List<Map<String, dynamic>> orders = [
//     {
//       'orderId': '243556',
//       'address': 'Maliakkal',
//       'itemcount': 1,
//       'itemname':'Burger',
//       'shippingCharge': 60.95,
//       'totalPrice': 300.95,
//       'paymentMethod': 'COD',
//     },
//     {
//       'orderId': '217867',
//       'address': 'Thattaruparambil',
//       'itemcount': 4,
//       'itemname':'Pizza',
//       'shippingCharge': 50.0,
//       'totalPrice': 250.90,
//       'paymentMethod': 'COD',
//     }
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(
//           child: Transform.translate(
//             offset: Offset(-10.0, 0.0),
//             child: Image.asset(
//               "asset/logo_agthia.jpg",
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
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
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
//                   SizedBox(height: 7),
//                   Text(
//                     "Delivery Personnel",
//                     style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white),
//                   ),
//                 ],
//               ),
//             ),
//             ListTile(
//               title: Text("Home",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.pushReplacement(context,
//                     MaterialPageRoute(builder: (context) => DeliveryHome()));
//               },
//             ),
//              ListTile(
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
//                 Navigator.pushReplacement(context,
//                     MaterialPageRoute(builder: (context) => DeliveryNeworders(deliveryBoyId: '',)));
//               },
//             ),
//             ListTile(
//               title: Text("Previous Orders",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.pushReplacement(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => DeliveryPreviousorders()));
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
//             image: DecorationImage(
//                 image: AssetImage("asset/background_image1.jpg"),
//                 fit: BoxFit.cover)),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               SizedBox(height: 20),
//               Text(
//                 'Previous Orders',
//                 style: TextStyle(
//                     fontSize: 22,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white),
//               ),
//               SizedBox(height: 30),
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: DataTable(
//                   columnSpacing: 50,
//                   dataRowHeight: 50, // Adjust row height
//                   headingRowColor: MaterialStateColor.resolveWith(
//                       (states) => const Color.fromARGB(255, 178, 208, 223)),
//                   headingTextStyle:
//                       TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                   dataRowColor: MaterialStateColor.resolveWith(
//                       (states) => Colors.grey.shade100),
//                   border: TableBorder.all(color: Colors.black54, width: 0.5),
//                   columns: [
//                     DataColumn(label: Text('Order ID')),
//                     DataColumn(label: Text('Address')),
//                     DataColumn(label: Text('Item Count')),
//                     DataColumn(label: Text('Item Name')),
//                     DataColumn(label: Text('Shipping')),
//                     DataColumn(label: Text('Total Price')),
//                     DataColumn(label: Text('Payment')),
//                     DataColumn(label: Text('Status')),
//                   ],
//                   rows: orders.map((order) {
//                     return DataRow(cells: [
//                       DataCell(Text(order['orderId'].toString())),
//                       DataCell(Text(order['address'])),
//                       DataCell(Text(order['itemcount'].toString())),
//                       DataCell(Text(order['itemname'])),
//                       DataCell(Text("\$${order['shippingCharge']}")),
//                       DataCell(Text("\$${order['totalPrice']}")),
//                       DataCell(Text(order['paymentMethod'])),
//                       DataCell(Text("Delivered"))
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

// class DeliveryPreviousorders extends StatelessWidget {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Completed Orders')),
//       body: StreamBuilder<QuerySnapshot>(
//         stream: _firestore
//             .collection('orders')
//             .where('status', isEqualTo: 'Completed')
//             .snapshots(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }

//           if (snapshot.hasError) {
//             return Center(child: Text("Something went wrong: \${snapshot.error}"));
//           }

//           if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//             return Center(child: Text('No completed orders available.'));
//           }

//           var orders = snapshot.data!.docs;

//           return ListView.builder(
//             itemCount: orders.length,
//             itemBuilder: (context, index) {
//               var order = orders[index];
//               return Card(
//                 child: ListTile(
//                   title: Text(order['name']), // Example: order name
//                   subtitle: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text('Status: ' + order['status']),
//                       //Text('Completed On: ' + (order['timestamp'] ?? 'N/A')),
//                     ],
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

// class DeliveryPreviousOrders extends StatefulWidget {
//   final String deliveryBoyId;

//   const DeliveryPreviousOrders({super.key, required this.deliveryBoyId});

//   @override
//   State<DeliveryPreviousOrders> createState() => _DeliveryPreviousOrdersState();
// }

// class _DeliveryPreviousOrdersState extends State<DeliveryPreviousOrders> {
//   late Future<List<Map<String, dynamic>>> orders;

//   @override
//   void initState() {
//     super.initState();
//     orders = fetchOrders();  // Fetch the orders for the specific delivery boy ID
//   }
// Future<List<Map<String, dynamic>>> fetchOrders() async {
//   try {
//     print("Fetching orders for deliveryBoyId: ${widget.deliveryBoyId}");

//     // Query Firestore using the correct field name: assignedDeliveryBoyId
//     QuerySnapshot orderSnapshot = await FirebaseFirestore.instance
//         .collection('orders')
//         .where('assignedDeliveryBoyId', isEqualTo: widget.deliveryBoyId)
//         .get();

//     print("Fetched ${orderSnapshot.docs.length} orders");

//     if (orderSnapshot.docs.isEmpty) {
//       print("No previous orders found for deliveryBoyId: ${widget.deliveryBoyId}");
//       return [];
//     }

//     List<Map<String, dynamic>> orderList = orderSnapshot.docs.map((doc) {
//       print("Document ID: ${doc.id}");
//       print("Order data: ${doc.data()}");

//       // Safely access fields and provide defaults where necessary
//       var data = doc.data() as Map<String, dynamic>;

//       return {
//         'orderId': doc.id,  // Firestore document ID as orderId
//         'address': data['address'] ?? "No Address",  // Default if missing
//         'itemcount': (data['cartItems'] as List).length,  // Handle missing or empty cartItems
//         'itemname': data['cartItems'].isNotEmpty ? data['cartItems'][0]['name'] : "No items", // Handle empty cartItems
//         'shippingCharge': data.containsKey('shippingCharge') ? data['shippingCharge'] : 0.0,  // Check if the field exists
//         'totalPrice': data['totalAmount'] ?? 0.0,  // Default if missing
//         'paymentMethod': data['paymentMethod'] ?? "Not Specified",  // Default if missing
//         'status': data['status'] ?? "Unknown",  // Default if missing
//       };
//     }).toList();

//     return orderList;
//   } catch (e) {
//     print("Error fetching orders: $e");
//     return [];
//   }
// }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Previous Orders'),
//       ),
//       body: FutureBuilder<List<Map<String, dynamic>>>(
//         future: orders,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }

//           if (snapshot.hasError) {
//             return Center(child: Text("Error fetching orders"));
//           }

//           if (!snapshot.hasData || snapshot.data!.isEmpty) {
//             return Center(child: Text('No previous orders found'));
//           }

//           // Display the orders
//           return ListView.builder(
//             itemCount: snapshot.data!.length,
//             itemBuilder: (context, index) {
//               var order = snapshot.data![index];
//               return Card(
//                 margin: EdgeInsets.all(10),
//                 child: ListTile(
//                   title: Text('Order ID: ${order['orderId']}'),
//                   subtitle: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text('Address: ${order['address']}'),
//                       Text('Item Count: ${order['itemcount']}'),
//                       Text('Item Name: ${order['itemname']}'),
//                       Text('Shipping: \$${order['shippingCharge']}'),
//                       Text('Total Price: \$${order['totalPrice']}'),
//                       Text('Payment Method: ${order['paymentMethod']}'),
//                       Text('Status: ${order['status']}'),
//                     ],
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

import 'package:agthia/DeliveryPersonnel_pages/delivery_changepassword.dart';
import 'package:agthia/backend_pages/backend_new/loginpage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DeliveryPreviousOrders extends StatefulWidget {
  final String deliveryBoyId;

  const DeliveryPreviousOrders({super.key, required this.deliveryBoyId});

  @override
  State<DeliveryPreviousOrders> createState() => _DeliveryPreviousOrdersState();
}

class _DeliveryPreviousOrdersState extends State<DeliveryPreviousOrders> {
  late Future<List<Map<String, dynamic>>> orders;

  @override
  void initState() {
    super.initState();
    orders = fetchOrders(); // Fetch orders for this delivery boy
  }

  Future<List<Map<String, dynamic>>> fetchOrders() async {
    try {
      QuerySnapshot orderSnapshot = await FirebaseFirestore.instance
          .collection('orders')
          .where('assignedDeliveryBoyId', isEqualTo: widget.deliveryBoyId)
          .get();

      return orderSnapshot.docs.map((doc) {
        var data = doc.data() as Map<String, dynamic>;
        return {
          'orderId': doc.id,
          'name': data['name'] ?? "No name",
          'address': data['address'] ?? "No Address",
          'itemcount': (data['cartItems'] as List).length,
          'itemname': data['cartItems'].isNotEmpty
              ? data['cartItems'][0]['name']
              : "No items",
          'shippingCharge':
              data.containsKey('shippingCharge') ? data['shippingCharge'] : 0.0,
          'totalPrice': data['totalAmount'] ?? 0.0,
          'paymentMethod': data['paymentMethod'] ?? "Not Specified",
          'status': data['status'] ?? "Unknown",
        };
      }).toList();
    } catch (e) {
      print("Error fetching orders: $e");
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Previous Orders')),
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
                  "DELIVERY PERSONNEL",
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
                        builder: (context) => DeliveryChangepassword()));
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
                  "Delivery Personnel",
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
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: orders,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text("Error fetching orders"));
          }

          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(
              child: Text('No previous orders found',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            );
          }

          return ListView.builder(
            padding: EdgeInsets.all(12),
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              var order = snapshot.data![index];

              return Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                elevation: 4,
                margin: EdgeInsets.symmetric(vertical: 8),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildRow(Icons.receipt, "Order ID: ${order['orderId']}",
                          fontWeight: FontWeight.bold),
                      Divider(),
                      _buildRow(Icons.person, "Name: ${order['name']}"),
                      _buildRow(
                          Icons.location_on, "Address: ${order['address']}"),
                      _buildRow(Icons.shopping_cart,
                          "Items: ${order['itemcount']} - ${order['itemname']}"),
                      _buildRow(Icons.local_shipping,
                          "Shipping: ₹${order['shippingCharge']}"),
                      _buildRow(Icons.attach_money,
                          "Total Price: ₹${order['totalPrice']}",
                          fontWeight: FontWeight.bold),
                      _buildRow(Icons.payment,
                          "Payment Method: ${order['paymentMethod']}"),
                      _buildStatusRow(order['status']),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildRow(IconData icon, String text,
      {FontWeight fontWeight = FontWeight.normal}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Icon(icon, size: 22, color: Colors.grey[700]),
          SizedBox(width: 10),
          Expanded(
            child: Text(text,
                style: TextStyle(fontSize: 16, fontWeight: fontWeight)),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusRow(String status) {
    Color statusColor;
    switch (status.toLowerCase()) {
      case "completed":
        statusColor = Colors.green;
        break;
      case "pending":
        statusColor = Colors.orange;
        break;
      default:
        statusColor = Colors.blue;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Icon(Icons.check_circle, size: 22, color: statusColor),
          SizedBox(width: 10),
          Text(
            "Status: $status",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: statusColor),
          ),
        ],
      ),
    );
  }
}
