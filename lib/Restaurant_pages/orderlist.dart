// import 'package:agthia/Restaurant_pages/order_confirmation.dart';
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class RestaurantPendingOrdersPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Pending Orders")),
//       body: StreamBuilder<QuerySnapshot>(
//         stream: FirebaseFirestore.instance
//             .collection('orders')
//             .where('status', isEqualTo: 'Pending') // Fetch only pending orders
//             .snapshots(),
//         builder: (context, snapshot) {
//           if (snapshot.hasError) {
//             return Center(child: Text("Error: ${snapshot.error}"));
//           }

//           if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//             return Center(child: Text("No pending orders found!"));
//           }

//           var orders = snapshot.data!.docs;

//           return ListView.builder(
//             itemCount: orders.length,
//             itemBuilder: (context, index) {
//               var order = orders[index];
//               var orderData = order.data() as Map<String, dynamic>;

//               return Card(
//                 margin: EdgeInsets.all(10),
//                 child: ListTile(
//                   title: Text("Order ID: ${order.id}"),
//                   subtitle: Text("Customer: ${orderData['name']}"),
//                   trailing: ElevatedButton(
//                     onPressed: () {
//                       approveOrder(order.id);
//                     },
//                     child: Text("Approve"),
//                   ),
//                   onTap: () {
//                     // Navigate to order details page
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) =>
//                             RestaurantOrderDetailsPage(orderId: order.id),
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

//   // Function to approve order
//   void approveOrder(String orderId) async {
//     try {
//       await FirebaseFirestore.instance
//           .collection('orders')
//           .doc(orderId)
//           .update({'status': 'Approved'});
//       print("✅ Order Approved: $orderId");
//     } catch (e) {
//       print("❌ Error approving order: $e");
//     }
//   }
// }



// import 'package:agthia/Restaurant_pages/order_confirmation.dart';
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class RestaurantPendingOrdersPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Pending Orders")),
//       body: StreamBuilder<QuerySnapshot>(
//         stream: FirebaseFirestore.instance
//             .collection('orders')
//             .where('status', isEqualTo: 'Pending') // Fetch only pending orders
//             .snapshots(),
//         builder: (context, snapshot) {
//           if (snapshot.hasError) {
//             return Center(child: Text("Error: ${snapshot.error}"));
//           }

//           if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//             return Center(child: Text("No pending orders found!"));
//           }

//           var orders = snapshot.data!.docs;

//           return ListView.builder(
//             itemCount: orders.length,
//             itemBuilder: (context, index) {
//               var order = orders[index];
//               var orderData = order.data() as Map<String, dynamic>;

//               return Card(
//                 margin: EdgeInsets.all(10),
//                 child: ListTile(
//                   title: Text("Order ID: ${order.id}"),
//                   subtitle: Text("Customer: ${orderData['name']}"),
//                   trailing: ElevatedButton(
//                     onPressed: () {
//                       approveOrder(order.id);
//                     },
//                     child: Text("Approve"),
//                   ),
//                   onTap: () {
//                     // Navigate to order details page
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) =>
//                             RestaurantOrderDetailsPage(orderId: order.id),
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

//   // Function to approve order
//   void approveOrder(String orderId) async {
//     try {
//       await FirebaseFirestore.instance
//           .collection('orders')
//           .doc(orderId)
//           .update({'status': 'Approved'});
//       print("✅ Order Approved: $orderId");
//     } catch (e) {
//       print("❌ Error approving order: $e");
//     }
//   }
// }


import 'package:agthia/Restaurant_pages/Restaurant_changepassword.dart';
import 'package:agthia/Restaurant_pages/order_confirmation.dart';
import 'package:agthia/backend_pages/backend_new/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RestaurantPendingOrdersPage extends StatelessWidget {
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
      // appBar: AppBar(
      //   title: Text("Pending Orders"),
      //   centerTitle: true,
      //   backgroundColor: Colors.deepOrange,
      // ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('orders')
            .where('status', isEqualTo: 'Pending')
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.pending_actions, size: 80, color: Colors.grey),
                  SizedBox(height: 10),
                  Text("No pending orders found!",
                      style: TextStyle(fontSize: 18, color: Colors.grey)),
                ],
              ),
            );
          }

          var orders = snapshot.data!.docs;

          return ListView.builder(
            padding: EdgeInsets.all(10),
            itemCount: orders.length,
            itemBuilder: (context, index) {
              var order = orders[index];
              var orderData = order.data() as Map<String, dynamic>;

              return Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.all(15),
                  title: Text(
                    "Order ID: ${order.id}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  subtitle: Text(
                    "Customer: ${orderData['name']}",
                    style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                  ),
                  trailing: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      approveOrder(order.id);
                    },
                    child: Text("Approve",style: TextStyle(color: Colors.white),),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            RestaurantOrderDetailsPage(orderId: order.id),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }

  void approveOrder(String orderId) async {
    try {
      await FirebaseFirestore.instance
          .collection('orders')
          .doc(orderId)
          .update({'status': 'Approved'});
      print("✅ Order Approved: $orderId");
    } catch (e) {
      print("❌ Error approving order: $e");
    }
  }
}