import 'package:agthia/Restaurant_pages/order_confirmation.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';// Import the order details page

class UserOrdersPage extends StatelessWidget {
  final String userId; // Logged-in user ID

  UserOrdersPage({required this.userId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Orders")),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('orders')
            .where('userId', isEqualTo: userId) // Fetch only user's orders
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Center(child: Text("No orders found"));
          }

          var orders = snapshot.data!.docs;

          return ListView.builder(
            itemCount: orders.length,
            itemBuilder: (context, index) {
              var order = orders[index].data() as Map<String, dynamic>;
              String orderId = orders[index].id;

              return Card(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: ListTile(
                  title: Text("Restaurant: ${order['restaurantName']}"),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Total: \$${order['totalAmount']}"),
                      Text("Status: ${order['status']}", style: TextStyle(
                        color: order['status'] == 'Approved' ? Colors.green : Colors.orange,
                        fontWeight: FontWeight.bold,
                      )),
                    ],
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    // Navigate to order details page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RestaurantOrderDetailsPage(orderId: orderId),
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
}
