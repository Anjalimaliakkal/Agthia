// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class ConfirmationPage extends StatelessWidget {
//   final String orderId;

//   ConfirmationPage({required this.orderId});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Order Confirmation')),
//       body: FutureBuilder<DocumentSnapshot>(
//         future: FirebaseFirestore.instance.collection('orders').doc(orderId).get(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }

//           if (snapshot.hasError) {
//             return Center(child: Text('Error loading order details.'));
//           }

//           if (!snapshot.hasData || !snapshot.data!.exists) {
//             return Center(child: Text('Order not found.'));
//           }

//           var order = snapshot.data!;
//           var orderData = order.data() as Map<String, dynamic>;
//           var cartItems = orderData['cartItems'] as List;
//           var totalAmount = orderData['totalAmount'] as double;
//           var name = orderData['name'] as String;
//           var phone = orderData['phone'] as String;
//           var address = orderData['address'] as String;
//           var status = orderData['status'] as String; // Display order status

//           return Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text('Order ID: ${order.id}', style: TextStyle(fontWeight: FontWeight.bold)),
//                 SizedBox(height: 10),
//                 Text('Name: $name'),
//                 Text('Phone: $phone'),
//                 Text('Address: $address'),
//                 Text('Order Status: $status'), // Show the status here
//                 SizedBox(height: 20),
//                 Text('Order Items:', style: TextStyle(fontWeight: FontWeight.bold)),
//                 ListView.builder(
//                   shrinkWrap: true,
//                   physics: NeverScrollableScrollPhysics(),
//                   itemCount: cartItems.length,
//                   itemBuilder: (context, index) {
//                     var item = cartItems[index];
//                     return ListTile(
//                       leading: Icon(Icons.fastfood),
//                       title: Text(item['name']),
//                       subtitle: Text("\$${item['price']} x ${item['quantity']}"),
//                     );
//                   },
//                 ),
//                 SizedBox(height: 20),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text('Total: \$${totalAmount.toStringAsFixed(2)}', style: TextStyle(fontWeight: FontWeight.bold)),
//                     ElevatedButton(
//                       onPressed: () {
//                         Navigator.pop(context); 
//                       },
//                       child: Text('Back to Cart'),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class ConfirmationPage extends StatelessWidget {
//   final String orderId;

//   ConfirmationPage({required this.orderId});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Order Confirmation')),
//       body: FutureBuilder<DocumentSnapshot>(
//         future: FirebaseFirestore.instance.collection('orders').doc(orderId).get(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }

//           if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           }

//           if (!snapshot.hasData || !snapshot.data!.exists) {
//             return Center(child: Text('Order not found.'));
//           }

//           var order = snapshot.data!;
//           var orderData = order.data() as Map<String, dynamic>;

//           // Safely extract data
//           var cartItems = List<Map<String, dynamic>>.from(orderData['cartItems'] ?? []);
//           var totalAmount = (orderData['totalAmount'] as num).toDouble(); // Handle int or double
//           var name = orderData['name'] ?? 'N/A';
//           var phone = orderData['phone'] ?? 'N/A';
//           var address = orderData['address'] ?? 'N/A';
//           var status = orderData['status'] ?? 'Pending';

//           return SingleChildScrollView(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text('Order ID: ${order.id}', style: TextStyle(fontWeight: FontWeight.bold)),
//                 SizedBox(height: 10),
//                 Text('Name: $name'),
//                 Text('Phone: $phone'),
//                 Text('Address: $address'),
//                 Text('Order Status: $status', style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold)),
//                 SizedBox(height: 20),
                
//                 Text('Order Items:', style: TextStyle(fontWeight: FontWeight.bold)),
//                 ListView.builder(
//                   shrinkWrap: true,
//                   physics: NeverScrollableScrollPhysics(),
//                   itemCount: cartItems.length,
//                   itemBuilder: (context, index) {
//                     var item = cartItems[index];
//                     return ListTile(
//                       leading: Icon(Icons.fastfood),
//                       title: Text(item['name'] ?? 'Unknown Item'),
//                       subtitle: Text("\$${(item['price'] as num).toDouble()} x ${item['quantity']}"),
//                     );
//                   },
//                 ),
                
//                 SizedBox(height: 20),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text('Total: \$${totalAmount.toStringAsFixed(2)}', style: TextStyle(fontWeight: FontWeight.bold)),
//                     ElevatedButton(
//                       onPressed: () => Navigator.pop(context),
//                       child: Text('Back to Cart'),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class RestaurantOrderDetailsPage extends StatelessWidget {
//   final String orderId;

//   RestaurantOrderDetailsPage({required this.orderId});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Order Details")),
//       body: FutureBuilder<DocumentSnapshot>(
//         future: FirebaseFirestore.instance.collection('orders').doc(orderId).get(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }

//           if (!snapshot.hasData || !snapshot.data!.exists) {
//             return Center(child: Text("Order not found"));
//           }

//           var orderData = snapshot.data!.data() as Map<String, dynamic>;

//           return Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text("Order ID: ${orderId}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//                 SizedBox(height: 10),
//                 Text("Customer: ${orderData['name']}"),
//                 Text("Phone: ${orderData['phone']}"),
//                 Text("Address: ${orderData['address']}"),
//                 SizedBox(height: 10),
//                 Text("Total Amount: \$${orderData['totalAmount']}", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//                 SizedBox(height: 10),
//                 Text("Items:", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),

//                 // Display Order Items
//                 Expanded(
//                   child: ListView.builder(
//                     itemCount: orderData['cartItems'].length,
//                     itemBuilder: (context, index) {
//                       var item = orderData['cartItems'][index];
//                       return ListTile(
//                         title: Text("${item['name']} (x${item['quantity']})"),
//                         subtitle: Text("Price: \$${item['price']}"),
//                       );
//                     },
//                   ),
//                 ),

//                 SizedBox(height: 20),
//                 Center(
//                   child: ElevatedButton(
//                     onPressed: () async {
//                       await FirebaseFirestore.instance.collection('orders').doc(orderId).update({
//                         'status': 'Approved'
//                       });

//                       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                         content: Text("Order Approved"),
//                       ));

//                       Navigator.pop(context); // Go back after approving
//                     },
//                     child: Text("Approve Order"),
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.green,
//                       padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RestaurantOrderDetailsPage extends StatelessWidget {
  final String orderId;

  RestaurantOrderDetailsPage({required this.orderId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Order Details")),
      body: FutureBuilder<DocumentSnapshot>(
        future: FirebaseFirestore.instance.collection('orders').doc(orderId).get(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || !snapshot.data!.exists) {
            return Center(child: Text("Order not found"));
          }

          var orderData = snapshot.data!.data() as Map<String, dynamic>;

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Order ID: ${orderId}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text("Customer: ${orderData['name']}"),
                Text("Phone: ${orderData['phone']}"),
                Text("Address: ${orderData['address']}"),
                SizedBox(height: 10),
                Text("Total Amount: \$${orderData['totalAmount']}", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text("Items:", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),

                // Display Order Items
                Expanded(
                  child: ListView.builder(
                    itemCount: orderData['cartItems'].length,
                    itemBuilder: (context, index) {
                      var item = orderData['cartItems'][index];
                      return ListTile(
                        title: Text("${item['name']} (x${item['quantity']})"),
                        subtitle: Text("Price: \$${item['price']}"),
                      );
                    },
                  ),
                ),

                SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: () async {
                      await FirebaseFirestore.instance.collection('orders').doc(orderId).update({
                        'status': 'Approved'
                      });

                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Order Approved"),
                      ));

                      Navigator.pop(context); // Go back after approving
                    },
                    child: Text("Approve Order"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
