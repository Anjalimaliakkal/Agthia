// import 'package:agthia/Restaurant_pages/order_confirmation.dart';
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';// Import the order details page

// class UserOrdersPage extends StatelessWidget {
//   final String userId; // Logged-in user ID

//   UserOrdersPage({required this.userId});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("My Orders")),
//       body: StreamBuilder<QuerySnapshot>(
//         stream: FirebaseFirestore.instance
//             .collection('orders')
//             .where('userId', isEqualTo: userId) // Fetch only user's orders
//             .snapshots(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }

//           if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//             return Center(child: Text("No orders found"));
//           }

//           var orders = snapshot.data!.docs;

//           return ListView.builder(
//             itemCount: orders.length,
//             itemBuilder: (context, index) {
//               var order = orders[index].data() as Map<String, dynamic>;
//               String orderId = orders[index].id;

//               return Card(
//                 margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                 child: ListTile(
//                   title: Text("Restaurant: ${order['restaurantName']}"),
//                   subtitle: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text("Total: \$${order['totalAmount']}"),
//                       Text("Status: ${order['status']}", style: TextStyle(
//                         color: order['status'] == 'Approved' ? Colors.green : Colors.orange,
//                         fontWeight: FontWeight.bold,
//                       )),
//                     ],
//                   ),
//                   trailing: Icon(Icons.arrow_forward_ios, size: 16),
//                   onTap: () {
//                     // Navigate to order details page
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => RestaurantOrderDetailsPage(orderId: orderId),
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

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class UserOrdersPage extends StatefulWidget {
//   @override
//   _UserOrdersPageState createState() => _UserOrdersPageState();
// }

// class _UserOrdersPageState extends State<UserOrdersPage> {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   String userId = "";
//   List<Map<String, dynamic>> activeOrders = [];
//   List<Map<String, dynamic>> previousOrders = [];

//   @override
//   void initState() {
//     super.initState();
//     _getUserOrders();
//   }

//   Future<void> _getUserOrders() async {
//     User? user = _auth.currentUser;
//     if (user != null) {
//       userId = user.uid;
//       QuerySnapshot querySnapshot = await _firestore
//           .collection('orders')
//           .where('userId', isEqualTo: userId)
//           .orderBy('timestamp', descending: true) // Latest orders first
//           .get();

//       List<Map<String, dynamic>> active = [];
//       List<Map<String, dynamic>> previous = [];

//       for (var doc in querySnapshot.docs) {
//         Map<String, dynamic> orderData = doc.data() as Map<String, dynamic>;
//         if (orderData['status'] == "Completed") {
//           previous.add(orderData);
//         } else {
//           active.add(orderData);
//         }
//       }

//       setState(() {
//         activeOrders = active;
//         previousOrders = previous;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("My Orders")),
//       body: Column(
//         children: [
//           Expanded(
//             child: _buildOrderList("Active Orders", activeOrders),
//           ),
//           Expanded(
//             child: _buildOrderList("Previous Orders", previousOrders),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildOrderList(String title, List<Map<String, dynamic>> orders) {
//     return Card(
//       margin: EdgeInsets.all(10),
//       child: Column(
//         children: [
//           ListTile(title: Text(title, style: TextStyle(fontWeight: FontWeight.bold))),
//           Expanded(
//             child: orders.isEmpty
//                 ? Center(child: Text("No $title"))
//                 : ListView.builder(
//                     itemCount: orders.length,
//                     itemBuilder: (context, index) {
//                       var order = orders[index];
//                       return ListTile(
//                         title: Text("Order ID: ${order['cartItems'][0]['name']}"),
//                         subtitle: Text("Total: ₹${order['totalAmount']}"),
//                         trailing: Text("Status: ${order['status']}"),
//                       );
//                     },
//                   ),
//           ),
//         ],
//       ),
//     );
//   }
//}



// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class UserOrdersPage extends StatefulWidget {
//   @override
//   _UserOrdersPageState createState() => _UserOrdersPageState();
// }

// class _UserOrdersPageState extends State<UserOrdersPage> {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   String? userId;
//   List<Map<String, dynamic>> activeOrders = [];
//   List<Map<String, dynamic>> previousOrders = [];

//   @override
//   void initState() {
//     super.initState();
//     _getUserOrders();
//   }

//   Future<void> _getUserOrders() async {
//     User? user = _auth.currentUser;
//     if (user != null) {
//       setState(() {
//         userId = user.uid;
//       });

//       try {
//         // Fetch orders using indexed query
//         QuerySnapshot querySnapshot = await _firestore
//             .collection('orders')
//             .where('userId', isEqualTo: userId)
//             .orderBy('timestamp', descending: true) // Requires index
//             .get();

//         _processOrders(querySnapshot);
//       } catch (e) {
//         // If index error occurs, fetch without orderBy and sort manually
//         if (e.toString().contains('failed-precondition')) {
//           print("Firestore index missing. Fetching without orderBy...");
//           QuerySnapshot querySnapshot = await _firestore
//               .collection('orders')
//               .where('userId', isEqualTo: userId)
//               .get();

//           List<Map<String, dynamic>> orders = querySnapshot.docs
//               .map((doc) => doc.data() as Map<String, dynamic>)
//               .toList();

//           // Sort manually by timestamp
//           orders.sort((a, b) => (b['timestamp'] as Timestamp)
//               .compareTo(a['timestamp'] as Timestamp));

//           _processOrdersManual(orders);
//         } else {
//           print("Error fetching orders: $e");
//         }
//       }
//     }
//   }

//   void _processOrders(QuerySnapshot querySnapshot) {
//     List<Map<String, dynamic>> active = [];
//     List<Map<String, dynamic>> previous = [];

//     for (var doc in querySnapshot.docs) {
//       Map<String, dynamic> orderData = doc.data() as Map<String, dynamic>;
//       if (orderData['status'] == "Completed") {
//         previous.add(orderData);
//       } else {
//         active.add(orderData);
//       }
//     }

//     setState(() {
//       activeOrders = active;
//       previousOrders = previous;
//     });
//   }

//   void _processOrdersManual(List<Map<String, dynamic>> orders) {
//     List<Map<String, dynamic>> active = [];
//     List<Map<String, dynamic>> previous = [];

//     for (var orderData in orders) {
//       if (orderData['status'] == "Completed") {
//         previous.add(orderData);
//       } else {
//         active.add(orderData);
//       }
//     }

//     setState(() {
//       activeOrders = active;
//       previousOrders = previous;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("My Orders")),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             _buildOrderList("Active Orders", activeOrders),
//             _buildOrderList("Previous Orders", previousOrders),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildOrderList(String title, List<Map<String, dynamic>> orders) {
//     return Card(
//       margin: EdgeInsets.all(10),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           ListTile(
//             title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
//           ),
//           orders.isEmpty
//               ? Padding(
//                   padding: EdgeInsets.all(16.0),
//                   child: Center(child: Text("No $title")),
//                 )
//               : ListView.builder(
//                   shrinkWrap: true,
//                   physics: NeverScrollableScrollPhysics(),
//                   itemCount: orders.length,
//                   itemBuilder: (context, index) {
//                     var order = orders[index];
//                     String orderName = order['cartItems'] != null &&
//                             order['cartItems'].isNotEmpty
//                         ? order['cartItems']
//                             .map((item) => item['name'])
//                             .join(', ')
//                         : "Unknown Items";

//                     return ListTile(
//                       title: Text("Item Name: $orderName"),
//                       subtitle: Text("Total: ₹${order['totalAmount']}"),
//                       trailing: Text("Status: ${order['status']}"),
//                     );
//                   },
//                 ),
//         ],
//       ),
//     );
//   }
// }



import 'package:agthia/User_pages/user_changepassword.dart';
import 'package:agthia/backend_pages/backend_new/loginpage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserOrdersPage extends StatefulWidget {
  @override
  _UserOrdersPageState createState() => _UserOrdersPageState();
}

class _UserOrdersPageState extends State<UserOrdersPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  String? userId;
  List<Map<String, dynamic>> activeOrders = [];
  List<Map<String, dynamic>> previousOrders = [];
  bool isLoading = true; // 🔄 Loading state

  @override
  void initState() {
    super.initState();
    _getUserOrders();
  }

  Future<void> _getUserOrders() async {
    User? user = _auth.currentUser;
    if (user != null) {
      setState(() {
        userId = user.uid;
      });

      try {
        QuerySnapshot querySnapshot = await _firestore
            .collection('orders')
            .where('userId', isEqualTo: userId)
            .orderBy('timestamp', descending: true)
            .get();

        _processOrders(querySnapshot);
      } catch (e) {
        if (e.toString().contains('failed-precondition')) {
          QuerySnapshot querySnapshot = await _firestore
              .collection('orders')
              .where('userId', isEqualTo: userId)
              .get();

          List<Map<String, dynamic>> orders = querySnapshot.docs
              .map((doc) => doc.data() as Map<String, dynamic>)
              .toList();

          orders.sort((a, b) => (b['timestamp'] as Timestamp)
              .compareTo(a['timestamp'] as Timestamp));

          _processOrdersManual(orders);
        } else {
          print("Error fetching orders: $e");
        }
      }

      setState(() {
        isLoading = false; // ✅ Data Loaded
      });
    }
  }

  void _processOrders(QuerySnapshot querySnapshot) {
    List<Map<String, dynamic>> active = [];
    List<Map<String, dynamic>> previous = [];

    for (var doc in querySnapshot.docs) {
      Map<String, dynamic> orderData = doc.data() as Map<String, dynamic>;
      if (orderData['status'] == "Completed") {
        previous.add(orderData);
      } else {
        active.add(orderData);
      }
    }

    setState(() {
      activeOrders = active;
      previousOrders = previous;
    });
  }

  void _processOrdersManual(List<Map<String, dynamic>> orders) {
    List<Map<String, dynamic>> active = [];
    List<Map<String, dynamic>> previous = [];

    for (var orderData in orders) {
      if (orderData['status'] == "Completed") {
        previous.add(orderData);
      } else {
        active.add(orderData);
      }
    }

    setState(() {
      activeOrders = active;
      previousOrders = previous;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("My Orders", style: TextStyle(fontWeight: FontWeight.bold)),
      //   centerTitle: true,
      //   backgroundColor: Colors.deepPurple, // 🎨 AppBar color
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
                    "User",
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
                          builder: (context) => UserChangepassword()));
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
                    "User",
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
      body: isLoading
          ? Center(child: CircularProgressIndicator()) // 🔄 Loading Indicator
          : SingleChildScrollView(
              child: Column(
                children: [
                  _buildOrderList("Active Orders", activeOrders),
                  _buildOrderList("Previous Orders", previousOrders),
                ],
              ),
            ),
    );
  }

  Widget _buildOrderList(String title, List<Map<String, dynamic>> orders) {
    return Card(
      margin: EdgeInsets.all(12),
      elevation: 4, // 🔹 Shadow effect
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // 🟦 Rounded corners
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.deepPurple.shade100, // 🎨 Header background
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.deepPurple, // 🌟 Text color
              ),
            ),
          ),
          orders.isEmpty
              ? Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Center(
                    child: Text(
                      "No $title",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ),
                )
              : ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: orders.length,
                  separatorBuilder: (context, index) =>
                      Divider(height: 1, color: Colors.grey.shade300), // 📌 Dividers
                  itemBuilder: (context, index) {
                    var order = orders[index];
                    String orderName = order['cartItems'] != null &&
                            order['cartItems'].isNotEmpty
                        ? order['cartItems']
                            .map((item) => item['name'])
                            .join(', ')
                        : "Unknown Items";

                    return ListTile(
                      leading: Icon(Icons.shopping_cart, color: Colors.deepPurple), // 🛒 Icon
                      title: Text(
                        "Items: $orderName",
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      subtitle: Text(
                        "Total: ₹${order['totalAmount']}",
                        style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                      ),
                      trailing: _buildStatusBadge(order['status']),
                    );
                  },
                ),
        ],
      ),
    );
  }

  Widget _buildStatusBadge(String status) {
    Color badgeColor;
    IconData badgeIcon;

    switch (status.toLowerCase()) {
      case "completed":
        badgeColor = Colors.green;
        badgeIcon = Icons.check_circle;
        break;
      case "pending":
        badgeColor = Colors.orange;
        badgeIcon = Icons.hourglass_empty;
        break;
      case "cancelled":
        badgeColor = Colors.red;
        badgeIcon = Icons.cancel;
        break;
      default:
        badgeColor = Colors.blueGrey;
        badgeIcon = Icons.info;
    }

    return Chip(
      backgroundColor: badgeColor.withOpacity(0.2),
      avatar: Icon(badgeIcon, color: badgeColor),
      label: Text(
        status,
        style: TextStyle(color: badgeColor, fontWeight: FontWeight.bold),
      ),
    );
  }
}
