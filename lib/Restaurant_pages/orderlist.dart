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



import 'package:agthia/Restaurant_pages/order_confirmation.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RestaurantPendingOrdersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pending Orders")),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('orders')
            .where('status', isEqualTo: 'Pending') // Fetch only pending orders
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Center(child: Text("No pending orders found!"));
          }

          var orders = snapshot.data!.docs;

          return ListView.builder(
            itemCount: orders.length,
            itemBuilder: (context, index) {
              var order = orders[index];
              var orderData = order.data() as Map<String, dynamic>;

              return Card(
                margin: EdgeInsets.all(10),
                child: ListTile(
                  title: Text("Order ID: ${order.id}"),
                  subtitle: Text("Customer: ${orderData['name']}"),
                  trailing: ElevatedButton(
                    onPressed: () {
                      approveOrder(order.id);
                    },
                    child: Text("Approve"),
                  ),
                  onTap: () {
                    // Navigate to order details page
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

  // Function to approve order
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
